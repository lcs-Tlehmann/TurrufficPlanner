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
    var careGiverName: String
    var description: String
    var careTime = String()
}

let firstItem = CareEvent(petName: "Charm", careGiverName: "Hugo", description: "Fed",careTime: "7:00")


let exampleItems = [
    
    firstItem
    ,
    
]
