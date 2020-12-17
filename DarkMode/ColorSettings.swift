//
//  ColorSettings.swift
//  DarkMode
//
//  Created by Gilmar Queiroz on 16/12/20.
//  Copyright © 2020 Gilmar Queiroz. All rights reserved.
//

import Foundation

enum DarkModeStyle {
    case light
    case dark
}


struct ColorSettings {
    static var shared: ColorSettings = ColorSettings()
    
    var darkModeStyle: DarkModeStyle {
        get{
            UserDefaults.standard.string(forKey: "darkModeStyle") == "light" ?  DarkModeStyle.light : DarkModeStyle.dark
        }
        set{
            UserDefaults.standard.set(newValue == .light ? "light" : "dark", forKey: "darkModeStyle")
            self.sendNotification()
        }
        
    }
    
    func  sendNotification(){
        NotificationCenter.default.post(name: NSNotification.Name("darkModeStyle"), object: nil)
    }
}
