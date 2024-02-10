//
//  ItemDescriptionView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct ItemDescriptionView: View {
    let listing: Listing

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(listing.name)
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)

                // Use NumberFormatter to convert Decimal to String
                Text(priceString(from: listing.price))
                    .foregroundColor(.black)
                    .bold()
                    .padding(.bottom, 5)

                Text("Listed \(listing.timeListedAgo)")
                    .foregroundColor(.gray)

                Text("Seller's Description")
                    .foregroundColor(.black)
                    .padding(.top, 30)
                    .bold()

                Text(listing.sellersDescription)
            }
            .padding(.leading)
            Spacer()
        }
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
    ItemDescriptionView(listing: listing1)
    }
