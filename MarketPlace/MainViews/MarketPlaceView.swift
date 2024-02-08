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
    
    private var filteredListings: [Listing] {
        if searchText.isEmpty {
            return allListings
        } else {
            return allListings.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(filteredListings, id: \.self) { listing in
                        NavigationLink(destination: ItemView(listing: listing)) {
                            MarketplaceScrollHelperView(listing: listing)
                                .frame(maxWidth: .infinity)
                        }
                        // Add a fade transition with animation for each grid item
                        .transition(AnyTransition.opacity.animation(.easeInOut(duration: 0.25)))
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Marketplace")
            .searchable(text: $searchText, prompt: "Find a listing")
        }
    }
}

#Preview {
    MarketPlaceView()
}



