//
//  MarketPlaceView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct MarketPlaceView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack{
                    HStack(spacing: 8) {
                        NavigationLink(
                            destination: ListingView(listings: listing1),
                            label: {
                                MarketplaceScrollHelperView(thumbnail: "car1", price: 13999, listingName: "2014 Scion fr-s", location: "Toronto, ON", distance: 136)
                                    .frame(maxWidth: .infinity)
                            }
                        )
                        
                        NavigationLink(
                            destination: ListingView(listings: listing2),
                            label: {
                                MarketplaceScrollHelperView(thumbnail: "truck1", price: 3000, listingName: "1996 Dodge ram 1500 regular cab", location: "Kawartha Lakes, ON", distance: 60)
                                    .frame(maxWidth: .infinity)
                            }
                        )
                    }
                        HStack(spacing: 8) {
                            NavigationLink(
                                destination: ListingView(listings: listing1),
                                label: {
                                    MarketplaceScrollHelperView(thumbnail: "car1", price: 13999, listingName: "2014 Scion fr-s", location: "Toronto, ON", distance: 136)
                                        .frame(maxWidth: .infinity)
                                }
                            )
                            
                            NavigationLink(
                                destination: ListingView(listings: listing2),
                                label: {
                                    MarketplaceScrollHelperView(thumbnail: "truck1", price: 3000, listingName: "1996 Dodge ram 1500 regular cab", location: "Kawartha Lakes, ON", distance: 60)
                                        .frame(maxWidth: .infinity)
                                }
                            )
                        }
                    }
                    .padding(.horizontal, 8)
                    .padding(.vertical, 8)
                }
                .navigationTitle("Marketplace")
            }
    }
}


#Preview {
    MarketPlaceView()
}
