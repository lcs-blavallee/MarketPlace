//
//  Listings.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import Foundation

struct Listing {
    var thumbnail: String
    var price: Int
    var name: String
    let location: String
    var timeListedAgo: Int
    let distance: Int
    let image1: String
    let image2: String
    let image3: String
    let image4: String
    let image5: String
    let image6: String
    let image7: String
    let sellersDescription: String
}

let listing1 = Listing(
    thumbnail: "car1",
    price: 13999,
    name: "2014 Scion fr-s",
    location: "Toronto, ON",
    timeListedAgo: 5,
    distance: 136,
    image1: "car1",
    image2: "car2",
    image3: "car3",
    image4: "car4",
    image5: "car5",
    image6: "car6",
    image7: "car7",
    sellersDescription: """
                            EXTREMELY RARE 1 of 2000 MONOGRAM EDITION.
                            
                            CERTIFIED SAFETIED
                            ZERO ACCIDENTS
                            CLEAN TITLE
                            CARFAX AVAILABLE
                            
                            Selling my babied Scion FR-S Monogram Edition. Never been abused or winter driven. All maintenance was done properly and on time throughout its owners. Selling because I need a truck to haul DJ equipment. It truly breaks my heart to let this car go as I’m a car guy and out of all the cars I’ve driven (over 50), this has always been my favourite. I bought the car fully stock from Auto Expo and I have tastefully modded it.
                            
                            - Complete clutch job done recently
                            - Brakes recently done
                            - Winter Tires included
                            
                            Mods (brand new):
                            - Invidia N1 Full Catback Exhaust w/ Titanium Tips
                            - Tein Flex A Coilovers w/ Height Adjustment
                            - Vland LED Headlights
                            - Valenti Taillights
                            
                            Monogram Edition:
                            - Monogram Rear Spoiler
                            - Heated leather seats w/ Alcantara inserts
                            - Bespoke Premium Audio system w/ Nav
                            - Smart Access
                            - Push Button Start
                            - Dual-zone automatic climate control
                            - Frameless Mirror
                            """
)
let listing2 = Listing(
    thumbnail: "",
    price: 3000,
    name: "",
    location: "",
    timeListedAgo: 14,
    distance: 60,
    image1: "",
    image2: "",
    image3: "",
    image4: "",
    image5: "",
    image6: "",
    image7: "",
    sellersDescription: ""
)
let listing3 = Listing(
    thumbnail: "land1",
    price: 529000,
    name: "50+ Acres For Sale",
    location: "Kawartha Lakes, ON",
    timeListedAgo: 2,
    distance: 43,
    image1: "land1",
    image2: "land2",
    image3: "land3",
    image4: "land4",
    image5: "land5",
    image6: "land6",
    image7: "land7",
    sellersDescription: """
0 Ballyduff Rd., Kawartha Lakes
Asking: $529,000

Excellent Opportunity To Own Over 50+ Acres of Vacant Land. This Property is located At The Border Of Desirable Kawartha Lakes/ Scugog Township and Offers All Season Recreational Enjoyment. Offering Beautiful Open Space, Tranquility, Privacy, And Potential Opportunity In A Great Location. Mixture Of Tree And Bush. Combination of Hardwood and Soft wood, No Driveway On Property. Easy Commute To Toronto And A Short Drive To Lindsay & Port Perry.

Contact me directly for more information
Jennifer Park Sales Representative- Re/max Jazz Inc. Brokerage

Not intended to solicit those currently under contract
"""
)
let listing4 = Listing(
    thumbnail: "pc1",
    price: 850,
    name: "Gamer Supreme Liquid Cool Gaming PC, Intel Core i7-9700K 3.6Ghz",
    location: "Ajax, ON",
    timeListedAgo: 6,
    distance: 105,
    image1: "pc1",
    image2: "pc2",
    image3: "pc3",
    image4: "pc4",
    image5: "pc5",
    image6: "pc6",
    image7: "pc7",
    sellersDescription: """
System: Intel Core i7-9700K 3.6GHz 8-Core | Intel Z390 Chipset | 32GB DDR4 | 1TB PCI-E NVMe SSD | Genuine Windows 10 Home 64-bit

Graphics: NVIDIA GeForce RTX 2070 Super 8GB Video Card | 1x HDMI | 2x DisplayPort

Connectivity: 6 x USB 3.1 | 2 x USB 2.0 | 1x RJ-45 Network Ethernet 10/100/1000 | 802.11AC Wi-Fi | Audio: 7.1 Channel | Keyboard and Mouse

Special feature: Liquid Cooling | 802.11AC Wi-Fi | Tempered Glass Side Case Panel | RGB Mouse

Upgrades:
==> Added Thermaltake 360mm liquid cooling system
==> Upgraded RAM from 16GB to 32GB
==> Added a 500GB SSD Hard Drive.
"""
)
