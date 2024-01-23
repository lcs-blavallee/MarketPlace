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
                            destination: CarView(listings: listing1),
                            label: {
                                MarketplaceScrollHelperView(thumbnail: "car1", price: 13999, listingName: "2014 Scion fr-s", location: "Toronto, ON", distance: 136)
                                    .frame(maxWidth: .infinity)
                            }
                        )
                        
                        NavigationLink(
                            destination: TruckView(listings: listing2),
                            label: {
                                MarketplaceScrollHelperView(thumbnail: "truck1", price: 3000, listingName: "1996 Dodge ram 1500 regular cab", location: "Kawartha Lakes, ON", distance: 60)
                                    .frame(maxWidth: .infinity)
                            }
                        )
                    }
                        HStack(spacing: 8) {
                            NavigationLink(
                                destination: LandView(listings: listing3),
                                label: {
                                    MarketplaceScrollHelperView(thumbnail: "land1", price: 529000, listingName: "50+ Acres For Sale", location: "Kawartha Lakes, ON", distance: 43)
                                        .frame(maxWidth: .infinity)
                                }
                            )
                            
                            NavigationLink(
                                destination: PcView(listings: listing4),
                                label: {
                                    MarketplaceScrollHelperView(thumbnail: "pc1", price: 850, listingName: "Gamer Supreme Liquid Cool Gaming PC, Intel Core i7-9700K 3.6Ghz", location: "Ajax, ON", distance: 105)
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
