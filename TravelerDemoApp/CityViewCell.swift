//
//  CityViewCell.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/1/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

class CityViewCell: UICollectionViewCell {
    
    // MARK: Constants
    
    static let cellID = "CityViewCell"
    static let cellHeight: CGFloat = 120.0
    static let heartImageSize: CGFloat = 25.0
    static let buttonHeight: CGFloat = 40.0
    static let buttonWidth: CGFloat = 100.0
    
    // MARK: Properties
    
    var cityName: String? {
        didSet {
            cityLabel.text = cityName
        }
    }
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //addViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Views
    
    let heartLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.defaultFont(size: 13, fontStyle: .bold)
        label.textColor = UIColor.white
        //likesLabel.text = "♥︎ \(selectedRow["likes"]!) likes"
        label.text = "♥︎"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let likesLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.defaultFont(size: 12, fontStyle: .bold)
        label.textColor = UIColor.white
        label.text = "124k"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let cityLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.defaultFont(size: 20, fontStyle: .bold)
        label.textColor = UIColor.white
        //label.text = "City".uppercased()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let vistorLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.defaultFont(size: 20, fontStyle: .bold)
        label.textColor = UIColor.white
        label.text = "1236 Visitors".uppercased()
        label.layer.cornerRadius = 4.0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: Subviews
    
    
    
}
