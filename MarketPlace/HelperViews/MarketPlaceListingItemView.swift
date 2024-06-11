//
//  MarketPlaceListingItemView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-06-06.
//

import SwiftUI

struct MarketPlaceListingItemView: View {
    let listing: MarketPlaceListing
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
//            if let firstImage = listing.images.first,
//               let uiImage = UIImage(named: firstImage.filename) {
//                Image(uiImage: uiImage)
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 150, height: 200)
//                    .clipped()
//                    .cornerRadius(10)
//            } else {
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 150, height: 200)
                    .overlay(
                        Text("No Image")
                            .foregroundColor(.white)
                    )
//            }
            
            Text(priceString(from: listing.price)) // Correctly calling the function
                .foregroundColor(.black)
                .bold()
                .lineLimit(1)
            
            Text(listing.title)
                .foregroundColor(.black)
                .lineLimit(1)
        }
        .padding([.leading, .trailing, .top])
    }
    
    private func priceString(from price: Double) -> String {
        return price.formatted(.currency(code: "CAD").presentation(.narrow))
    }
}

#Preview {
    MarketPlaceListingItemView(listing: listingExample)
}
