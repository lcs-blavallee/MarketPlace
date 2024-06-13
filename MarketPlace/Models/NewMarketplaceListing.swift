//
//  NewMarketplaceListing.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-06-13.
//

import Foundation

struct NewMarketPlaceListing: Identifiable, Codable {
    var id: Int?
    var title: String
    var description: String
    var price: Double
    var patronId: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
        case price
        case patronId = "patron_id"
    }
}
