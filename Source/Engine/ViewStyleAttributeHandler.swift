//
//  ViewStyleAttributeHandler.swift
//  StyleKit
//
//  Created by Igor Matyushkin on 26.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import UIKit

/**
 * Applies attributes to views.
 */
internal class ViewStyleAttributeHandler: NSObject {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public override init() {
        super.init()
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    public func apply(attribute: ViewStyleAttribute, toView view: UIView) {
        switch attribute {
        case let .backgroundColor(color):
            view.backgroundColor = color
            break
        case let .borderColor(color):
            view.layer.borderColor = color.cgColor
            break
        case let .borderWidth(width):
            view.layer.borderWidth = width
            break
        case let .frame(frame):
            view.frame = frame
            break
        case let .size(size):
            view.frame = CGRect(origin: view.frame.origin, size: size)
            break
        case let .textColor(color):
            if view is UILabel {
                let label = view as! UILabel
                label.textColor = color
            } else if view is UITextView {
                let textView = view as! UITextView
                textView.textColor = color
            }
            break
        case let .font(font):
            if view is UILabel {
                let label = view as! UILabel
                label.font = font
            } else if view is UITextView {
                let textView = view as! UITextView
                textView.font = font
            }
            break
        case let .textAlignment(alignment):
            if view is UILabel {
                let label = view as! UILabel
                label.textAlignment = alignment
            } else if view is UITextView {
                let textView = view as! UITextView
                textView.textAlignment = alignment
            }
            break
        case let .image(image, contentMode):
            if view is UIImageView {
                let imageView = view as! UIImageView
                imageView.image = image
                imageView.contentMode = contentMode
            }
            break
        }
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol methods
    
}
