//
//  CityViewController.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/2/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit
import Foundation

class CityViewController: UIViewController {
    
//    @IBOutlet weak var navBarView: NavBarView! {
//        didSet {
//            navBarView.headerTitle = Resources.popularTitle
//           // navBarView.searchBarDelegate = self
//        }
//    }
    
//    @IBOutlet weak var cityView: CityCollectionView!
//  
////    weak var cityView: CityCollectionView! {
////        didSet {
////            cityView.selectCity = self as? SelectCity
////        }
////    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addCityView()
    }
//    
//    fileprivate func addCityView() {
//        self.view.addSubview(cityView)
//        cityView.selectCity = self as? SelectCity
//        cityView.autoPinEdgesToSuperviewEdges()
//    }
}
