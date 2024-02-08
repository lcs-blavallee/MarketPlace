//
//  SliderView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct SliderView: View {
    
    let listing: Listing
    
    var body: some View {
        VStack {
            TabView {
                ForEach(listing.images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .ignoresSafeArea()
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SliderView(listing: listing1)
}
