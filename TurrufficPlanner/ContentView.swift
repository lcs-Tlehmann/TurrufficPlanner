//
//  ContentView.swift
//  TurrufficPlanner
//
//  Created by Tristan Lehmann on 2024-06-03.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
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
                    
                    Text("Remember Your Pets")
                        .font(.system(size: 25, weight: .medium, design: .default))
                        .foregroundColor(.white)
                        .padding()
                    
                    Image("paw")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(destination: InformationView()) {
                        Text("Get Started")
                            .font(.system(size: 50, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                    }
                }
            }
            .navigationBarHidden(true) 
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
