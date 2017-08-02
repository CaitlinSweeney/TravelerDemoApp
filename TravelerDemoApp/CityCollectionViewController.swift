//
//  CityCollectionViewController.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/1/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

class CityCollectionViewController: UICollectionViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var navBarView: NavBarView!
    
    // MARK: Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    override func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell: CityViewCell
        
        if let cityViewCell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CityViewCell.cellID, for: indexPath) as? CityViewCell {
            
            cell = cityViewCell
        } else {
            collectionView.register(
                CityViewCell.self,
                forCellWithReuseIdentifier: CityViewCell.cellID)
            
            cell = CityViewCell()
        }
        return cell
       // cell.cityName = "City"
    }
    
    // MARK: UICollectionViewDelegate
    
    // Uncomment this method to specify if the specified item should be highlighted during tracking
     override func collectionView(
        _ collectionView: UICollectionView,
        shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        
        return true
     }
 
     // Uncomment this method to specify if the specified item should be selected
     override func collectionView(
        _ collectionView: UICollectionView,
        shouldSelectItemAt indexPath: IndexPath) -> Bool {
        
        return true
     }
 
    /*
     // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
     override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
     
     }
     */
    
}
