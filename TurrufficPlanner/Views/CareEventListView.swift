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
                    
                    List($viewModel.todos) { $todo in
                        
                        CareEventView(currentCareEvent: $todo)
                        // Delete item
                            .swipeActions {
                                Button(
                                    "Delete",
                                    role: .destructive,
                                    action: {
                                        viewModel.delete(todo)
                                    }
                                )
                            }
                        
                    }
                    .searchable(text: $searchText)
                    
                    HStack {
                        TextField("Enter a completed item", text: $newItemDescription)
                        
                        Button("ADD") {
                            // Add the new to-do item
                            viewModel.createToDo(withTitle: newItemDescription)
                        }
                        .font(.caption)
                    }
                    .padding(20)
                    
                }
                .navigationTitle("Reminders")
                
            }

    }
}

#Preview {
    CareEventListView()
}