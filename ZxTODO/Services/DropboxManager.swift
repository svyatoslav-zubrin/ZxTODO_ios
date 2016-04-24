//
//  DropboxManager.swift
//  ZxTODO
//
//  Created by Slava Zubrin on 4/23/16.
//  Copyright © 2016 Slava Zubrin. All rights reserved.
//

import Foundation
import RxSwift
import SwiftyDropbox


protocol DropboxServiceProtocol {
    func handleAppLaunch()
    func handleAppOpenURL(url: NSURL)    
    func authorize(fromViewController viewController: UIViewController) -> Observable<String>
}

class DropboxManager {
    private enum Secrets {
        static let Key    = "3p8idsgers28ilh"
        static let Secret = "a7313l3hrn1ltuk"
    }
    
    let authObservable = PublishSubject<String>()
}

extension DropboxManager: DropboxServiceProtocol {
    func handleAppLaunch() {
        Dropbox.setupWithAppKey(Secrets.Key)
    }
    
    func handleAppOpenURL(url: NSURL) {
        if let authResult = Dropbox.handleRedirectURL(url) {
            switch authResult {
            case .Success(let token):
                print("Success! User is logged into Dropbox with token: \(token)")
                authObservable.onNext(token.accessToken)
            case .Error(let error, let description):
                print("Error \(error): \(description)")
                let e = NSError(domain: "DropboxAuthError", code: 0, userInfo: [NSLocalizedDescriptionKey: description])
                authObservable.onError(e)
            }
        } else {
            print("Dropbox hasn't handled redirect URL correctly for unknown reason")
        }
    }
    
    func authorize(fromViewController viewController: UIViewController) -> Observable<String> {
        Dropbox.authorizeFromController(viewController)
        return authObservable
    }
}