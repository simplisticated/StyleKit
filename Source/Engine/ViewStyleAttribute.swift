
//
//  ViewStyleAttribute.swift
//  StyleKit
//
//  Created by Igor Matyushkin on 23.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import Foundation
import UIKit

/**
 * Attribute of UI style.
 */
public enum ViewStyleAttribute {
    /**
     * Works with `UIView` instance.
     */
    case backgroundColor(color: UIColor)
    
    /**
     * Works with `UIView` instance.
     */
    case borderColor(color: UIColor)
    
    /**
     * Works with `UIView` instance.
     */
    case borderWidth(width: CGFloat)
    
    /**
     * Works with `UIView` instance.
     */
    case cornerRadius(radius: CGFloat)
    
    /**
     * Works with `UIView` instance.
     */
    case frame(frame: CGRect)
    
    /**
     * Works with `UIView` instance.
     */
    case size(size: CGSize)
    
    /**
     * Works with `UILabel` and `UITextView`.
     */
    case textColor(color: UIColor)
    
    /**
     * Works with `UIButton`.
     */
    case buttonTitleColor(titleColor: UIColor, controlState: UIControlState)
    
    /**
     * Works with `UILabel`, `UITextView` and `UIButton`.
     */
    case font(font: UIFont)
    
    /**
     * Works with `UILabel` and `UITextView`.
     */
    case textAlignment(alignment: NSTextAlignment)
    
    /**
     * Works with `UIControl`.
     */
    case contentHorizontalAlignment(alignment: UIControlContentHorizontalAlignment)
    
    /**
     * Works with `UIControl`.
     */
    case contentVerticalAlignment(alignment: UIControlContentVerticalAlignment)
    
    /**
     * Works with `UIControl`.
     */
    case tintColor(color: UIColor)
    
    /**
     * Works with `UIImageView`.
     */
    case image(image: UIImage, contentMode: UIViewContentMode)
}
