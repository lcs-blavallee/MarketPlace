//
//  LandView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-23.
//

import SwiftUI

struct LandView: View {
    
    let listings: Listings
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    SliderView(image1: "land1", image2: "land2", image3: "land3", image4: "land4", image5: "land5", image6: "land6", image7: "land7")
                        .frame(height: 500) // Set a fixed height for the SliderView
                        .padding(.bottom)
                    
                    ItemDescriptionView(listingName: "50+ Acres For Sale", price: 529000, timeListedAgo: 2, location: "Kawartha Lakes, ON", sellersDescription: ("""
                            0 Ballyduff Rd., Kawartha Lakes
                            Asking: $529,000

                            Excellent Opportunity To Own Over 50+ Acres of Vacant Land. This Property is located At The Border Of Desirable Kawartha Lakes/ Scugog Township and Offers All Season Recreational Enjoyment. Offering Beautiful Open Space, Tranquility, Privacy, And Potential Opportunity In A Great Location. Mixture Of Tree And Bush. Combination of Hardwood and Soft wood, No Driveway On Property. Easy Commute To Toronto And A Short Drive To Lindsay & Port Perry.

                            Contact me directly for more information
                            Jennifer Park Sales Representative- Re/max Jazz Inc. Brokerage

                            Not intended to solicit those currently under contract
                            """))
                }
            }
        }
    }
}

#Preview {
    LandView(listings: listing3)
}
