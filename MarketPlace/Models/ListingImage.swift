//
//  ListingImage.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-06-07.
//

import Foundation
import SwiftUI

struct ListingImage: Transferable, Equatable {
    
    // MARK: Stored properties
    let image: Image
    let data: Data
    
    // MARK: Computed properties
    
    // Required to conform to Transferable protocol
    // Is invoked when user picks (attempts to import) an image from photo library into this app
    static var transferRepresentation: some TransferRepresentation {
        
        return DataRepresentation(importedContentType: .image) { importedImageData in
            
            // Attempt to create an instance of TodoItemImage from the imported data
            guard let image = ListingImage(rawImageData: importedImageData) else {
                // If the important did not work, throw an error
                throw TransferError.importFailed
            }
            
            // The import worked, so return the imported image
            return image
        }
    }
}

// Extend the structure to add new capabilities
extension ListingImage {
    
    // MARK: Initializer(s)
    
    // An initializer to create an instance of TodoItemImage from the image data
    // returned by the PhotosPicker
    init?(rawImageData: Data) {
        
        // Create an instance of UIImage from the raw image data provided
        guard let uiImage = UIImage(data: rawImageData) else {
            return nil
        }
        
        // Create a SwiftUI Image structure from the UIImage instance
        let image = Image(uiImage: uiImage)
        
        // Initialize and return TodoImage instance
        self.init(image: image, data: rawImageData)
    }
    
}

// List the possible errors that can occur when importing an image
enum TransferError: Error {
    case importFailed
}
