//
//  SliderView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct SliderView: View {
    
    let listing: MarketPlaceListing
    
    @State private var images: [MarketPlaceListing.Image] = []
    
    var body: some View {
        VStack {
            if images.isEmpty {
                Text("No images available")
            } else {
                TabView {
                    ForEach(images) { image in
                        // Assuming that image.filename is a valid URL or image name in the bundle
                        if let uiImage = UIImage(named: image.filename) {
                            Image(uiImage: uiImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        } else {
                            Text("Image not found")
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(.page(backgroundDisplayMode: .always))
            }
        }
        .onAppear {
            // Load the images from the listing
            self.images = listing.images
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SliderView(listing: listingExample)
}


