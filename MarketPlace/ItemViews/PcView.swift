//
//  PcView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-23.
//

import SwiftUI

struct PcView: View {
    
    let listings: Listings
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    SliderView(image1: "pc1", image2: "pc2", image3: "pc3", image4: "pc4", image5: "pc5", image6: "pc6", image7: "pc7")
                        .frame(height: 500) // Set a fixed height for the SliderView
                        .padding(.bottom)
                    
                    ItemDescriptionView(listingName: "Gamer Supreme Liquid Cool Gaming PC, Intel Core i7-9700K 3.6Ghz", price: 850, timeListedAgo: 6, location: "Ajax, ON", sellersDescription: ("""
                            System: Intel Core i7-9700K 3.6GHz 8-Core | Intel Z390 Chipset | 32GB DDR4 | 1TB PCI-E NVMe SSD | Genuine Windows 10 Home 64-bit

                            Graphics: NVIDIA GeForce RTX 2070 Super 8GB Video Card | 1x HDMI | 2x DisplayPort

                            Connectivity: 6 x USB 3.1 | 2 x USB 2.0 | 1x RJ-45 Network Ethernet 10/100/1000 | 802.11AC Wi-Fi | Audio: 7.1 Channel | Keyboard and Mouse

                            Special feature: Liquid Cooling | 802.11AC Wi-Fi | Tempered Glass Side Case Panel | RGB Mouse

                            Upgrades:
                            ==> Added Thermaltake 360mm liquid cooling system
                            ==> Upgraded RAM from 16GB to 32GB
                            ==> Added a 500GB SSD Hard Drive.
                            """))
                }
            }
        }
    }
}

#Preview {
    PcView(listings: listing4)
}
