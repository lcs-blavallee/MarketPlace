//
//  MarketPlaceViewModel.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-05-31.
//

import Foundation

@Observable
class MarkePlaceViewModel {
    
    // MARK: Stored properties
    // The list of to-do items
    var listings: [Listing]
    
    // MARK: Initializer(s)
    init(listings: [Listing] = []) {
        self.listings = listings
    }
    
    // MARK: Functions
    func createListing(withTitle title: String) {
        
        // Create the new to-do item instance
        let listing = Listing(thumbnail: <#T##String#>, price: <#T##Double#>, name: <#T##String#>, location: <#T##String#>, distance: <#T##Int#>, images: <#T##[String]#>, sellersDescription: <#T##String#>, categories: <#T##[ListingCategory]#>)
        
        // Append to the array
        listings.append(listing)
        
    }
    
    func delete(_ listing: Listing) {
        
        // Remove the provided to-do item from the array
        listings.removeAll { currentItem in
            currentItem.id == listing.id
        }
        
    }
    
}
