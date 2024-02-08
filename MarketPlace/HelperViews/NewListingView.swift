//
//  NewListingView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-02-08.
//

import SwiftUI

struct NewListingView: View {
    @Binding var listings: [Listing]
    @State private var name: String = ""
    @State private var price: String = ""
    @State private var location: String = ""
    @State private var description: String = ""
    // Add other properties as needed
    
    @State private var showingImagePicker = false
    @State private var inputImages = [UIImage]()
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                TextField("Price", text: $price)
                TextField("Location", text: $location)
                TextEditor(text: $description).frame(height: 200)
                // Add other input fields as needed
                
                Button("Add Images") {
                    showingImagePicker = true
                }
                
                Button("Save Listing") {
                    // Convert price from String to Int safely
                    let priceInt = Int(price) ?? 0
                    // Handle image conversion/storage and set thumbnail
                    let imageReferences = convertImagesToReferences(images: inputImages)
                    let thumbnail = imageReferences.first ?? "defaultThumbnail"
                    
                    let newListing = Listing(
                        thumbnail: thumbnail,
                        price: priceInt,
                        name: name,
                        location: location,
                        timeListedAgo: 0, // Example value
                        distance: 0, // Example value
                        images: imageReferences,
                        sellersDescription: description
                    )
                    listings.append(newListing)
                    // Reset fields or dismiss view as needed
                }
            }
            .navigationTitle("New Listing")
        }
        .sheet(isPresented: $showingImagePicker, content: {
            // Present image picker
        })
    }
    
    // Example function to convert UIImage array to a storage reference array (e.g., filenames)
    func convertImagesToReferences(images: [UIImage]) -> [String] {
        // Implement conversion logic here
        // For example, save images to disk and return their filenames
        return []
    }
}


#Preview {
    NewListingView(listings: .constant([]))
}
