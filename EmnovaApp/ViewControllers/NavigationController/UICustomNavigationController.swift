//
//  UICustomNavigationController.swift
//  EmnovaApp
//
//  Created by Emir Shayymov on 10/6/20.
//

import UIKit

open class UICustomNavigationController: UINavigationController {
    
    override open func viewDidLoad() {
        super.viewDidLoad()

        isNavigationBarHidden = true
    }

    // MARK: -
    
    override open var prefersStatusBarHidden: Bool {
        get {
            return false
        }
    }
}
