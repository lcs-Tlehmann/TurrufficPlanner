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
        HStack {
            Text(currentCareEvent.careGiverName)
        }
    }
}

#Preview {
    List {
        CareEventView(currentCareEvent: .constant(firstItem))
    }
}
