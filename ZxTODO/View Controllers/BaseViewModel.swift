//
//  BaseViewModel.swift
//  ZxTODO
//
//  Created by Slava Zubrin on 4/23/16.
//  Copyright © 2016 Slava Zubrin. All rights reserved.
//

import Foundation

class BaseViewModel {
    
    var services: ServicesLocatorProtocol
    
    init(servicesLocator: ServicesLocatorProtocol) {
        services = servicesLocator
    }
}