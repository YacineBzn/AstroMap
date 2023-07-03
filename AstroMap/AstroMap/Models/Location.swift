//
//  Observatory.swift
//  AstroMap
//
//  Created by AstroTeam on 21/03/2023.
//

import Foundation
import MapKit

enum Tag {
    case observatory
    case planetarium
    case astronomyclub
    case museum
}

struct Location: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let address: String
    let cityName: String
    let coordinate: CLLocationCoordinate2D
    let description: String
    let schedule: [String]
    let hours: [String]
    let price: [String:Double]
    let image: String
    let category: Tag
    let isOpen: Bool
    let favorite: Bool
    
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
