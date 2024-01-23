//
//  SliderView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import SwiftUI

struct SliderView: View {
    let images = ["car1", "car2", "car3", "car4","car5","car6", "car7"]
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
    SliderView()
}
