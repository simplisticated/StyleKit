//
//  UIViewExtensionStyleKit.swift
//  StyleKit
//
//  Created by Igor Matyushkin on 23.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    /**
     * `ViewStyleManager` instance, associated with current view.
     */
    var stl: ViewStyleManager {
        get {
            return ViewStyleManager(forView: self)
        }
    }
    
}

