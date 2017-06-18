//
//  Location.swift
//  rainyshinycloudy
//
//  Created by John Peppe on 6/18/17.
//  Copyright © 2017 John Peppe. All rights reserved.
//

import CoreLocation

class Location {
    
    static var sharedInstance = Location()
    private init() {}

    var latitude: Double!
    var longitude: Double!
}
