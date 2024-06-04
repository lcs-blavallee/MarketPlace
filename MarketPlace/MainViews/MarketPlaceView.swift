//
//  MarketPlaceView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct MarketPlaceView: View {
    @State private var searchText = ""
    @State private var selectedDisplayCategory: DisplayCategory = .all

    private var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    private var filteredListings: [Listing] {
        allListings.filter { listing in
            // Determine if the listing's name matches the search text or if the search text matches any of the listing's categories.
            let matchesSearchText = searchText.isEmpty ||
                listing.name.localizedCaseInsensitiveContains(searchText) ||
                listing.categories.contains(where: { $0.rawValue.localizedCaseInsensitiveContains(searchText) })

            // Determine if the listing matches the selected category.
            let matchesCategory: Bool
            switch selectedDisplayCategory {
            case .all:
                matchesCategory = true
            case .vehicle:
                matchesCategory = listing.categories.contains(.car) || listing.categories.contains(.truck)
            case .clothing:
                matchesCategory = listing.categories.contains(.clothing)
            case .electronics:
                matchesCategory = listing.categories.contains(.electronics)
            // Add other cases if needed
            }

            // Return true if the listing matches both the category and the search text.
            return matchesCategory && matchesSearchText
        }
    }

    var body: some View {
        NavigationStack {
            VStack {
                // Tabs for categories
                Picker("Category", selection: $selectedDisplayCategory) {
                    ForEach(DisplayCategory.allCases, id: \.self) { category in
                        Text(category.rawValue).tag(category)
                    }
                }
                                .pickerStyle(.segmented)
                                .padding()

                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(filteredListings, id: \.self) { listing in
                            NavigationLink(destination: ItemView(listing: listing)) {
                                MarketplaceScrollHelperView(listing: listing)
                                    .frame(maxWidth: .infinity)
                            }
                            .transition(AnyTransition.opacity.animation(.easeInOut(duration: 0.25)))
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .navigationTitle("Marketplace")
            .searchable(text: $searchText, prompt: "Find a listing")
        }
    }
    
}


#Preview {
    MarketPlaceView()
}



