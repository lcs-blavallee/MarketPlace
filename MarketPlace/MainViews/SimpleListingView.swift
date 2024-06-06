//
//  SimpleListingView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-06-04.
//

import SwiftUI

struct SimpleListingView: View {
    
    @State private var viewModel: MarketPlaceViewModel = MarketPlaceViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.listings) { listing in
                Text(listing.title)
            }
        }
    }
    
}

#Preview {
    SimpleListingView()
}
