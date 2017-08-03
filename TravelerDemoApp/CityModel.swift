//
//  CityModel.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/2/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

let cities = CityModel()

class CityModel: NSObject {
    
    // MARK: Properties
    
    var likes: Int = 0
    var visitors: Int = 0
    var cityName: String = ""
    var cityDescription: String = ""
    
    let city = [
        [
            "cityName": "Dublin",
            "image": "photo 01",
            "likes": "3,241",
            "cityDescription": "Retro occupy organic green, stumptown shabby chic pour-over roof party DIY normcore. Actually artisanoccupy",
            "visitors": "132412"
        ],
        [
            "cityName": "Dublin",
            "image": "photo 01",
            "likes": "3,241",
            "cityDescription": "Retro occupy organic green, stumptown shabby chic pour-over roof party DIY normcore. Actually artisanoccupy",
            "visitors": "132412"
        ],
        [
            "cityName": "Dublin",
            "image": "photo 01",
            "likes": "3,241",
            "cityDescription": "Retro occupy organic green, stumptown shabby chic pour-over roof party DIY normcore. Actually artisanoccupy",
            "visitors": "132412"
        ],
        [
            "cityName": "Dublin",
            "image": "photo 01",
            "likes": "3,241",
            "cityDescription": "Retro occupy organic green, stumptown shabby chic pour-over roof party DIY normcore. Actually artisanoccupy",
            "visitors": "132412"
        ]
    ]
}
