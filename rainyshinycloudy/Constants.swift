//
//  Constants.swift
//  rainyshinycloudy
//
//  Created by John Peppe on 6/17/17.
//  Copyright © 2017 John Peppe. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "00876ab48948aa145bf481f57dadc6c9"

typealias downloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=00876ab48948aa145bf481f57dadc6c9"


let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=00876ab48948aa145bf481f57dadc6c9"









