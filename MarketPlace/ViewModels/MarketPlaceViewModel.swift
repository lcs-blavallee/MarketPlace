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
    var listings: [Listing]
    
    // MARK: Initializer(s)
    init() {
        // Get listings from the database
        Task {
            try await getListings()
        }
    }
    
    // MARK: Functions
    func getListings() async throws {
        
        do {
            let results: [Listing] = try await supabase
                .from("listing")
                .select("id, title, description, price")
                .execute()
                .value
            
            self.listings = results
            
        } catch {
            debugPrint(error)
        }
        
    }
    
}
