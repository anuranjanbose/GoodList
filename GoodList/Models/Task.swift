//
//  Task.swift
//  GoodList
//
//  Created by Anuranjan Bose on 13/06/20.
//  Copyright © 2020 Anuranjan Bose. All rights reserved.
//

import Foundation

enum Priority: Int {
    case high
    case medium
    case low
}

struct Task {
    let title: String
    let priority: Priority
}
