//
//  LandingView.swift
//  TurrufficPlanner
//
//  Created by Tristan Lehmann on 2024-06-07.
//

import SwiftUI

struct CareEventListView: View {
    
    // MARK: Stored properties
    
    // The item currently being added
    @State var newItemDescription = ""
    // The search text
    @State var searchText = ""
    
    // The view model
    @State var viewModel = CareEventListViewModel()
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                
                List($viewModel.careEvents) { $currentCareEvent in
                    
                    CareEventView(currentCareEvent: $currentCareEvent)
                    // Delete item
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    viewModel.delete(currentCareEvent)
                                }
                            )
                        }
                    
                }
                .searchable(text: $searchText)
                
                
                VStack{
                    
                    
                    TextField("Event Description", text: $newItemDescription)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                        
                }
                Button("ADD") {
                    // Add the new to-do item
                    viewModel.createCareEvents(petName: newItemDescription, careGiverName: newItemDescription, description: newItemDescription, careTime: newItemDescription)
                }
                .disabled(newItemDescription.isEmpty)
                .font(.caption)
                .padding(.leading, 10)
                
            }
            .padding(20)
            .navigationTitle("Events")
        }
        
        
    }
}


#Preview{
    CareEventListView()
}
