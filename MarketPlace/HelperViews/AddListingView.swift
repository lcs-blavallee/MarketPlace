//
//  AddListingView.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-06-07.
//

import SwiftUI
import PhotosUI

struct AddListingView: View {
    
    //MARK: Stored properties
    // The selection made in the PhotosPicker
    @State var selectionResult: PhotosPickerItem?
    
    // The actual image loaded from the selection that was made
    @State var newItemImage: ListingImage?
    
    // Access the view model through the environment
    @Environment(MarketPlaceViewModel.self) var viewModel
    
    // Binding to control whether this view is visible
    @Binding var showSheet: Bool
    @State private var newListingTitle: String = ""
    @State private var newListingPrice: String = ""  // Changed to String
    @State private var newListingDescription: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    VStack{
                        TextField("Title", text: $newListingTitle)
                            .onSubmit {
//                                viewModel.update()
                            }
                        TextField("Price", text: $newListingPrice)  // Keep as String
                            .keyboardType(.decimalPad)  // Optional: Ensure the keyboard shows numeric pad
                        TextField("Description (recommended)", text: $newListingDescription)
                    }
                    Button("ADD") {
                        // Convert price to Double before passing it to the view model
                        if let price = Double(newListingPrice) {
                            print("Creating listing with title: \(newListingTitle), price: \(price), description: \(newListingDescription)")
                            viewModel.createListing(withTitle: newListingTitle, withPrice: price, withDescription: newListingDescription, andImage: newItemImage)
                        } else {
                            // Handle the error appropriately, e.g., show an alert
                            print("Invalid price")
                        }
                        // Clear the input fields
                        newListingTitle = ""
                        newListingPrice = ""
                        newListingDescription = ""
                        // Clear the photo picker selection result
                        selectionResult = nil
                        // Clear the loaded photo
                        newItemImage = nil
                    }
                    .font(.caption)
                    .disabled(newListingDescription.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == true)
                }
                
                HStack {
                    PhotosPicker(selection: $selectionResult, matching: .images) {
                        // Has an image been loaded?
                        if let newItemImage = newItemImage {
                            // Yes, show it
                            newItemImage.image
                                .resizable()
                                .scaledToFit()
                        } else {
                            // No, show an icon instead
                            Image(systemName: "photo.badge.plus")
                                .symbolRenderingMode(.multicolor)
                                .font(.system(size: 30))
                                .foregroundStyle(.tint)
                        }
                    }
                }
                .frame(height: 100)
                
            }
            .padding(20)
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button {
                        showSheet = false
                    } label: {
                        Text("Done")
                            .bold()
                    }
                }
            }
            // This block of code is invoked whenever the selection from the picker changes
            .onChange(of: selectionResult) {
                // When the selection result is not nil...
                if let imageSelection = selectionResult {
                    // ... transfer the data from the selection result into
                    // an actual instance of ListingImage
                    loadTransferable(from: imageSelection)
                }
            }
        }
    }
    
    // MARK: Functions
    // Transfer the data from the PhotosPicker selection result into the stored property that
    // will hold the actual image for the new to-do item
    private func loadTransferable(from imageSelection: PhotosPickerItem) {
        Task {
            do {
                // Attempt to set the stored property that holds the image data
                newItemImage = try await imageSelection.loadTransferable(type: ListingImage.self)
            } catch {
                debugPrint(error)
            }
        }
    }
}

#Preview {
    AddListingView(showSheet: .constant(true))
}
