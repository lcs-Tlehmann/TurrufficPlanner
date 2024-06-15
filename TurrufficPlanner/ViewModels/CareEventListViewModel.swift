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
    func createCareEvents(
        petName: String,
        careGiverName: String,
        description: String,
        careTime: String
    ) {
        
        // Create the new care event instance
        let careEvent = CareEvent(
            petName: petName,
            careGiverName: careGiverName,
            description: description
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
