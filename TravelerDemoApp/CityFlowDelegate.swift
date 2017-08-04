//
//  CityFlowDelegate.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/3/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

protocol SelectCity: class {
    func didSelectCity(_ city: CityModel)
}

class CityFlowDelegate: UICollectionViewFlowLayout, UICollectionViewDelegateFlowLayout {
    
    // MARK: Delegate
    
    weak var selectCity: SelectCity?
    
    // MARK: Data Source
    
    weak var dataSource: CityDataSource?
    
    // MARK: Required
    
    func collectionView(
        _ collectionView: UICollectionView,
        didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        
        guard let dataSource = dataSource else {
            return
        }
        
        selectCity?.didSelectCity(
            dataSource.cities[indexPath.row])
    }

}
