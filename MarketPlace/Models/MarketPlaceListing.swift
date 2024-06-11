//
//  MarketPlaceListing.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-06-06.
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

struct MarketPlaceListing: Identifiable, Codable {
    var id: Int?
    var title: String
    var description: String
    var price: Double
    var patron: Patron
//    var images: [Image]
//    var categories: [Category]
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case description
        case price
        case patron
//        case images
//        case categories
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
    
    struct Image: Identifiable, Codable {
        var id: Int?
        var filename: String
        var listingId: Int?
        
        enum CodingKeys: String, CodingKey {
            case id
            case filename
            case listingId = "listing_id"
        }
    }
    
    struct Category: Identifiable, Codable {
        var id: Int?
        var name: String
        
        enum CodingKeys: String, CodingKey {
            case id
            case name
        }
    }
    
    struct ListingCategory: Codable {
        var listingId: Int?
        var categoryId: Int?
        
        enum CodingKeys: String, CodingKey {
            case listingId = "listing_id"
            case categoryId = "category_id"
        }
    }
}

let listingExample = MarketPlaceListing(
    id: nil,
    title: "title",
    description: "description",
    price: 10.50,
    patron: MarketPlaceListing.Patron(
        id: nil,
        emailAddress: "example@gmail.com",
        firstName: "John",
        lastName: "Doe",
        username: "JohnDoesExample"
    )
//    images: [], // Provide an empty array for images
//    categories: [] // Provide an empty array for categories
)

