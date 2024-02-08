//
//  ListingScrollView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct MarketplaceScrollHelperView: View {
    let listing: Listing
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(listing.thumbnail)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 200)
                .clipped()
                .cornerRadius(10)
            
            Text("$\(listing.price)")
                .foregroundStyle(.black)
                .bold()
                .lineLimit(1)
            
            Text(listing.name)
                .foregroundStyle(.black)
                .lineLimit(1)
            
            Text(listing.location)
                .foregroundStyle(.gray)
                .lineLimit(1)
            
            Text("\(listing.distance) km")
                .foregroundStyle(.gray)
                .lineLimit(1)
        }
        // Apply padding only to the necessary sides
        .padding([.leading, .trailing, .top])
    }
}



#Preview {
    MarketplaceScrollHelperView(listing: listing1)
}
