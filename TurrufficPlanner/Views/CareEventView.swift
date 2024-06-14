//
//  SwiftUIView.swift
//  TurrufficPlanner
//
//  Created by Tristan Lehmann on 2024-06-07.
//

import SwiftUI

struct CareEventView: View {
    
    @Binding var currentCareEvent: CareEvent
    
    var body: some View {
        Label(
            title: {
                TextField("", text: $currentCareEvent.petName, axis: .vertical)
            }, icon: {
                Image(systemName: currentCareEvent.done == true ? "checkmark.circle" : "circle")
                    // Tap to mark as done
                    .onTapGesture {
                        currentCareEvent.done.toggle()
                    }
                
            }
        )
    }
}

#Preview {
    List {
        CareEventView(currentCareEvent: .constant(firstItem))
        CareEventView(currentCareEvent: .constant(secondItem))
    }
}
