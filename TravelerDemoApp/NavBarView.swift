//
//  NavBarView.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/1/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit
import PureLayout
    
protocol NavBarViewDelegate: class {
    func didTapMenu()
}

class NavBarView: UIView {
    
    // MARK: Delegate
    
    weak var delegate: NavBarViewDelegate?
    
    // MARK: Constants
    
    static let viewHeight: CGFloat = 75.0
    static let padding: CGFloat = 10.0
    let menuButtonWidth: CGFloat = 38.0
    let titleLabelWidth: CGFloat = 220.0
    let titleLabelHeight: CGFloat = 30.0
    
    // MARK: Properties
    
    var headerTitle: String? {
        didSet {
            if let headerTitle = headerTitle {
                titleLabel.text = headerTitle
            }
        }
    }
    
    // MARK: Views
    
    fileprivate lazy var menuButton: UIButton = {
        let button = UIButton(type: .custom)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setImage(
            Resources.menuImage,
            for: .normal)
        button.setImage(
            Resources.menuImage,
            for: .highlighted)
        button.tintColor = .navy()
        
        button.addTarget(
            self,
            action: #selector(menuTapped),
            for: .touchUpInside)
        
        return button
    }()
    
    fileprivate lazy var titleLabel: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.font = .defaultFont(size: 15, fontStyle: .bold)
        label.textColor = .navy()
        label.textAlignment = .center
        
        return label
    }()
    
    // MARK: Constraints
    
    fileprivate var viewHeight: NSLayoutConstraint!
    
    // MARK: Init
    
    convenience init(title: String) {
        self.init(frame: CGRect.zero)
        
        headerTitle = title
        titleLabel.text = headerTitle?.uppercased()
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
        backgroundColor = .sunburst()
        clipsToBounds = true
        
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(menuButton)
        addSubview(titleLabel)
        
        addConstraints()
        
        viewHeight = autoSetDimension(
            .height,
            toSize: NavBarView.viewHeight)
        
        layoutSubviews()
    }
    
    fileprivate func addConstraints() {
        titleLabel.autoPinEdge(
            toSuperviewEdge: .top,
            withInset: NavBarView.padding * 3)
        titleLabel.autoAlignAxis(toSuperviewAxis: .vertical)
        titleLabel.autoSetDimension(.height, toSize: titleLabelHeight)
        titleLabel.autoSetDimension(.width, toSize: titleLabelWidth)
        
        menuButton.autoAlignAxis(
            .horizontal,
            toSameAxisOf: titleLabel)
        menuButton.autoPinEdge(
            toSuperviewEdge: .left,
            withInset: NavBarView.padding)
        menuButton.autoSetDimension(.height, toSize: menuButtonWidth)
        menuButton.autoSetDimension(.width, toSize: menuButtonWidth)
    }
    
    // MARK: Actions
    
    func menuTapped() {
       // delegate?.didTapMenu()
    }
}
