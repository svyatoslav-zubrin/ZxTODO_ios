//
//  ServicesLocator.swift
//  ZxTODO
//
//  Created by Slava Zubrin on 4/23/16.
//  Copyright © 2016 Slava Zubrin. All rights reserved.
//

import Foundation

class ServicesLocator {
    
    lazy var dropboxService: DropboxServiceProtocol = DropboxManager()
}