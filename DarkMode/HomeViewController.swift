//
//  HomeViewController.swift
//  DarkMode
//
//  Created by Gilmar Queiroz on 14/12/20.
//  Copyright © 2020 Gilmar Queiroz. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var tlview: UIView!
    
    // implementar 
   // var darkMode: Bool

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionDarkMode(_ sender: UISwitch) {
       
        if (sender.isOn == true ){
            self.tlview.overrideUserInterfaceStyle = .light
            darkMode = true
            
        } else {
            self.tlview.overrideUserInterfaceStyle = .dark
            darkMode = false
        }
    }
}
