//
//  CityModel.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/2/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit
import Foundation

class CityModel: NSObject {
    
    // MARK: Properties

        let cityName: String
        let bgImage: UIImage
        let likes: Int
        let visitors: Int

    // MARK: Init
    
    convenience override init() {
        self.init(cityName: "", bgImage: UIImage(), likes: 0, visitors: 0)
    }
    
    init(
        cityName: String,
        bgImage: UIImage,
        likes: Int,
        visitors: Int) {
        
            self.cityName = cityName
            self.bgImage = bgImage
            self.likes = likes
            self.visitors = visitors
    }
}

class CityInfo: CityModel {
    
    let cities = [
            CityModel(
                cityName: "Dublin",
                bgImage: Resources.dublinBgImage,
                likes: 9241,
                visitors: 1212),
            CityModel(
                cityName: "New Zealand",
                bgImage: Resources.milfordSoundBgImage,
                likes: 8241,
                visitors: 24012),
            CityModel(
                cityName: "San Diego",
                bgImage: Resources.sanDiegoBgImage,
                likes: 3241,
                visitors: 11412),
            CityModel(
                cityName: "Crested Butte",
                bgImage: Resources.crestedButteBgImage,
                likes: 6241,
                visitors: 14126)
        ]
}
