//
//  MarketPlaceListing.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-06-06.
//

import Foundation

struct MarketPlaceListing: Identifiable, Codable {
    var id: Int?
    var title: String
    var description: String
    var price: Double
    var patron: Patron
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
        case price
        case patron
    }
        
    struct Patron: Identifiable, Codable {
        var id: Int?
        var emailAddress: String
        var firstName: String
        var lastName: String
        var username: String
        
        enum CodingKeys: String, CodingKey {
            case id
            case emailAddress = "email_address"
            case firstName = "first_name"
            case lastName = "last_name"
            case username
        }
    }
    
//    struct Category: Identifiable, Codable {
//        var id: Int?
//        var name: String
//        
//        enum CodingKeys: String, CodingKey {
//            case id
//            case name
//        }
//    }
    
//    struct ListingCategory: Identifiable, Codable {
//        var listingId: Int?
//        var categoryId: Int?
//
//        enum CodingKeys: String, CodingKey {
//            case listingId = "listing_id"
//            case categoryOd = "category_id"
//        }
//    }
//
//    struct Image: Identifiable, Codable {
//        var id: Int?
//        var filename: String
//        var listingId: Int?
//
//        enum CodingKeys: String, CodingKey {
//            case id
//            case filename
//            case listingId = "listing_id"
//        }
//    }
}
