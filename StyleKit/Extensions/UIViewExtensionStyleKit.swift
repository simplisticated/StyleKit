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
    
    var stl: StyleManager {
        get {
            return StyleManager(forView: self)
        }
    }
    
}

