//
//  ViewStyleBuilder.swift
//  StyleKit
//
//  Created by Igor Matyushkin on 23.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import UIKit

/**
 * Builder for `ViewStyle` instance.
 */
public class ViewStyleBuilder: NSObject {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    internal init(attributes: [ViewStyleAttribute]) {
        super.init()
        
        /**
         * Initialize attributes collection.
         */
        
        self.attributes = [ViewStyleAttribute]()
        self.attributes.append(contentsOf: attributes)
    }
    
    // MARK: Deinitializer
    
    deinit {
        /**
         * Remove references.
         */
        
        attributes = nil
    }
    
    // MARK: Object variables & properties
    
    fileprivate var attributes: [ViewStyleAttribute]!
    
    // MARK: Public object methods
    
    public func and(attribute: ViewStyleAttribute) -> ViewStyleBuilder {
        /**
         * Append attribute to collection.
         */
        
        attributes.append(attribute)
        
        /**
         * Return reference to current instance of `ViewStyleBuilder` class
         * to support call chains.
         */
        
        return self
    }
    
    public func done() -> ViewStyle {
        /**
         * Return style filled with attributes from
         * current builder's collection.
         */
        
        return ViewStyle(attributes: attributes)
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol methods
    
}
