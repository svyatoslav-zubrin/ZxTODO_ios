//
//  AuthViewModel.swift
//  ZxTODO
//
//  Created by Slava Zubrin on 4/23/16.
//  Copyright © 2016 Slava Zubrin. All rights reserved.
//

import UIKit
import RxSwift

class AuthViewModel: BaseViewModel {
    
    let authResultMessage = PublishSubject<String>()
    
    private var dropboxService: DropboxServiceProtocol {
        return services.dropboxService
    }
    
    // Public
    
    func loginWithDropbox(fromController controller: UIViewController) {
        dropboxService
            .authorize(fromViewController: controller)
            .subscribe(authResultMessage)
    }
}