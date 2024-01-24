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
        
        var images: [String] {
            [listing.image1, listing.image2, listing.image3, listing.image4, listing.image5, listing.image6, listing.image7]
        }
        
        return VStack{
            TabView{
                ForEach(0..<7){ i in
                    Image("\(images[i])")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .ignoresSafeArea()
                }
            }.tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }.ignoresSafeArea()
    }
}

#Preview {
    SliderView(listing: listing1)
}
