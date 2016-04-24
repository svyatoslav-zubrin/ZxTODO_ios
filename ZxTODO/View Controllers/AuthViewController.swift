//
//  AuthViewController.swift
//  ZxTODO
//
//  Created by Slava Zubrin on 4/23/16.
//  Copyright © 2016 Slava Zubrin. All rights reserved.
//

import UIKit
import RxSwift


class AuthViewController: UIViewController {

    var viewModel: AuthViewModel!
    let trash = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupRx()
    }

    @IBAction func loginWithDropboxAction(sender: UIButton) {
        viewModel.loginWithDropbox(fromController: self)
    }
    
    private func setupRx() {
        
        // bind alert to login response
        viewModel.authResultMessage
            .subscribeNext { message in
                dispatch_async(dispatch_get_main_queue(), {
                    let alert = UIAlertController(title: nil, message: message, preferredStyle: .Alert)
                    let action = UIAlertAction(title: NSLocalizedString("OK", comment: ""), style: .Cancel, handler: { _ in
                        print("do some stuff")
                    })
                    alert.addAction(action)
                    self.presentViewController(alert, animated: true, completion: nil)
                })
            }
            .addDisposableTo(trash)
        
        viewModel.authResultMessage
            .subscribeError { error in
                dispatch_async(dispatch_get_main_queue(), {
                    let e = error as NSError
                    let alert = UIAlertController(title: nil, message: e.localizedDescription, preferredStyle: .Alert)
                    let action = UIAlertAction(title: NSLocalizedString("OK", comment: ""), style: .Cancel, handler: { _ in
                        print("do some other stuff")
                    })
                    alert.addAction(action)
                    self.presentViewController(alert, animated: true, completion: nil)
                })
            }
            .addDisposableTo(trash)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
