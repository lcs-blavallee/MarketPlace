//
//  MarketPlaceView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct MarketPlaceView: View {
    
    let listing: Listing
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack{
                    HStack(spacing: 8) {
                        NavigationLink(
                            destination: ItemView(listing: listing1),
                            label: {
                                MarketplaceScrollHelperView(listing: listing1)
                                    .frame(maxWidth: .infinity)
                            }
                        )
                        
                        NavigationLink(
                            destination: ItemView(listing: listing2),
                            label: {
                                MarketplaceScrollHelperView(listing: listing2)
                                    .frame(maxWidth: .infinity)
                            }
                        )
                    }
                    HStack(spacing: 8) {
                        NavigationLink(
                            destination: ItemView(listing: listing3),
                            label: {
                                MarketplaceScrollHelperView(listing: listing3)
                                    .frame(maxWidth: .infinity)
                            }
                        )
                        
                        NavigationLink(
                            destination: ItemView(listing: listing4),
                            label: {
                                MarketplaceScrollHelperView(listing: listing4)
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
        .searchable(text: $searchText, prompt: "Find a listing")
    }
}


#Preview {
    MarketPlaceView(listing: listing1)
}
