//
//  CityViewController.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/2/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit
import Foundation
import PullToRefresh

class CityViewController: UIViewController {
    
    fileprivate var cityView = CityContentView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(cityView)
    }
}
