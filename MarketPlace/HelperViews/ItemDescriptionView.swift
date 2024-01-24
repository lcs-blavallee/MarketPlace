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
                    .foregroundStyle(.black)
                Text("$\(listing.price)")
                    .foregroundStyle(.black)
                    .bold()
                    .padding(.bottom, 5)
                Text("Listed \(listing.timeListedAgo) weeks ago in \(listing.location)")
                    .foregroundStyle(.gray)
                Text("Seller's Description")
                    .foregroundStyle(.black)
                    .padding(.top, 30)
                    .bold()
                Text(listing.sellersDescription)
            }
            .padding(.leading)
            Spacer()
        }
    }
}

#Preview {
    ItemDescriptionView(listing: listing1)
    }
