//
//  CityCell.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/1/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

class CityCell: UICollectionViewCell {
    
    // MARK: Constants
    
    static let cellID = "CityCell"
    static let cellHeight: CGFloat = 190.0
    static let cellWidth: CGFloat = 400.0
    static let heartImageSize: CGFloat = 25.0
    static let buttonHeight: CGFloat = 40.0
    static let buttonWidth: CGFloat = 100.0
    
    // MARK: Properties
    
    var cityName: String? {
        didSet {
            cityLabel.text = cityName
        }
    }
    
    // MARK: Constraints
    
    fileprivate var visitorLabelWidth: NSLayoutConstraint!
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Views
    
     fileprivate lazy var heartLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.defaultFont(size: 16, fontStyle: .bold)
        label.textColor = UIColor.white
        //likesLabel.text = "♥︎ \(selectedRow["likes"]!) likes"
        label.text = "♥︎"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
     fileprivate lazy var likesLabel: UILabel = {
        let label = UILabel()
       
        label.font = UIFont.defaultFont(size: 12, fontStyle: .bold)
        label.textColor = UIColor.white
        label.text = "124k"
        label.translatesAutoresizingMaskIntoConstraints = false
       
        return label
    }()
    
     fileprivate lazy var cityLabel: UILabel = {
        let label = UILabel()
       
        label.font = UIFont.defaultFont(size: 20, fontStyle: .bold)
        label.textColor = UIColor.white
        label.text = "Dublin".uppercased()
        label.translatesAutoresizingMaskIntoConstraints = false
       
        return label
    }()
    
     fileprivate lazy var visitorLabel: UILabel = {
        let label = UILabel()
        
        label.textAlignment = .center
        label.font = UIFont.defaultFont(size: 14, fontStyle: .regular)
        label.textColor = UIColor.white
        label.text = "1236 Visitors".uppercased()
        label.backgroundColor = .sky()
        label.layer.cornerRadius = 4.0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    fileprivate func addSubviews() {
        backgroundColor = .clear
        
//        let bgImage = UIImageView()
//        bgImage.image = Resources.dublinBgImage
//        bgImage.contentMode = .scaleToFill
//        
//        contentView.backgroundView = bgImage
//        
        contentView.backgroundColor = .sky(alpha: 0.6)
        
        contentView.addSubview(heartLabel)
        contentView.addSubview(likesLabel)
        contentView.addSubview(cityLabel)
        contentView.addSubview(visitorLabel)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.autoPinEdgesToSuperviewEdges()
        
        heartLabel.autoPinEdge(
            toSuperviewEdge: .top,
            withInset: 10.0)
        heartLabel.autoPinEdge(
            toSuperviewEdge: .left,
            withInset: 10.0)
        
        likesLabel.autoPinEdge(
            toSuperviewEdge: .top,
            withInset: 10.0)
        likesLabel.autoPinEdge(
            .left,
            to: .right,
            of: heartLabel,
            withOffset: 5.0)
//        likesLabel.autoSetDimension(
//            .height,
//            toSize: CityCell.cellWidth - 4.0)
//        likesLabel.autoSetDimension(
//            .width,
//            toSize: CityCell.cellWidth - 4.0)
        
        cityLabel.autoAlignAxis(toSuperviewAxis: .horizontal)
        cityLabel.autoAlignAxis(toSuperviewAxis: .vertical)
        
        visitorLabel.autoPinEdge(
            .top,
            to: .bottom,
            of: cityLabel,
            withOffset: 5.0)
        visitorLabel.autoAlignAxis(toSuperviewAxis: .vertical)
        visitorLabel.autoSetDimension(.height, toSize: visitorLabel.font.heightToFit())
        visitorLabel.autoSetDimension(
            .width,
            toSize: 120.0)
    }
    
    
}
