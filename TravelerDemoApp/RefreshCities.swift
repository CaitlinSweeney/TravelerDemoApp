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

open class PullCities: PullToRefresh {
    let awesomeRefrehser = PullToRefresh(refresherView: RefreshIconView, animator: RefreshAnimator)
    
//    public convenience init(at position: Position = .top) {
//    let refreshView = Bundle(for: type(of: self)).loadNibNamed("RefreshIconView", owner: nil, options: nil)!.first as! RefreshIconView
//    let animator =  SoupAnimator(refreshView: refreshView)
//    self.init(refreshView: refreshView, animator: animator, height : refreshView.frame.size.height, position : position)
//    }

}

class RefreshIconView: UIView {
    @IBOutlet weak var refreshImage: UIImageView!
}

class RefreshAnimator: RefreshViewAnimator {
    private let refreshView: RefreshIconView
    init(refreshView: RefreshIconView) {
        self.refreshView = refreshView
    }
    
    func animateState(state: State) {
        // animate refreshView according to state
    }
}
