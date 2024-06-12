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
    
    func createListing(withTitle title: String, withPrice price: Double, withDescription description: String, andImage providedImage: ListingImage?) {
        Task {
            do {
                // Upload an image if provided
                let imageURL = try await uploadImage(providedImage)
                print("Image uploaded successfully: \(String(describing: imageURL))")
                
                // Create the new listing instance
                let localListing = NewMarketPlaceListing(
                    title: title,
                    description: description,
                    price: price,
                    patronId: 1
                )
                
                // Insert the new listing into the database
                let insertedListing: MarketPlaceListing = try await supabase
                    .from("listing")
                    .insert(localListing)   // Insert the listing created locally in memory
                    .select()       // Select the item just inserted
                    .single()       // Ensure just one row is returned
                    .execute()
                    .value
                
                print("Listing inserted successfully: \(insertedListing)")
                
                // Refresh the listings
                try await self.getListings()
                print("Listings refreshed successfully")
                
            } catch {
                debugPrint("Error creating listing: \(error)")
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
            .from("listings_images")
            .upload(
                path: filePath,
                file: imageData,
                options: FileOptions(contentType: "image/jpeg")
            )
        
        return filePath
    }
    
    func downloadListingImage(fromPath path: String) async throws -> ListingImage? {
        
        // Attempt to download an image from the provided path
        do {
            let data = try await supabase
                .storage
                .from("listings_images")
                .download(path: path)
            
            return ListingImage(rawImageData: data)
            
        } catch {
            debugPrint(error)
        }
        
        // If we landed here, something went wrong, so return nil
        return nil
        
    }
    
    func deleteListing(_ listing: MarketPlaceListing) {
            Task {
                
                do {
                    
                    // If images exist for this listing...
                    for image in listing.images {
                        if let imageURL = image.imageURL, imageURL.isEmpty == false {
                            // ... then delete the image from the storage bucket first.
                            do {
                                let _ = try await supabase
                                    .storage
                                    .from("listings_images")
                                    .remove(paths: [imageURL])
                            } catch {
                                debugPrint(error)
                            }
                        }
                    }
                    
                    // Run the delete command to remove the listing from the database table
                    try await supabase
                        .from("listing")
                        .delete()
                        .eq("id", value: listing.id!)
                        .execute()
                    
                    // Refresh the listings
                    try await self.getListings()
                    
                } catch {
                    debugPrint(error)
                }
                
            }
            
            // Remove the provided listing from the array
            listings.removeAll { currentItem in
                currentItem.id == listing.id
            }
            
        }
    }
