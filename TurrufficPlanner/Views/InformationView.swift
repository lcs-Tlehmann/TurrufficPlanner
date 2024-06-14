//
//  InformationView.swift
//  TurrufficPlanner
//
//  Created by Tristan Lehmann on 2024-06-07.
//

import SwiftUI

struct InformationView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("darkBlue"), Color("darkGreen")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack(spacing: -20) {
                    Text("Terrufic")
                        .font(.system(size: 75, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    Text("Planner")
                        .font(.system(size: 75, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
                .padding()
                
                Text("Constantly forgetting to play with your pets or feed them?")
                    .font(.system(size: 25, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                Image("pets")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                
                Text("A calendars for your family to reassures and reminds them to take care of your pet while say ")
                    .font(.system(size: 25, weight: .bold, design: .default))
                    .foregroundColor(.white)
                Text("what has been done")
                    .font(.system(size: 25, weight: .bold, design: .default))
                    .foregroundColor(.white)
                
                    Spacer()
                
                
                
                NavigationLink(destination: HouseholdView()) {
                    Text("Continue")
                        .font(.system(size: 50, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding()
                }
            }
        }
        .navigationBarHidden(true)
    }
}
struct Information_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
