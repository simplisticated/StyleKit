//
//  StyleStorage.swift
//  StyleKitDemo
//
//  Created by Igor Matyushkin on 23.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import Foundation
import UIKit

struct StyleStorage {
    static let simpleBackground = Style.with(attribute: .backgroundColor(color: .white))
        .and(attribute: .borderColor(color: .green))
        .and(attribute: .borderWidth(width: 2.0))
        .done()
    
    static let thinOrangeText = Style.with(attribute: .textColor(color: .orange))
        .and(attribute: .font(font: UIFont.systemFont(ofSize: 36.0, weight: UIFontWeightThin)))
        .done()
}
