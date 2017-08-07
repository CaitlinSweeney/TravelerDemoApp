//
//  Resources.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/2/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

struct Resources {
    
    static let addSign =  "\u{002B}"
    static let closeSign = "\u{2715}"
    static let moreSign = "\u{2630}"
    
    static let popularTitle = "Popular Destinations"
    
    fileprivate static let menuIcon = "MenuIcon"
    static let menuImage = UIImage(named: Resources.menuIcon)!.withRenderingMode(.alwaysTemplate)
    
    fileprivate static let heartIcon = "HeartIcon"
    static let heartImage = UIImage(named: Resources.heartIcon)!.withRenderingMode(.alwaysTemplate)
    
    fileprivate static let dublinBgImageView = "DublinBgImage"
    static let dublinBgImage = UIImage(named: Resources.dublinBgImageView)!

}
