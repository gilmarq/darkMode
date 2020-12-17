//
//  HomeViewController.swift
//  DarkMode
//
//  Created by Gilmar Queiroz on 14/12/20.
//  Copyright © 2020 Gilmar Queiroz. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var btSwitch: UISwitch!
    @IBOutlet var tlview: UIView!
   
    weak var reference: FinalViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector:#selector(notificationObject(_:)), name: NSNotification.Name("darkMode"), object: nil)
    
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setuoView()
    }
      
    @objc func notificationObject(_ notification: Notification){
               
        if notification.name == NSNotification.Name("darkMode"){
            setuoView()
        }
    }
    
    @IBAction func actionDarkMode(_ sender: UISwitch) {
       
        if (btSwitch.isOn == true ){

             ColorSettings.shared.darkModeStyle = .dark
            setuoView()
        } else {
            ColorSettings.shared.darkModeStyle = .light
            setuoView()
        }
    }
    
    func setuoView() {
        view.overrideUserInterfaceStyle = UIColor.backgroundColor
      //  UILabel.textColor  = .te
    }
}
