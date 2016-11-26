
//
//  ViewStyleAttribute.swift
//  StyleKit
//
//  Created by Igor Matyushkin on 23.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import Foundation
import UIKit

public enum ViewStyleAttribute {
    /**
     * Works with any `UIView` instance.
     */
    case backgroundColor(color: UIColor)
    
    /**
     * Works with any `UIView` instance.
     */
    case borderColor(color: UIColor)
    
    /**
     * Works with any `UIView` instance.
     */
    case borderWidth(width: CGFloat)
    
    /**
     * Works with `UILabel` and `UITextView`.
     */
    case textColor(color: UIColor)
    
    /**
     * Works with `UILabel` and `UITextView`.
     */
    case font(font: UIFont)
    
    /**
     * Works with `UILabel` and `UITextView`.
     */
    case textAlignment(alignment: NSTextAlignment)
    
    /**
     * Works with `UIImageView`.
     */
    case image(image: UIImage, contentMode: UIViewContentMode)
}
