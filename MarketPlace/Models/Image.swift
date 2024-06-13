//
//  Image.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-06-13.
//

import Foundation

struct Image: Identifiable, Codable {
    
    
    var id: Int?
    var filename: String
    var listingId: Int?
    var imageURL: String?

    // When decoding and encoding from JSON, translate snake_case
    // column names into camelCase
    
    enum CodingKeys: String, CodingKey {
        case id
        case filename
        case listingId = "listing_id"
        case imageURL = "image_url"
    }
}
