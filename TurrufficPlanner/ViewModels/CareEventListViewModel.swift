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
    // The list of care events
    var careEvents: [CareEvent]
    
    // MARK: Initializer(s)
    init(careEvents: [CareEvent] = []) {
        self.careEvents = careEvents
    }
    
    // MARK: Functions
    func createCareEvents(withTitle title: String) {
        
        // Create the new to-do item instance
        let careEvent = CareEvent(
            petName: title,
            done: false
        )
        
        // Append to the array
        careEvents.append(careEvent)
        
    }
    
    func delete(_ event: CareEvent) {
        
        // Remove the provided to-do item from the array
        careEvents.removeAll { currentEvent in
            currentEvent.id == event.id
        }
        
    }
    
}
