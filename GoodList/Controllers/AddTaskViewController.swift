//
//  AddTaskViewController.swift
//  GoodList
//
//  Created by Anuranjan Bose on 13/06/20.
//  Copyright © 2020 Anuranjan Bose. All rights reserved.
//

import Foundation
import UIKit

class AddTaskViewController: UIViewController {
    
    @IBOutlet weak var prioritySegmentedControl: UISegmentedControl!
    @IBOutlet weak var taskTitleTextField: UITextField!
    
    @IBAction func saveTask() {
        
        guard let priority = Priority(rawValue: self.prioritySegmentedControl.selectedSegmentIndex), let title = self.taskTitleTextField.text else {
            return
        }
        
        let task = Task(title: title, priority: priority)
    }
}
