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
        
        addSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Views
    
     fileprivate lazy var heartLabel: UILabel = {
        let label = UILabel()
        
        label.font = UIFont.defaultFont(size: 13, fontStyle: .bold)
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
        //label.text = "City".uppercased()
        label.translatesAutoresizingMaskIntoConstraints = false
       
        return label
    }()
    
     fileprivate lazy var vistorLabel: UILabel = {
        let label = UILabel()
       
        label.font = UIFont.defaultFont(size: 20, fontStyle: .bold)
        label.textColor = UIColor.white
        label.text = "1236 Visitors".uppercased()
        label.layer.cornerRadius = 4.0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    fileprivate func addSubviews() {
        backgroundColor = .clear
        
        let view = UIView()
        view.backgroundColor = .clear
        backgroundView = view
        
        view.backgroundColor = .sunburst(alpha: 0.4)
        selectedBackgroundView = view
        
        contentView.addSubview(heartLabel)
        contentView.addSubview(likesLabel)
        contentView.addSubview(cityLabel)
        contentView.addSubview(vistorLabel)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.autoPinEdgesToSuperviewEdges()
        
        heartLabel.autoPinEdge(
            toSuperviewEdge: .top,
            withInset: 2.0)
        heartLabel.autoPinEdge(
            toSuperviewEdge: .left,
            withInset: 2.0)
        
        likesLabel.autoPinEdge(
            toSuperviewEdge: .top,
            withInset: 2.0)
        likesLabel.autoPinEdge(
            .left,
            to: .right,
            of: heartLabel,
            withOffset: 5.0)
//        heartLabel.autoSetDimension(
//            .height,
//            toSize: CityCell.cellWidth - 4.0)
//        heartLabel.autoSetDimension(
//            .width,
//            toSize: CityCell.cellWidth - 4.0)
        
        cityLabel.autoAlignAxis(toSuperviewAxis: .horizontal)
        cityLabel.autoAlignAxis(toSuperviewAxis: .vertical)
        
        vistorLabel.autoPinEdge(
            .top,
            to: .bottom,
            of: cityLabel,
            withOffset: 5.0)
//        vistorLabel.autoSetDimension(
//            .width,
//            toSize: CityCell.cellWidth - 2.0)
    }
    
    
}
