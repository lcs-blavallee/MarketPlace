//
//  TruckView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct TruckView: View {
    
    let listings: Listings
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    SliderView(image1: "truck1", image2: "truck2", image3: "truck3", image4: "truck4", image5: "truck5", image6: "", image7: "")
                        .frame(height: 500) // Set a fixed height for the SliderView
                        .padding(.bottom)
                    
                    ItemDescriptionView(listingName: "1996 Dodge ram 1500 regular cab", price: 3000, timeListedAgo: 14, location: "Kawartha Lakes, ON", sellersDescription: ("""
                            1996 dodge ram 1500 5.9 magnum 2WD Indy pace truck.
                            
                            326,000kms (daily vehicle)
                            
                            Runs drives stops great
                            
                            - Many new parts in front end, new tie rods new struts new wheel bearings and a few more things
                            
                            - brakes all done last year
                            
                            - Brand new cowel hood
                            
                            - needs little body work and paint
                            
                            Solid frame on truck, motor and trans are strong they have no issues shifts great.
                            
                            3000 obo no trades
                            """))
                }
            }
        }
    }
}



#Preview {
    TruckView(listings: listing2)
}
