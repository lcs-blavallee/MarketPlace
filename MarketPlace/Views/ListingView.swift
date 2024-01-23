//
//  ListingView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct ListingView: View {
    
    let listings: Listings
    
    var body: some View {
        NavigationStack {
            //ScrollView{
                VStack {
                    SliderView()
                        .padding(.bottom)
                    ItemDescriptionView(listingName: "2014 Scion fr-s", price: 13999, timeListedAgo: 5, location: "Toronto, ON", sellersDescription: ("""
                                EXTREMELY RARE 1 of 2000 MONOGRAM EDITION.
                                CERTIFIED SAFETIED
                                ZERO ACCIDENTS
                                CLEAN TITLE
                                CARFAX AVAILABLE
                                Selling my babied Scion FR-S Monogram Edition. Never been abused or winter driven. All maintenance was done properly and on time throughout its owners. Selling because I need a truck to haul DJ equipment. It truly breaks my heart to let this car go as I’m a car guy and out of all the cars I’ve driven (over 50), this has always been my favourite. I bought the car fully stock from Auto Expo and I have tastefully modded it.
                                - Complete clutch job done recently
                                - Brakes recently done
                                - Winter Tires included
                                Mods (brand new):
                                - Invidia N1 Full Catback Exhaust w/ Titanium Tips
                                - Tein Flex A Coilovers w/ Height Adjustment
                                - Vland LED Headlights
                                - Valenti Taillights
                                Monogram Edition:
                                - Monogram Rear Spoiler
                                - Heated leather seats w/ Alcantara inserts
                                - Bespoke Premium Audio system w/ Nav
                                - Smart Access
                                - Push Button Start
                                - Dual-zone automatic climate control
                                - Frameless Mirror
                                """))
                }
            }
        }
    }
//}

#Preview {
    ListingView(listings: listing1)
}
