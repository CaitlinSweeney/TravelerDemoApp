//
//  CItyCollectionView.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/2/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

class CItyCollectionView: UICollectionView {
    
    // MARK: Flow Layout
    
    fileprivate var cityFlowLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        
        layout.scrollDirection = .vertical
        
        return layout
    }()
    
    
    // MARK: City Delegate
    
    fileprivate lazy var cityFlowDelegateObject: CityFlowDelegate = {
        let delegate = CityFlowDelegate()
        
        delegate.dataSource = self.cityDataSourceObject
        
        return delegate
    }()
    
    fileprivate lazy var cityDataSourceObject: CityDataSource = {
        return CityDataSource()
    }()

   
    // MARK: Init
    
    convenience init() {
        self.init(
            frame: CGRect.zero,
            collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    fileprivate override init(
        frame: CGRect,
        collectionViewLayout layout: UICollectionViewLayout) {
        super.init(
            frame: frame,
            collectionViewLayout: cityFlowLayout)
        
        //customize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
       //customize()
    }
    
    fileprivate func customize() {
        translatesAutoresizingMaskIntoConstraints = false
        
        register(
            CityCell.self,
            forCellWithReuseIdentifier: CityCell.cellID)
        
        backgroundColor = .clear
        
        showsHorizontalScrollIndicator = false
        
        dataSource = cityDataSourceObject
        delegate = cityFlowDelegateObject
    }
}

class CityDataSource: NSObject, UICollectionViewDataSource {
    
    // MARK: Properties
    
    var cities = [CityModel]()
    
    // MARK: Init
    
    convenience init(cities: [CityModel]) {
        self.init()
    }
    
    func numberOfSections(
        in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell: CityCell
        
        if let cityCell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CityCell.cellID, for: indexPath) as? CityCell {
            
            cell = cityCell
        } else {
            collectionView.register(
                CityCell.self,
                forCellWithReuseIdentifier: CityCell.cellID)
            
            cell = CityCell()
        }
        return cell
    }

}
