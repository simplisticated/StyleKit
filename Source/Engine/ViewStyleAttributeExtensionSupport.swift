//
//  ViewStyleAttributeExtensionSupport.swift
//  StyleKit
//
//  Created by Igor Matyushkin on 29.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import Foundation

public extension ViewStyleAttribute {
    
    /**
     Returns `true` if specified view is supported by current attribute.
     Otherwise, returns `false`.
     */
    public func supports(view: UIView) -> Bool {
        switch self {
        case .backgroundColor(_):
            return true
        case .borderColor(_):
            return true
        case .borderWidth(_):
            return true
        case .cornerRadius(_):
            return true
        case .frame(_):
            return true
        case .size(_):
            return true
        case .textColor(_):
            return view is UILabel
                || view is UITextView
        case .buttonTitleColor(_):
            return view is UIButton
        case .font(_):
            return view is UILabel
                || view is UITextView
        case .textAlignment(_):
            return view is UILabel
                || view is UITextView
        case .contentHorizontalAlignment(_):
            return view is UIControl
        case .contentVerticalAlignment(_):
            return view is UIControl
        case .tintColor(_):
            return view is UIControl
        case .image(_, _):
            return view is UIImageView
        default:
            return false
        }
    }
    
}

