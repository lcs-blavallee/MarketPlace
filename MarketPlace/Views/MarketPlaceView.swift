//
//  MarketPlaceView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct MarketPlaceView: View {
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack {
                    HStack {
                        NavigationLink(destination: {
                            
                            ListingView(listings: listing1)
                            
                        }, label: {
                            
                            MarketplaceScrollHelperView(thumbnail: "car1", price: 13999, listingName: "2014 Scion fr-s", location: "Toronto, ON", distance: 136)
                            
                            
                        })
                        
                        NavigationLink(destination: {
                            
                            ListingView(listings: listing2)
                            
                        }, label: {
                            
                            MarketplaceScrollHelperView(thumbnail: "truck1", price: 3000, listingName: "1996 Dodge ram 1500 regular cab", location: "Kawartha Lakes, ON", distance: 60)
                            
                            
                        })
                    }
                    HStack {
                    }
                }
            }
        }
    }
}

#Preview {
    MarketPlaceView()
}
