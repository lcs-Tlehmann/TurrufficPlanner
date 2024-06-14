//
//  CompletedListViewModel.swift
//  TurrufficPlanner
//
//  Created by Tristan Lehmann on 2024-06-07.
//

import Foundation

@Observable
class CareEventListViewModel {
    
    // MARK: Stored properties
    // The list of to-do items
    var todos: [CareEvent]
    
    // MARK: Initializer(s)
    init(todos: [CareEvent] = []) {
        self.todos = todos
    }
    
    // MARK: Functions
    func createToDo(withTitle title: String) {
        
        // Create the new to-do item instance
        let todo = CareEvent(
            petName: title,
            done: false
        )
        
        // Append to the array
        todos.append(todo)
        
    }
    
    func delete(_ todo: CareEvent) {
        
        // Remove the provided to-do item from the array
        todos.removeAll { currentItem in
            currentItem.id == todo.id
        }
        
    }
    
}
