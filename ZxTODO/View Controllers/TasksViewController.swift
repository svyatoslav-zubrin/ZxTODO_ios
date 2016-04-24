//
//  TasksViewController.swift
//  ZxTODO
//
//  Created by zubrin on 4/24/16.
//  Copyright © 2016 Slava Zubrin. All rights reserved.
//

import UIKit
import RxSwift


class TasksViewController: UIViewController {
    
    var viewModel: TasksViewModel!
    let trash = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    private func setupRx() {
        
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
