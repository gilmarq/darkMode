//
//  FinalViewController.swift
//  DarkMode
//
//  Created by Gilmar Queiroz on 15/12/20.
//  Copyright © 2020 Gilmar Queiroz. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {
    
    var teste = HomeViewController()
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
    override func viewWillAppear(_ animated: Bool) {
      
    }
    // MARK: implementar
  
    
    func setuoView() {
        if #available(iOS 13.0, *) {
            view.overrideUserInterfaceStyle = UIColor.backgroundColor
        } else {
           // view.backgroundColor = UIColor.backgroundColor
        }
         //  UILabel.textColor  = .te
       }
    
}
