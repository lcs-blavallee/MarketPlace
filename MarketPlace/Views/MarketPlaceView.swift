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
                        MarketplaceScrollHelperView(thumbnail: "car1", price: 13999, listingName: "2014 Scion fr-s", location: "Toronto, ON", distance: 136)
                        MarketplaceScrollHelperView(thumbnail: "car1", price: 13999, listingName: "2014 Scion fr-s", location: "Toronto, ON", distance: 136)
                    }
                    HStack {
                        MarketplaceScrollHelperView(thumbnail: "car1", price: 13999, listingName: "2014 Scion fr-s", location: "Toronto, ON", distance: 136)
                        MarketplaceScrollHelperView(thumbnail: "car1", price: 13999, listingName: "2014 Scion fr-s", location: "Toronto, ON", distance: 136)
                    }
                }
            }
        }
    }
}

#Preview {
    MarketPlaceView()
}
