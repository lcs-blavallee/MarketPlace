//
//  SliderView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct SliderView: View {
    
    let image1: String
    let image2: String
    let image3: String
    let image4: String
    let image5: String
    let image6: String
    let image7: String
    
    var images: [String] {
        [image1, image2, image3, image4, image5, image6, image7]
    }
    var body: some View {
        VStack{
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
    SliderView(image1: "car1", image2: "car2", image3: "car3", image4: "car4", image5: "car5", image6: "car6", image7: "car7")
}
