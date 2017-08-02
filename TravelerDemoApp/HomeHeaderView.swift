//
//  HomeHeaderView.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/1/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    
    // MARK: Delegate
    
    //  var delegate: HeaderViewDelegate?
    
    // MARK: Constants
    
    static let buttonSize: CGFloat = 30.0
    let horizontalPadding: CGFloat = 10.0
    let verticalPadding: CGFloat = 23.0
    
    // MARK: Views
    
    fileprivate lazy var menuButton: UIButton = {
        let button = UIButton()
        
        //button.setImage(Resources.menuImage, for: .normal)
        button.clipsToBounds = false
        button.layer.masksToBounds = true
        
        return button
    }()
    
    // MARK: Init
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    fileprivate override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addSubviews()
    }
    
    fileprivate func addSubviews() {
        backgroundColor = .sunflower()
        clipsToBounds = true
        isUserInteractionEnabled = true
        
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(menuButton)
        
        menuButton.autoPinEdge(
            toSuperviewEdge: .left,
            withInset: horizontalPadding)
        menuButton.autoPinEdge(
            toSuperviewEdge: .top,
            withInset: verticalPadding)
        menuButton.autoSetDimension(
            .width,
            toSize: buttonSize)
        menuButton.autoSetDimension(
            .height,
            toSize: buttonSize)
        
        layoutSubviews()
    }
}

