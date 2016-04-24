//
//  AuthViewModelTests.swift
//  ZxTODO
//
//  Created by zubrin on 4/24/16.
//  Copyright © 2016 Slava Zubrin. All rights reserved.
//

import XCTest
import RxSwift


class AuthViewModelTests: XCTestCase {

    let sut = AuthViewModel(servicesLocator: ServicesLocatorMock())
    let authObserver = PublishSubject<String>()
    let trash = DisposeBag()
    
    override func setUp() {
        super.setUp()
        
        // setup channel
        sut.authResultMessage.subscribe(authObserver)
    }
    
    override func tearDown() {
        // TODO: how to release channel?
        
        super.tearDown()
    }
    
    func testAuthChannelSetup() {
        let controller = UIViewController()
        sut.loginWithDropbox(fromController: controller)
        
        // TODO: how to test that our subscription received the signal
        // TODO: how to use RxTests framework for testing
        // TODO: how to use Schedulers
        // TODO: Memory management with RxSwift 
    }
}
