//
//  CityContentView.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/4/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

class CityContentView: UIView {

    // MARK: Delegate
    
    weak var cityCollectionDelegate: CityFlowDelegate? {
        didSet {
            cityCollectionDelegate?.selectCity = cityCollectionDelegate as? SelectCity
        }
    }
    
    weak var navBarViewDelegate: NavBarViewDelegate? {
        didSet {
            navBarView.delegate = navBarViewDelegate
        }
    }
    
    // MARK: Views
    
    fileprivate lazy var navBarView: NavBarView = {
        return NavBarView(
            title: Resources.popularTitle)
    }()
    
    fileprivate lazy var cityCollectionView: CityCollectionView = {
        return CityCollectionView()
    }()
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addSubviews()
    }
    
    fileprivate func addSubviews() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .white
        
        addSubview(navBarView)
        addSubview(cityCollectionView)
        
        navBarView.autoPinEdge(toSuperviewEdge: .top)
        navBarView.autoPinEdge(toSuperviewEdge: .left)
        navBarView.autoPinEdge(toSuperviewEdge: .right)
        
        cityCollectionView.autoPinEdge(
            .top,
            to: .bottom,
            of: navBarView)
        cityCollectionView.autoPinEdge(
            toSuperviewEdge: .bottom)
        cityCollectionView.autoPinEdge(toSuperviewEdge: .left)
        cityCollectionView.autoAlignAxis(toSuperviewAxis: .vertical)
        
        cityCollectionView.reloadData()
        
        layoutSubviews()
    }
}
