//
//  RefreshCities.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/21/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import Foundation
import UIKit
import PullToRefresh

class PullCities: PullToRefresh {
    init(refreshView: RefreshIconView, animator: RefreshIconAnimator, height: CGFloat, position: Position) {
        self.refreshView = refreshView
        self.animator = animator
        self.position = position
    }
    
    public convenience init(height: CGFloat = 130.0, position: Position = .top) {
        let refreshView = RefreshIconView()
        refreshView.frame.size.height = height
        self.init(refreshView: refreshView, animator: RefreshIconAnimator(refreshView: refreshView), height: height, position: position)
    }
    
//    deinit {
//        .removeScrollViewObserving()
//    }
}

class RefreshIconView: UIView {
    @IBOutlet weak var refreshImage: UIImageView!
}

class RefreshIconAnimator: NSObject, RefreshViewAnimator {
    
    fileprivate let animationDuration = 0.3
    let animationY = CAKeyframeAnimation(keyPath: "transform.translation.y")
    
    fileprivate let  refreshView: RefreshIconView
   
    init(refreshView: RefreshIconView) {
        self.refreshView = refreshView
    }
    
    public func animate(_ state: State) {
        switch state {
            case .initial: initalLayout()
            case .releasing(let progress): releasingAnimation(progress)
            case .loading: startLoading()
            case .finished: refreshView.removeFromSuperview()
        }
    }
    
    // MARK: Helpers
    
    func initalLayout() {
        let centerX = refreshView.frame.size.width / 2
        //let refreshViewHeight: CGFloat

        // MARK: refreshImage animation
        
        refreshView.refreshImage.removeAllAnimations()
        
        refreshView.refreshImage.center = CGPoint(x: centerX, y: refreshView.refreshImage.center.y)
        refreshView.refreshImage.addAnimation(CAKeyframeAnimation.animationWith(
            AnimationType.TranslationY,
            values: [-200, 0],
            keyTimes: [0, 0.5],
            duration: animationDuration,
            beginTime:0))
        refreshView.refreshImage.layer.timeOffset = 0.0
    }
    
    func releasingAnimation(_ progress: CGFloat) {
        let speed: CGFloat = 1.5
        let speededProgress: CGFloat = progress * speed > 1 ? 1 : progress * speed
        
        refreshView.refreshImage.alpha = progress
        refreshView.refreshImage.layer.timeOffset = Double(speededProgress) * animationDuration
    }
    
    func startLoading() {
        refreshView.layer.timeOffset = animationDuration
    }
}
