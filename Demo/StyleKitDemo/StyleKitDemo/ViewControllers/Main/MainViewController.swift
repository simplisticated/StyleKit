//
//  MainViewController.swift
//  StyleKitDemo
//
//  Created by Igor Matyushkin on 23.11.16.
//  Copyright © 2016 Visuality. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Outlets
    
    @IBOutlet fileprivate weak var helloLabel: UILabel!
    
    // MARK: Object variables & properties
    
    // MARK: Public object methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /**
         * Initialize view.
         */
        
        view.stl.apply(style: StyleStorage.simpleBackground)
        
        /**
         * Initialize hello label.
         */
        
        helloLabel.stl.apply(style: StyleStorage.thinOrangeText)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Private object methods
    
    // MARK: Actions
    
    // MARK: Protocol methods
    
}
