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
   
    struct cityInfo {
        var cityName: String
        var bgImage : String
        var likes : Int
        var visitors : Int
    }

    // MARK: Init
  
//    convenience override init() {
//        self.init(
//            cityName: "",
//            bgImage: "",
//            likes: 0,
//            visitors: 0)
//    }
    
    let city: [cityInfo] = [
        cityInfo(
                cityName: "Dublin",
                bgImage: "DublinBgImage",
                likes: 9241,
                visitors: 1212
        ),
        cityInfo(
                cityName: "New Zealand",
                bgImage: "MilfordSoundBgImage",
                likes: 8241,
                visitors: 24012
        ),
        cityInfo(
                cityName: "San Diego",
                bgImage: "SanDiegoBgImage",
                likes: 3241,
                visitors: 11412
        ),
        cityInfo(
            cityName: "Crested Butte",
            bgImage: "CrestedButteBgImage",
            likes: 6241,
            visitors: 14126
        )
    ]
}
