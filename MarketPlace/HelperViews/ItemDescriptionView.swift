//
//  ItemDescriptionView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct ItemDescriptionView: View {
    
    var listingName: String
    var price: Int
    var timeListedAgo: Int
    let location: String
    let sellersDescription: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(listingName)
                    .font(.title)
                    .bold()
                    .foregroundStyle(.black)
                Text("$\(price)")
                    .foregroundStyle(.black)
                    .bold()
                    .padding(.bottom, 5)
                Text("Listed \(timeListedAgo) weeks ago in \(location)")
                    .foregroundStyle(.gray)
                Text("Seller's Description")
                    .foregroundStyle(.black)
                    .padding(.top, 30)
                    .bold()
                Text(sellersDescription)
            }
            .padding(.leading)
            Spacer()
        }
    }
}

#Preview {
    ItemDescriptionView(listingName: "2014 Scion fr-s", price: 13999, timeListedAgo: 5, location: "Toronto, ON", sellersDescription: ("""
                        Selling my babied Scion FR-S Monogram Edition. Never been abused or winter driven. All maintenance was done properly and on time throughout its owners. Selling because I need a truck to haul DJ equipment. It truly breaks my heart to let this car go as I’m a car guy and out of all the cars I’ve driven (over 50), this has always been my favourite. I bought the car fully stock from Auto Expo and I have tastefully modded it.
                        - Complete clutch job done recently
                        - Brakes recently done
                        - Winter Tires included
                        Mods (brand new):
                        - Invidia N1 Full Catback Exhaust w/ Titanium Tips
                        - Tein Flex A Coilovers w/ Height Adjustment
                        - Vland LED Headlights
                        - Valenti Taillights
                        """))
}
