//
//  MarketPlaceViewModel.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-05-31.
//

import Foundation

@Observable
class MarketPlaceViewModel {
    
    // MARK: Stored properties
    // The list of to-do items
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
                .select()
                .execute()
                .value
            
            self.listings = results
            
        } catch {
            debugPrint(error)
        }
        
    }
//    func createListing(withTitle title: String) {
//        
//        // Create the new to-do item instance
//        let listing = Listing(thumbnail: <#T##String#>, price: <#T##Double#>, name: <#T##String#>, location: <#T##String#>, distance: <#T##Int#>, images: <#T##[String]#>, sellersDescription: <#T##String#>, categories: <#T##[ListingCategory]#>)
//        
//        // Append to the array
//        listings.append(listing)
//        
//    }
//    
//    func delete(_ listing: Listing) {
//        
//        // Remove the provided to-do item from the array
//        listings.removeAll { currentItem in
//            currentItem.id == listing.id
//        }
//        
//    }
//    
}
