//
//  Listings.swift
//  MarketPlace
//
//  Created by Benjamin Lavallee on 2024-01-22.
//

import Foundation

enum DisplayCategory: String, CaseIterable {
    case all = "All"
    case vehicle = "Vehicles"
    case clothing = "Clothing"
    case electronics = "Electronics"
}

enum ListingCategory: String, CaseIterable, Codable {
    case all = "All"
    case vehicle = "Vehicles"
    case clothing = "Clothing"
    case electronics = "Electronics"
    case land = "Land"
    case car = "Cars"
    case truck = "Trucks"
    case house = "House's"
    case furniture = "Furniture"
    case toys = "Toys"
    case games = "Games"
    case computer = "Computers"
    // Add other categories as needed
}

protocol IdentifiableItem {
    var id: UUID { get }
    var name: String { get set }
    var price: Decimal { get set }
    var location: String { get set }
    var listingDate: Date { get }
    var images: [String] { get set }
    var sellersDescription: String { get set }
    var category: ListingCategory { get set }
}

struct Listing: Identifiable, Hashable {
    let id: UUID
    var thumbnail: String
    var price: Decimal
    var name: String
    var location: String
    var listingDate: Date
    var distance: Int
    var images: [String]
    var sellersDescription: String
    var categories: [ListingCategory]

   

    // Computed property to calculate time listed ago based on listingDate
    var timeListedAgo: String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter.localizedString(for: listingDate, relativeTo: Date())
    }

    init(thumbnail: String, price: Double, name: String, location: String, distance: Int, images: [String], sellersDescription: String, categories: [ListingCategory]) {
        self.id = UUID()
        self.thumbnail = thumbnail
        self.price = Decimal(price)
        self.name = name
        self.location = location
        self.listingDate = Date()
        self.distance = distance
        self.images = images
        self.sellersDescription = sellersDescription
        self.categories = categories // Make sure this is an array of ListingCategory
    }
}

// Then you can initialize your listings as before, now with the category included.




let listing1 = Listing(
    thumbnail: "car1",
    price: 13999.00,
    name: "2014 Scion fr-s",
    location: "Toronto, ON",
    distance: 136,
    images: ["car1", "car2", "car3", "car4", "car5", "car6", "car7"],
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
                            """, categories: [.vehicle, .car]
)
let listing2 = Listing(
    thumbnail: "bluecar1",
    price: 3000.00,
    name: "2011 Subaru impreza",
    location: "Kawartha Lakes, ON",
    distance: 36,
    images: ["bluecar1", "bluecar2", "bluecar3", "bluecar4", "bluecar5", "bluecar6", "bluecar7"],
    sellersDescription: """
    Price is obo and no trades.. Selling for a buddy his beautiful built wrx, this car has 176k on the body and the engine was fully rebuilt at 155k by eci engines with paperwork to prove.
    Engine was rebuilt with
    wiseco pistons and rods
    Arp head studs with grimspeed head gaskets
    relocated oil sump
    brand new vf52
    Aem intake
    Gfb blow off valve
    Car had a perrin catted downpipe that had been gutted paired with a magnaflow cat back.
    Car was ecutek tuned on dyno by neetronics made just around 315awhp with plenty of room to go more.

    Car is lowered on tein coils and also comes with a brand new set of winters on white wheels(in pics)
    Summer wheels or superspeeds wrapped in firehawk 500s
    Does have two minor flaws front bumper is cracked and there is a little spot on the drivers dog leg that has some rust but no holes and no other rust any where on the car
    this car pulls hard and sounds amazing don't miss out to own this beautiful car for a fraction of the price it would cost you to build one..
    """, categories: [.vehicle, .car]
)
let listing3 = Listing(
    thumbnail: "land1",
    price: 529000.00,
    name: "50+ Acres For Sale",
    location: "Kawartha Lakes, ON",
    distance: 43,
    images: ["land1", "land2", "land3", "land4", "land5", "land6", "land7"],
    sellersDescription: """
0 Ballyduff Rd., Kawartha Lakes
Asking: $529,000

Excellent Opportunity To Own Over 50+ Acres of Vacant Land. This Property is located At The Border Of Desirable Kawartha Lakes/ Scugog Township and Offers All Season Recreational Enjoyment. Offering Beautiful Open Space, Tranquility, Privacy, And Potential Opportunity In A Great Location. Mixture Of Tree And Bush. Combination of Hardwood and Soft wood, No Driveway On Property. Easy Commute To Toronto And A Short Drive To Lindsay & Port Perry.

Contact me directly for more information
Jennifer Park Sales Representative- Re/max Jazz Inc. Brokerage

Not intended to solicit those currently under contract
""", categories: [.land]
)
let listing4 = Listing(
    thumbnail: "pc1",
    price: 850.00,
    name: "Gamer Supreme Liquid Cool Gaming PC, Intel Core i7-9700K 3.6Ghz",
    location: "Ajax, ON",
    distance: 105,
    images: ["pc1", "pc2", "pc3", "pc4", "pc5", "pc6", "pc7"],
    sellersDescription: """
System: Intel Core i7-9700K 3.6GHz 8-Core | Intel Z390 Chipset | 32GB DDR4 | 1TB PCI-E NVMe SSD | Genuine Windows 10 Home 64-bit

Graphics: NVIDIA GeForce RTX 2070 Super 8GB Video Card | 1x HDMI | 2x DisplayPort

Connectivity: 6 x USB 3.1 | 2 x USB 2.0 | 1x RJ-45 Network Ethernet 10/100/1000 | 802.11AC Wi-Fi | Audio: 7.1 Channel | Keyboard and Mouse

Special feature: Liquid Cooling | 802.11AC Wi-Fi | Tempered Glass Side Case Panel | RGB Mouse

Upgrades:
==> Added Thermaltake 360mm liquid cooling system
==> Upgraded RAM from 16GB to 32GB
==> Added a 500GB SSD Hard Drive.
""", categories: [.electronics, .computer]
)

let allListings = [listing1, listing2, listing3, listing4]
