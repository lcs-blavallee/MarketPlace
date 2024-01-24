//
//  ListingView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct ItemView: View {
    
    let listing: Listing
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    SliderView(listing: listing)
                        .frame(height: 500) // Set a fixed height for the SliderView
                        .padding(.bottom)
                    
                    ItemDescriptionView(listing: listing)
                }
            }
        }
    }
}



#Preview {
    ItemView(listing: listing1)
}
