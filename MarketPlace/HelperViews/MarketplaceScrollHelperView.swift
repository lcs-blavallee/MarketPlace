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
        VStack (alignment: .leading, spacing: 10) {
            Image(listing.thumbnail)
                .resizable()
                .scaledToFill() // This will fill the frame; part of the image might be clipped.
                .frame(width: 200, height: 200) // Set both fixed width and height
                .clipped() // This will clip off the parts of the image that overflow the frame
                .cornerRadius(10) // You can adjust corner radius as needed
            
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
    }
}



#Preview {
    MarketplaceScrollHelperView(listing: listing1)
}
