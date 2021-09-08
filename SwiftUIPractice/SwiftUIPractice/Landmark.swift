//
//  Landmark.swift
//  SwiftUIPractice
//
//  Created by Nuthan Raju on 08/09/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct LandMark: Codable, Hashable, Identifiable {
    
    var name: String
    var id: Int
    var park: String
    var state: String
    var imageName: String
    var isFavorite: Bool
    var description: String
    
     var image: Image {
        Image(imageName)
    }
    
    var coordinates: Coordinates
    
    struct Coordinates: Codable, Hashable {
        var latitude: Double
        var longitude: Double
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
    
}
