//
//  MarketPlaceView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct MarketPlaceView: View {
    
    @State private var searchText = ""
    
    // Define the columns for your grid
    private var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // Use LazyVGrid to create a grid layout
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(allListings, id: \.self) { listing in
                        NavigationLink(destination: ItemView(listing: listing)) {
                            MarketplaceScrollHelperView(listing: listing)
                                .frame(maxWidth: .infinity) // This will make each item take up as much space as possible
                        }
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Marketplace")
            .searchable(text: $searchText, prompt: "Find a listing")
        }
    }
}

// Assuming you have a separate file for PreviewProvider
struct MarketPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        MarketPlaceView()
    }
}
