//
//  Landmark.swift
//  Landmarks
//
//  Created by bruno alves fay on 27/04/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var category: Category
    var isFeatured: Bool
    
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    private var coordinates: Coordinates
    var locationCoodinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D( latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}
