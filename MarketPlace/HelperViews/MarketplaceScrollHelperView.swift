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
        VStack (alignment: .leading) {
            Image(listing.thumbnail)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200) // Set a fixed height (adjust as needed)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
            
            Text("$\(listing.price)")
                .foregroundStyle(.black)
                .lineLimit(1)
                .bold()
            
            Text(listing.name)
                .foregroundStyle(.black)
                .lineLimit(1)
            
            Text(listing.location)
                .foregroundStyle(.gray)
                .lineLimit(1)
            
            Text("\(listing.distance) km")
                .foregroundStyle(.gray)
                .lineLimit(1)
            
            Spacer() // Add a Spacer to allow the image to stretch
        }
        .padding() // Add padding as needed
        .frame(maxWidth: .infinity)
    }
}



#Preview {
    MarketplaceScrollHelperView(listing: listing1)
}
