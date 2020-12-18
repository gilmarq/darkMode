//
//  extension+color.swift
//  DarkMode
//
//  Created by Gilmar Queiroz on 16/12/20.
//  Copyright © 2020 Gilmar Queiroz. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    static var backgroundColor: UIUserInterfaceStyle {
        
        if #available(iOS 13.0, *){
            //  return UIColor.systemBackground
            if ColorSettings.shared.darkModeStyle == .light{
                return .light
            }else if  ColorSettings.shared.darkModeStyle == .dark {
                return .dark
            }
            return UIUserInterfaceStyle.unspecified
        }else {
            if ColorSettings.shared.darkModeStyle == .light{
                return .light
            }else {
                return .dark
            }
            
        }
    }
    
    static var textColor: UIColor{
        
        if #available(iOS 13.0, *){
            if ColorSettings.shared.darkModeStyle == .light{
                return .black
            }else {
                return .white
            }
        }else {
            if ColorSettings.shared.darkModeStyle == .light{
                return .black
            }else {
                return .white
            }
            
        }
    }
}
