//
//  Task.swift
//  MacTaskManager
//
//  Created by ivan ruwido  on 20.11.23.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool
    var dueDate: Date
    var details: String?
    
    init(title: String, isCompleted: Bool = false, dueDate: Date, details: String? = nil) {
        self.title = title
        self.isCompleted = isCompleted
        self.dueDate = dueDate
        self.details = details
    }
    
    static func example() -> Task {
        Task(title: "Buy eggs", dueDate: Calendar.current.date(byAdding: .day, value: 2, to: Date())!)
    }
}
