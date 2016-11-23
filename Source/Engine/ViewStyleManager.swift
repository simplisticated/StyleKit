//
//  StyleManager.swift
//  StyleKit
//
//  Created by Igor Matyushkin on 23.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import UIKit

public class StyleManager: NSObject {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(forView view: UIView) {
        super.init()
        
        /**
         * Initialize associated view.
         */
        
        _associatedView = view
    }
    
    // MARK: Deinitializer
    
    deinit {
        /**
         * Remove references.
         */
        
        _associatedView = nil
    }
    
    // MARK: Object variables & properties
    
    fileprivate var _associatedView: UIView!
    
    fileprivate var associatedView: UIView {
        get {
            return _associatedView
        }
    }
    
    // MARK: Public object methods
    
    @discardableResult
    public func apply(style: ViewStyle) -> StyleManager {
        for attribute in style.attributes {
            apply(attribute: attribute)
        }
        
        return self
    }
    
    // MARK: Private object methods
    
    fileprivate func apply(attribute: StyleAttribute) {
        switch attribute {
        case let .backgroundColor(color):
            associatedView.backgroundColor = color
            break
        case let .borderColor(color):
            associatedView.layer.borderColor = color.cgColor
            break
        case let .borderWidth(width):
            associatedView.layer.borderWidth = width
            break
        case let .textColor(color):
            if associatedView is UILabel {
                let label = associatedView as! UILabel
                label.textColor = color
            } else if associatedView is UITextView {
                let textView = associatedView as! UITextView
                textView.textColor = color
            }
            break
        case let .font(font):
            if associatedView is UILabel {
                let label = associatedView as! UILabel
                label.font = font
            } else if associatedView is UITextView {
                let textView = associatedView as! UITextView
                textView.font = font
            }
            break
        case let .textAlignment(alignment):
            if associatedView is UILabel {
                let label = associatedView as! UILabel
                label.textAlignment = alignment
            } else if associatedView is UITextView {
                let textView = associatedView as! UITextView
                textView.textAlignment = alignment
            }
            break
        }
    }
    
    // MARK: Protocol methods
    
}
