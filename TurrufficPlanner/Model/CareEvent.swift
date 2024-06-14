//
//  SwiftFile.swift
//  TurrufficPlanner
//
//  Created by Tristan Lehmann on 2024-06-07.
//

import Foundation
struct CareEvent: Identifiable {
    let id = UUID()
    var petName: String
    var done:  Bool
}

let firstItem = CareEvent(petName: "Study for Chemisty quiz", done: false)

let secondItem = CareEvent(petName: "Finish Computer Science assignment", done: true)

let thirdItem = CareEvent(petName: "Go for a run around campus", done: false)

let exampleItems = [
    
    firstItem
    ,
    secondItem
    ,
    thirdItem
    ,
    
]
