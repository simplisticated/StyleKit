//
//  ViewStyleBuilder.swift
//  StyleKit
//
//  Created by Igor Matyushkin on 23.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import UIKit

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
        attributes.append(attribute)
        return self
    }
    
    public func done() -> ViewStyle {
        return ViewStyle(attributes: attributes)
    }
    
    // MARK: Private object methods
    
    // MARK: Protocol methods
    
}
