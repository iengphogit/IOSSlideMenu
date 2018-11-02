//
//  ViewController.swift
//  IOSSlideMenu
//
//  Created by Iengpho on 11/2/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slideMenuView: UIView!
    
    @IBOutlet weak var leadingConstrain: NSLayoutConstraint!
    var displayMenu = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slideMenuView.layer.shadowOpacity = 1
        slideMenuView.layer.shadowRadius = 6
    }


    @IBAction func openMenu(_ sender: Any) {
        
        if displayMenu {
            leadingConstrain.constant = -250
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        } else {
            leadingConstrain.constant = 0
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        }
        displayMenu = !displayMenu
    }
}

