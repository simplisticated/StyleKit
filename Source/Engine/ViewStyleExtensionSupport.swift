//
//  ViewStyleExtensionSupport.swift
//  StyleKit
//
//  Created by Igor Matyushkin on 29.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import Foundation

public extension ViewStyle {
    
    /**
     Returns `true` if all attributes support specified view.
     In case when at least one attribute doesn't support speficied view, returns `false`.
     */
    public func supports(view: UIView) -> Bool {
        for attribute in attributes {
            if !attribute.supports(view: view) {
                return false
            }
        }
        
        return true
    }
    
}

