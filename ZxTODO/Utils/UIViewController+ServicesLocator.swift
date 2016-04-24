//
//  UIViewController+ServicesLocator.swift
//  ZxTODO
//
//  Created by Slava Zubrin on 4/23/16.
//  Copyright © 2016 Slava Zubrin. All rights reserved.
//

import UIKit


extension UIViewController {
    
    var services: ServicesLocator {
        get {
            guard let appDelegate = UIApplication.sharedApplication().delegate as? AppDelegate else {
                    fatalError("Services locator is unavailable")
            }
            return appDelegate.services
        }
    }
}
