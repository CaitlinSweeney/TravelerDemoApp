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
    
//    var thumbnail : UIImage?
//    var largeImage : UIImage?
//    let cityName : String
//    let likes : Int
//    let server : String
    
    // MARK: Init
    
    convenience override init() {
        self.init()
    }
    
    let city = [
        [
            "cityName": "Dublin",
            "bgImage": "photo 01",
            "likes": "3,241",
            "visitors": "132412"
        ],
        [
            "cityName": "Dublin",
            "bgImage": "photo 01",
            "likes": "3,241",
            "visitors": "132412"
        ],
        [
            "cityName": "Dublin",
            "bgImage": "photo 01",
            "likes": "3,241",
            "visitors": "132412"
        ],
        [
            "cityName": "Dublin",
            "bgImage": "photo 01",
            "likes": "3,241",
            "visitors": "132412"
        ]
    ]
}
