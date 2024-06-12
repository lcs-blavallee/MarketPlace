//
//  SimpleListingView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-06-04.
//

import SwiftUI

struct SimpleListingView: View {
    
    @State private var viewModel: MarketPlaceViewModel = MarketPlaceViewModel()
    private var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    @State var presentingNewItemSheet = false
    
    var body: some View {
        NavigationStack {
            VStack{
                Picker("Category", selection: Binding.constant(1)) {
                    Text("All")
                    Text("O.E Equipment")
                    Text("Sports/Fitness")
                }
                .pickerStyle(.segmented)
                .padding()
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(viewModel.listings) { listing in
                            MarketPlaceListingItemView(listing: listing)
                        }
                    }
                    .padding(.horizontal)
                }
                .navigationTitle("Listings")
                .sheet(isPresented: $presentingNewItemSheet) {
                    Text("Hello, world!")
                }
                // Add a tool bar to the top of the interface
                // NOTE: For a toolbar to appear, it must be
                //       inside a NavigationView or NavigationStack.
                .toolbar {
                    // Add a button to trigger showing the sheet
                    ToolbarItem(placement: .automatic) {
                        Button {
                            presentingNewItemSheet = true
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                }
            }
            .searchable(text: Binding.constant(""))
        }
    }
    
}

#Preview {
    SimpleListingView()
}
