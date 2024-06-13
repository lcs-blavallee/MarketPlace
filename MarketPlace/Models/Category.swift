//
//  category.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-06-13.
//

import Foundation

struct Category: Identifiable, Codable {
    
    // MARK: Stored properties
    var id: Int?
    var name: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
    }
}
