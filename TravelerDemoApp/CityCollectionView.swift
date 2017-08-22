//
//  CItyCollectionView.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/2/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

class CityCollectionView: UICollectionView {
    
    // MARK: Delegate
    
    weak var selectCity: SelectCity? {
        didSet {
            cityFlowDelegateObject.selectCity = selectCity
        }
    }
    
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
    
    // MARK: Properties
    
    lazy var pullToRefreshCities: PullCities = PullCities(height: 130, position: .top)
   
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
        
        addSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addSubviews()
        layoutSubviews()
    }
    
    fileprivate func addSubviews() {
        translatesAutoresizingMaskIntoConstraints = false
        
        //pullToRefreshCities.addTo(self)
        
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
    
    var cities = CityInfo().cities
    
    // MARK: Init
    
    convenience init(cities: [CityInfo]) {
        self.init()
        
        self.cities = cities
    }
    
    func numberOfSections(
        in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
        
        return cities.count
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
        
        //  MARK: Cell Color
        
        if indexPath.row == 0 {
            cell.rowOneColor()
        } else if indexPath.row == 1 {
            cell.rowTwoColor()
        } else if indexPath.row == 2 {
            cell.rowThreeColor()
        } else if indexPath.row == 3 {
            cell.rowFourColor()
        } else {
            cell.rowOneColor()
        }
        
        cell.city = cities[indexPath.row]
        
        return cell
    }
}
