//
//  MarketPlaceViewModel.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-05-31.
//

import Foundation
import Storage

@Observable
class MarketPlaceViewModel {
    
    // MARK: Stored properties
    // The list of marketplace listings
    var listings: [MarketPlaceListing]
    
    // MARK: Initializer(s)
    init(listings: [MarketPlaceListing] = []) {
        self.listings = listings
        Task {
            try await getListings()
        }
    }
    
    // MARK: Functions
    func getListings() async throws {
        
        do {
            let results: [MarketPlaceListing] = try await supabase
                .from("listing")
                .select("id, title, description, price, patron(id, email_address, first_name, last_name, username)")
                .execute()
                .value
            
            self.listings = results
            
        } catch {
            debugPrint(error)
        }
        
    }
    func createListing(withTitle title: String, withPrice price: Double, withDescription description: String, andImage providedImage: ListingImage? = nil) {
        Task {
            
            // Create the new localListing instance
            let localListing = NewMarketPlaceListing(
                title: title,
                description: description, 
                price: price,
                patronId: 1
            )
            
            // Write it to the database
            do {
                
                // Insert the new to-do item, and then immediately select
                // it back out of the database
                //Create the new listing instance
                try await supabase
                    .from("listings")
                    .insert(localListing)   // Insert the todo item created locally in memory
                    .select()       // Select the item just inserted
                    .single()       // Ensure just one row is returned
                    .execute()      // Run the query
                
                // Refresh the listings
                try await self.getListings()
                
            } catch {
                debugPrint(error)
            }
        }
    }
    
    private func uploadImage(_ image: ListingImage?) async throws -> String? {
        
        // Only continue past this point if an image was provided.
        // If an image was provided, obtain the raw image data.
        guard let imageData = image?.data else {
            return nil
        }
        
        // Generate a unique file path for the provided image
        let filePath = "\(UUID().uuidString).jpeg"
        
        // Attempt to upload the raw image data to the bucket at Supabase
        try await supabase.storage
            .from("todos_images")
            .upload(
                path: filePath,
                file: imageData,
                options: FileOptions(contentType: "image/jpeg")
            )
        
        return filePath
    }
    func downloadTodoItemImage(fromPath path: String) async throws -> ListingImage? {
        
        // Attempt to download an image from the provided path
        do {
            let data = try await supabase
                .storage
                .from("image")
                .download(path: path)
            
            return ListingImage(rawImageData: data)
            
        } catch {
            debugPrint(error)
        }
        
        // If we landed here, something went wrong, so return nil
        return nil
        
    }
}
