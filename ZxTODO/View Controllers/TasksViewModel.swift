//
//  TasksViewModel.swift
//  ZxTODO
//
//  Created by zubrin on 4/24/16.
//  Copyright © 2016 Slava Zubrin. All rights reserved.
//

import Foundation
import RxSwift


class TasksViewModel: BaseViewModel {
    
    var tasks = ["Task1", "Task2", "Task3"]
    let tasksObservable: Observable<[String]> = Variable<[String]>(tasks).asObservable() // TODO: how to do that? Force signal to be sent every time we change the array of tasks...
    
}