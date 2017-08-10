//
//  CityFlowDelegate.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/3/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

protocol SelectCity: class {
    func didSelectCity(_ city: CityInfo)
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
            dataSource.cities[indexPath.row] as! CityInfo)
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth = UIScreen.main.bounds.size.width

        return CGSize(
            width: cellWidth,
            height: CityCell.cellHeight)
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(
            top: 0.0,
            left: 0.0,
            bottom: 0.0,
            right: 0.0)
    }
}
