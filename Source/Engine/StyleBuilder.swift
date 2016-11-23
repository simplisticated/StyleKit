//
//  StyleBuilder.swift
//  StyleKitDemo
//
//  Created by Igor Matyushkin on 23.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import UIKit

public class StyleBuilder: NSObject {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    internal init(attributes: [StyleAttribute]) {
        super.init()
        
        /**
         * Initialize attributes collection.
         */
        
        self.attributes = [StyleAttribute]()
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
    
    fileprivate var attributes: [StyleAttribute]!
    
    // MARK: Public object methods
    
    public func and(attribute: StyleAttribute) -> StyleBuilder {
        attributes.append(attribute)
        return self
    }
    
    public func done() -> Style {
        return Style(attributes: attributes)
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol methods
    
}
