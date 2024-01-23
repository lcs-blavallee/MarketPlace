//
//  Listings.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import Foundation

struct Listings {
    var thumbnail: String
    var price: Int
    var listingName: String
    let location: String
    let distance: Int
}

let listing1 = Listings(thumbnail: "car1", price: 13999, listingName: "2014 Scion fr-s", location: "Toronto, ON", distance: 136)
let listing2 = Listings(thumbnail: "truck1", price: 3000, listingName: "1996 Dodge ram 1500 regular cab", location: "Kawartha Lakes, ON", distance: 60)
let listing3 = Listings(thumbnail: "land1", price: 529000, listingName: "50+ Acres For Sale", location: "Kawartha Lakes, ON", distance: 43)
let listing4 = Listings(thumbnail: "pc1", price: 850, listingName: "Gamer Supreme Liquid Cool Gaming PC, Intel Core i7-9700K 3.6Ghz", location: "Ajax, ON", distance: 105)
