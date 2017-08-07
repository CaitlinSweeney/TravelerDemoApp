//
//  UIExtensions.swift
//  TravelerDemoApp
//
//  Created by Caitlin Marie Sweeney on 8/1/17.
//  Copyright © 2017 Caitlin Marie Sweeney. All rights reserved.
//

import UIKit

extension UIColor {
    
    // MARK: Yellows

    public class func sunburst() -> UIColor {
        return UIColor(
            red: 254.0/255.0,
            green: 248.0/255.0,
            blue: 182.0/255.0,
            alpha: 1.0)
    }
    
    public class func sunburst(alpha: CGFloat) -> UIColor {
        return UIColor(
            red: 254.0/255.0,
            green: 248.0/255.0,
            blue: 182.0/255.0,
            alpha: alpha)
    }

    public class func mustard() -> UIColor {
        return UIColor(
            red: 242.0/255.0,
            green: 202.0/255.0,
            blue: 79.0/255.0,
            alpha: 1.0)
    }
    
    public class func mustard(alpha: CGFloat) -> UIColor {
        return UIColor(
            red: 242.0/255.0,
            green: 202.0/255.0,
            blue: 79.0/255.0,
            alpha: alpha)
    }
    
    // MARK: Orange
    
    public class func clementine() -> UIColor {
        return UIColor(
            red: 238.0/255.0,
            green: 160.0/255.0,
            blue: 65.0/255.0,
            alpha: 1.0)
    }
    
    public class func clementine(alpha: CGFloat) -> UIColor {
        return UIColor(
            red: 238.0/255.0,
            green: 160.0/255.0,
            blue: 65.0/255.0,
            alpha: alpha)
    }
    
    // MARK: Blues
    
    public class func ocean() -> UIColor {
        return UIColor(
            red: 29.0/255.0,
            green: 161.0/255.0,
            blue: 165.0/255.0,
            alpha: 1.0)
    }
    
    public class func ocean(alpha: CGFloat) -> UIColor {
        return UIColor(
            red: 29.0/255.0,
            green: 161.0/255.0,
            blue: 165.0/255.0,
            alpha: alpha)
    }
    
    public class func sky() -> UIColor {
        return UIColor(
            red: 31.0/255.0,
            green: 108.0/255.0,
            blue: 140.0/255.0,
            alpha: 1.0)
    }
    
    public class func sky(alpha: CGFloat) -> UIColor {
        return UIColor(
            red: 31.0/255.0,
            green: 108.0/255.0,
            blue: 140.0/255.0,
            alpha: alpha)
    }
    
    public class func navy() -> UIColor {
        return UIColor(
            red: 13.0/255.0,
            green: 85.0/255.0,
            blue: 109.0/255.0,
            alpha: 1.0)
    }
    
    public class func navy(alpha: CGFloat) -> UIColor {
        return UIColor(
            red: 13.0/255.0,
            green: 85.0/255.0,
            blue: 109.0/255.0,
            alpha: alpha)
    }
}

extension UIFont {
    
    public enum AppFontStyle {
        case regular
        case regularItalic
        case medium
        case semibold
        case bold
        case heavy
    }
    
    public class func defaultFont(
        size: CGFloat,
        fontStyle: AppFontStyle) -> UIFont {
        
        switch fontStyle {
        case .regular:
            return UIFont.systemFont(
                ofSize: size,
                weight: UIFontWeightRegular)
            
        case .medium:
            return UIFont.systemFont(
                ofSize: size,
                weight: UIFontWeightMedium)
            
        case .semibold:
            return UIFont.systemFont(
                ofSize: size,
                weight: UIFontWeightSemibold)
            
        case .bold:
            return UIFont.systemFont(
                ofSize: size,
                weight: UIFontWeightBold)
            
        case .heavy:
            return UIFont.systemFont(
                ofSize: size,
                weight: UIFontWeightHeavy)
            
        case .regularItalic:
            return UIFont.italicSystemFont(ofSize: size)
        }
    }
    
    public func heightToFit() -> CGFloat {
        return self.pointSize + 10.0
    }
}

