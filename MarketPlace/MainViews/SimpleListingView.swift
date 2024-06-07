//
//  SimpleListingView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-06-04.
//

import SwiftUI

struct SimpleListingView: View {
    
    @State private var viewModel: MarketPlaceViewModel = MarketPlaceViewModel()
    private var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        NavigationStack {
            VStack{
                Picker("Category", selection: Binding.constant(1)) {
                    Text("All")
                    Text("O.E Equipment")
                    Text("Sports/Fitness")
                }
                .pickerStyle(.segmented)
                .padding()
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(viewModel.listings) { listing in
                            MarketPlaceListingItemView(listing: listing)
                        }
                    }
                    .padding(.horizontal)
                }
                .navigationTitle("Listings")
            }
            .searchable(text: Binding.constant(""))
        }
    }
    
}

#Preview {
    SimpleListingView()
}
