
//
//  ViewStyleAttribute.swift
//  StyleKit
//
//  Created by Igor Matyushkin on 23.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import Foundation
import UIKit

public enum ViewStyleAttribute {
    case backgroundColor(color: UIColor)
    case borderColor(color: UIColor)
    case borderWidth(width: CGFloat)
    case textColor(color: UIColor)
    case font(font: UIFont)
    case textAlignment(alignment: NSTextAlignment)
}
