//
//  ItemDescriptionView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct ItemDescriptionView: View {
    let listing: MarketPlaceListing

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(listing.title)
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)

                // Use NumberFormatter to convert Decimal to String
                Text(priceString(from: listing.price))
                    .foregroundColor(.black)
                    .bold()
                    .padding(.bottom, 5)
//
//                Text("Listed \(listing.timeListedAgo)")
//                    .foregroundColor(.gray)

                Text("Seller's Description")
                    .foregroundColor(.black)
                    .padding(.top, 30)
                    .bold()

                Text(listing.description)
            }
            .padding(.leading)
            Spacer()
        }
    }

    private func priceString(from price: Double) -> String {
        return price.formatted(.currency(code: "CAD").presentation(.narrow))
    }

}


#Preview {
    ItemDescriptionView(listing: listingExample)
    }
