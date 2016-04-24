//
//  ServicesLocatorMock.swift
//  ZxTODO
//
//  Created by zubrin on 4/24/16.
//  Copyright © 2016 Slava Zubrin. All rights reserved.
//

import Foundation

class ServicesLocatorMock: ServicesLocatorProtocol {
    lazy var dropboxService: DropboxServiceProtocol = DropboxServiceMock()
}

