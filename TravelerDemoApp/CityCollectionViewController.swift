//
//  CityCollectionViewController.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/2/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

class CityCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
