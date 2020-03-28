//
//  Place.swift
//  Virtual Tourist v2
//
//  Created by Aleksey on 0327..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import Foundation
import MapKit

class Place: NSObject {
    let latitude: Double
    let longitude: Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

extension Place: MKAnnotation {
    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
