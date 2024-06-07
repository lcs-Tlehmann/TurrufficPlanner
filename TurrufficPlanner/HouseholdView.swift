//
//  HousholdView.swift
//  TurrufficPlanner
//
//  Created by Tristan Lehmann on 2024-06-06.
//

import SwiftUI

struct HouseholdView: View {
    @State private var counter: Int = 0
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.darkBlue, Color.darkGreen]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                VStack(spacing: -20) {
                    Text("Terrufic")
                        .font(.system(size: 75, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    Text("Planner")
                        .font(.system(size: 75, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    Image("paw")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .padding()
                    
                }
                .padding()
                
                
                
                
                VStack(spacing:0){
                    Text("How many people live in   ")
                        .font(.system(size: 25, weight: .medium, design: .default))
                        .foregroundColor(.white)
                    Text(" your household?   ")
                        .font(.system(size: 25, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }
                .padding()
                Spacer()
                
                
                HStack {
                    Button(action: {
                        if counter > 0 {
                            counter -= 1
                        }
                    }) {
                        Image(systemName: "minus.circle")
                            .font(.system(size: 75))
                            .foregroundColor(.white)
                    }
                    
                    Text("\(counter)")
                        .font(.system(size: 75, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .frame(minWidth: 100)
                    
                    Button(action: {
                        counter += 1
                    }) {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 75))
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Continue")
                        .font(.system(size: 50, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding()
                }
                
                
                
            }
        }
    }
}

struct HouseholdView_Previews: PreviewProvider {
    static var previews: some View {
        HouseholdView()
    }
}
