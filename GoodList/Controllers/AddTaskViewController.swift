//
//  AddTaskViewController.swift
//  GoodList
//
//  Created by Anuranjan Bose on 13/06/20.
//  Copyright © 2020 Anuranjan Bose. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

class AddTaskViewController: UIViewController {
    
    @IBOutlet weak var prioritySegmentedControl: UISegmentedControl!
    @IBOutlet weak var taskTitleTextField: UITextField!
    
    private let taskSubject = PublishSubject<Task>()
    
    var taskSubjectObservable: Observable<Task> {
        return self.taskSubject.asObservable()
    }
    @IBAction func saveTask() {
        
        guard let priority = Priority(rawValue: self.prioritySegmentedControl.selectedSegmentIndex), let title = self.taskTitleTextField.text else {
            return
        }
        
        let task = Task(title: title, priority: priority)
        taskSubject.onNext(task)
        self.dismiss(animated: true, completion: nil)
    }
}
