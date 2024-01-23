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
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
            Text("$\(price)")
                .foregroundStyle(.black)
                .bold()
            Text(listingName)
                .foregroundStyle(.black)
            Text(location)
                .foregroundStyle(.gray)
            Text("\(distance) km")
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    MarketplaceScrollHelperView(thumbnail: "car1", price: 13999, listingName: "2014 Scion fr-s", location: "Toronto, ON", distance: 136)
}
