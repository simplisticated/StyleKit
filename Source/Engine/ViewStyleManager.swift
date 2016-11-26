//
//  ViewStyleManager.swift
//  StyleKit
//
//  Created by Igor Matyushkin on 23.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import UIKit

public class ViewStyleManager: NSObject {
    
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
    public func apply(style: ViewStyle) -> ViewStyleManager {
        for attribute in style.attributes {
            apply(attribute: attribute)
        }
        
        return self
    }
    
    // MARK: Private object methods
    
    fileprivate func apply(attribute: ViewStyleAttribute) {
        ViewStyleAttributeHandler.apply(attribute: attribute, toView: associatedView)
    }
    
    // MARK: Protocol methods
    
}
