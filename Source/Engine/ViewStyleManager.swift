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
    
    public var associatedView: UIView {
        get {
            return _associatedView
        }
    }
    
    // MARK: Public object methods
    
    @discardableResult
    public func apply(style: ViewStyle) -> ViewStyleManager {
        let viewStyleAttributeHandler = ViewStyleAttributeHandler()
        
        for attribute in style.attributes {
            viewStyleAttributeHandler.apply(attribute: attribute, toView: associatedView)
        }
        
        return self
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol methods
    
}
