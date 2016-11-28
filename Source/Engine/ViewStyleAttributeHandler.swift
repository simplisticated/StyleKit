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
    
    /**
     * Applies attribute to view.
     */
    public func apply(attribute: ViewStyleAttribute, toView view: UIView) {
        /**
         * Check attribute value.
         */
        
        switch attribute {
        case let .backgroundColor(color):
            /**
             * Update view's background color.
             */
            
            view.backgroundColor = color
            break
        case let .borderColor(color):
            /**
             * Update view's border color.
             */
            
            view.layer.borderColor = color.cgColor
            break
        case let .borderWidth(width):
            /**
             * Update view's border width.
             */
            
            view.layer.borderWidth = width
            break
        case let .cornerRadius(radius):
            /**
             * Update view's corner radius.
             */
            
            view.layer.cornerRadius = radius
            break
        case let .frame(frame):
            /**
             * Update view's frame.
             */
            
            view.frame = frame
            break
        case let .size(size):
            /**
             * Update view's size.
             */
            
            view.frame = CGRect(origin: view.frame.origin, size: size)
            break
        case let .textColor(color):
            /**
             * Check view's type.
             */
            
            if view is UILabel {
                /**
                 * Update text color of `UILabel` instance.
                 */
                
                let label = view as! UILabel
                label.textColor = color
            } else if view is UITextView {
                /**
                 * Update text color of `UITextView` instance.
                 */
                
                let textView = view as! UITextView
                textView.textColor = color
            } else if view is UIButton {
                /**
                 * Update text color of `UIButton` instance.
                 */
                
                let button = view as! UIButton
                button.setTitleColor(color, for: .normal)
            } else {
                /**
                 * View's type is not supported by current attribute.
                 * Therefore, do nothing.
                 */
            }
            break
        case let .buttonTitleColor(titleColor, controlState):
            /**
             * Check view's type.
             */
            
            if view is UIButton {
                /**
                 * Update text color of `UIButton` instance.
                 */
                
                let button = view as! UIButton
                button.setTitleColor(titleColor, for: controlState)
            } else {
                /**
                 * View's type is not supported by current attribute.
                 * Therefore, do nothing.
                 */
            }
            break
        case let .font(font):
            /**
             * Check view's type.
             */
            
            if view is UILabel {
                /**
                 * Update font of `UILabel` instance.
                 */
                
                let label = view as! UILabel
                label.font = font
            } else if view is UITextView {
                /**
                 * Update font of `UITextView` instance.
                 */
                
                let textView = view as! UITextView
                textView.font = font
            } else if view is UIButton {
                /**
                 * Update font of `UIButton` instance.
                 */
                
                let button = view as! UIButton
                button.titleLabel?.font = font
            } else {
                /**
                 * View's type is not supported by current attribute.
                 * Therefore, do nothing.
                 */
            }
            break
        case let .textAlignment(alignment):
            /**
             * Check view's type.
             */
            
            if view is UILabel {
                /**
                 * Update text alignment of `UILabel` instance.
                 */
                
                let label = view as! UILabel
                label.textAlignment = alignment
            } else if view is UITextView {
                /**
                 * Update text alignment of `UITextView` instance.
                 */
                
                let textView = view as! UITextView
                textView.textAlignment = alignment
            } else {
                /**
                 * View's type is not supported by current attribute.
                 * Therefore, do nothing.
                 */
            }
            break
        case let .contentHorizontalAlignment(alignment):
            /**
             * Check view's type.
             */
            
            if view is UIControl {
                /**
                 * Update content horizontal alignment of `UIButton` instance.
                 */
                
                let control = view as! UIControl
                control.contentHorizontalAlignment = alignment
            } else {
                /**
                 * View's type is not supported by current attribute.
                 * Therefore, do nothing.
                 */
            }
            break
        case let .contentVerticalAlignment(alignment):
            /**
             * Check view's type.
             */
            
            if view is UIControl {
                /**
                 * Update content horizontal alignment of `UIButton` instance.
                 */
                
                let control = view as! UIControl
                control.contentVerticalAlignment = alignment
            } else {
                /**
                 * View's type is not supported by current attribute.
                 * Therefore, do nothing.
                 */
            }
            break
        case let .image(image, contentMode):
            /**
             * Check view's type.
             */
            
            if view is UIImageView {
                /**
                 * Update image and content mode of `UIImageView` instance.
                 */
                
                let imageView = view as! UIImageView
                imageView.image = image
                imageView.contentMode = contentMode
            } else {
                /**
                 * View's type is not supported by current attribute.
                 * Therefore, do nothing.
                 */
            }
            break
        default:
            /**
             * Attribute's value was not recognized.
             * Therefore, do nothing.
             */
            break
        }
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol methods
    
}
