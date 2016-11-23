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
    
    public class func with(attribute: ViewStyleAttribute) -> ViewStyleBuilder {
        let attributes = [
            attribute
        ]
        
        return ViewStyleBuilder(attributes: attributes)
    }
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    public init(attributes: [ViewStyleAttribute]) {
        super.init()
        
        /**
         * Initialize attributes collection.
         */
        
        _attributes = [ViewStyleAttribute]()
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
    
    fileprivate var _attributes: [ViewStyleAttribute]!
    
    public var attributes: [ViewStyleAttribute] {
        get {
            return _attributes
        }
    }
    
    // MARK: Public object methods
    
    // MARK: Private object methods
    
    // MARK: Protocol methods
    
}
