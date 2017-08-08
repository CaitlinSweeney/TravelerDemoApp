//
//  CityModel.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/2/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

class CityModel: NSObject {
    
//    let cities = CityModel()
    
    // MARK: Properties
   
    struct CityInfo {
        var cityName: String?
        var bgImage : String?
        var likes: Int
        var visitors: Int
    }

    // MARK: Init
    
//    convenience override init() {
//        self.init(
//            self.cityName = String,
//            self.bgImage = String,
//            self.likes = Int,
//            self.visitors = Int )
//    }
    
    let city: [CityInfo] = [
        CityInfo(
                cityName: "Dublin",
                bgImage: "DublinBgImage",
                likes: 9241,
                visitors: 1212
        ),
        CityInfo(
                cityName: "New Zealand",
                bgImage: "MilfordSoundBgImage",
                likes: 8241,
                visitors: 24012
        ),
        CityInfo(
                cityName: "San Diego",
                bgImage: "SanDiegoBgImage",
                likes: 3241,
                visitors: 11412
        ),
        CityInfo(
            cityName: "Crested Butte",
            bgImage: "CrestedButteBgImage",
            likes: 6241,
            visitors: 14126
        )
    ]
}
