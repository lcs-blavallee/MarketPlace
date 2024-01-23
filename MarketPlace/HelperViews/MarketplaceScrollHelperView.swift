//
//  ListingScrollView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct MarketplaceScrollHelperView: View {
    
    var thumbnail: String
    var price: Int
    var listingName: String
    let location: String
    let distance: Int
    
    var body: some View {
        VStack (alignment: .leading) {
            Image(thumbnail)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200) // Set a fixed height (adjust as needed)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
            
            Text("$\(price)")
                .foregroundStyle(.black)
                .lineLimit(1)
                .bold()
            
            Text(listingName)
                .foregroundStyle(.black)
                .lineLimit(1)
            
            Text(location)
                .foregroundStyle(.gray)
                .lineLimit(1)
            
            Text("\(distance) km")
                .foregroundStyle(.gray)
                .lineLimit(1)
            
            Spacer() // Add a Spacer to allow the image to stretch
        }
        .padding() // Add padding as needed
        .frame(maxWidth: .infinity)
    }
}



#Preview {
    MarketplaceScrollHelperView(thumbnail: "car1", price: 13999, listingName: "2014 Scion fr-s", location: "Toronto, ON", distance: 136)
}
