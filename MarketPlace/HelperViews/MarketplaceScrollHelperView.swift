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
            
            Text(priceString(from: listing.price)) // Correctly calling the function
                .foregroundColor(.black)
                .bold()
                .lineLimit(1)

            Text(listing.name)
                .foregroundColor(.black)
                .lineLimit(1)

            Text(listing.location)
                .foregroundColor(.gray)
                .lineLimit(1)

            Text("\(listing.distance) km")
                .foregroundColor(.gray)
                .lineLimit(1)
        }
        .padding([.leading, .trailing, .top])
    }

    private func priceString(from price: Decimal) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current // or a specific locale if your app will support multiple regions
        formatter.alwaysShowsDecimalSeparator = false
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2 // Show up to 2 decimal places only if there are cents
        return formatter.string(from: price as NSDecimalNumber) ?? "$\(price)"
    }

}


#Preview {
    MarketplaceScrollHelperView(listing: listing1)
}
