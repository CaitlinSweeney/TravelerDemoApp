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
    
    let heartImageSize: CGFloat = 18.0
    let buttonHeight: CGFloat = 40.0
    let buttonWidth: CGFloat = 100.0
    
    // MARK: Properties
    
    var city: CityModel? {
        didSet {
            guard let city = city else {
                return
            }
            setValues(from: city)
        }
    }
    
    //var singleCity = city.cities
    
    // MARK: Constraints
    
    fileprivate var visitorLabelWidth: NSLayoutConstraint!
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
     //   setValues(from: city?)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addSubviews()
      //  setValues(from: city?)
    }
    
    // MARK: Views
    
    fileprivate lazy var bgImage: UIImageView = {
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .clear
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
     fileprivate lazy var heartImage: UIImageView = {
        let imageView = UIImageView()
        
        imageView.layer.masksToBounds = true
        imageView.image = Resources.heartImage
        imageView.tintColor = .black
        
        return imageView
    }()
    
     fileprivate lazy var likesLabel: UILabel = {
        let label = UILabel()
       
        label.font = UIFont.defaultFont(size: 12, fontStyle: .bold)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
       
        return label
    }()
    
     fileprivate lazy var cityLabel: UILabel = {
        let label = UILabel()
       
        label.font = UIFont.defaultFont(size: 20, fontStyle: .bold)
        label.textColor = UIColor.black
        label.translatesAutoresizingMaskIntoConstraints = false
       
        return label
    }()
    
     fileprivate lazy var visitorLabel: UILabel = {
        let label = UILabel()
        
        label.textAlignment = .center
        label.font = UIFont.defaultFont(size: 12, fontStyle: .regular)
        label.textColor = UIColor.black
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
        heartImage.autoSetDimension(.height, toSize: heartImageSize)
        heartImage.autoSetDimension(.width, toSize: heartImageSize)
        
        likesLabel.autoPinEdge(
            toSuperviewEdge: .top,
            withInset: 10.0)
        likesLabel.autoPinEdge(toSuperviewEdge: .left, withInset: heartImageSize + 22.0)
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
    
     func setValues(from city: CityModel) {
        cityLabel.text = city.cityName
        likesLabel.setLikesCount(city.likes)
        visitorLabel.setListenerCount(city.visitors)
        bgImage.image = city.bgImage
    }
}
