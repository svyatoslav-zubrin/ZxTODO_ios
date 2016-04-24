//
//  DropboxServiceMock.swift
//  ZxTODO
//
//  Created by zubrin on 4/24/16.
//  Copyright © 2016 Slava Zubrin. All rights reserved.
//

import Foundation
import RxSwift


struct DropboxServiceMock: DropboxServiceProtocol {
    
    private var authObservable = PublishSubject<String>()
    
    func handleAppLaunch() {
        // stub
    }
    
    func handleAppOpenURL(url: NSURL) {
        // stub
    }
    
    func authorize(fromViewController viewController: UIViewController) -> Observable<String> {
        
        // TODO: how to submit test signal after delay?
        
        return authObservable
    }
}