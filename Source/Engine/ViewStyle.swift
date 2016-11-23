//
//  ViewStyle.swift
//  StyleKit
//
//  Created by Igor Matyushkin on 23.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import UIKit

public class ViewStyle: NSObject {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    public class func with(attribute: StyleAttribute) -> StyleBuilder {
        let attributes = [
            attribute
        ]
        
        return StyleBuilder(attributes: attributes)
    }
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(attributes: [StyleAttribute]) {
        super.init()
        
        /**
         * Initialize attributes collection.
         */
        
        _attributes = [StyleAttribute]()
        _attributes.append(contentsOf: attributes)
    }
    
    // MARK: Deinitializer
    
    deinit {
        /**
         * Remove references.
         */
        
        _attributes = nil
    }
    
    // MARK: Object variables & properties
    
    fileprivate var _attributes: [StyleAttribute]!
    
    public var attributes: [StyleAttribute] {
        get {
            return _attributes
        }
    }
    
    // MARK: Public object methods
    
    // MARK: Private object methods
    
    // MARK: Protocol methods
    
}
