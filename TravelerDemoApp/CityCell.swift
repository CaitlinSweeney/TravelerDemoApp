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
    static let heartImageSize: CGFloat = 18.0
    static let buttonHeight: CGFloat = 40.0
    static let buttonWidth: CGFloat = 100.0
    
    // MARK: Properties
    
//    var city: CityModel? {
//        didSet {
//            guard let city = city else {
//                
//            }
//        }
//    }
    
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
    
    fileprivate lazy var bgImage: UIImageView = {
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .clear
        imageView.contentMode = .scaleAspectFill
        imageView.image = Resources.dublinBgImage
        
        return imageView
    }()
    
     fileprivate lazy var heartImage: UIImageView = {
        let imageView = UIImageView()
        
        imageView.layer.masksToBounds = true
        imageView.image = Resources.heartImage
        imageView.tintColor = .white
        
        return imageView
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
        label.font = UIFont.defaultFont(size: 12, fontStyle: .regular)
        label.textColor = UIColor.white
        label.text = "1236 Visitors".uppercased()
        label.backgroundColor = .sky()
        label.layer.cornerRadius = 10.0
        label.clipsToBounds = true
        label.layer.masksToBounds = true
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
    
        contentView.addSubview(bgImage)
        contentView.addSubview(heartImage)
        contentView.addSubview(likesLabel)
        contentView.addSubview(cityLabel)
        contentView.addSubview(visitorLabel)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.autoPinEdgesToSuperviewEdges()
        
        bgImage.autoPinEdgesToSuperviewEdges()
        
        heartImage.autoPinEdge(
            toSuperviewEdge: .top,
            withInset: 10.0)
        heartImage.autoPinEdge(
            toSuperviewEdge: .left,
            withInset: 15.0)
        heartImage.autoSetDimension(.height, toSize: CityCell.heartImageSize)
        heartImage.autoSetDimension(.width, toSize: CityCell.heartImageSize)
        
        likesLabel.autoPinEdge(
            toSuperviewEdge: .top,
            withInset: 10.0)
        likesLabel.autoPinEdge(toSuperviewEdge: .left, withInset: CityCell.heartImageSize + 22.0)
//        likesLabel.autoAlignAxis(.horizontal, toSameAxisOf: heartLabel, withOffset: -12.0)
        likesLabel.autoSetDimension(.height, toSize: likesLabel.font.heightToFit())
        
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
    
    // MARK: Helpers
    
//    fileprivate func setValues(from city: CityModel) {
//       
//        cityLabel.text= city.cityName
//        likesLabel.text = city.likes
//        visitorLabel.text = city.visitors
//        //setBgImage(city.bgImage)
//    }
}
