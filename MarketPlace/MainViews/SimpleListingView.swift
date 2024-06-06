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
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(viewModel.listings) { listing in
                        MarketPlaceListingItemView(listing: listing)
                    }
                }
                .padding(.horizontal)
            }
            
            
        }
    }
    
}

#Preview {
    SimpleListingView()
}
