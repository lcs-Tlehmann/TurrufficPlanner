//
//  ContentView.swift
//  TurrufficPlanner
//
//  Created by Tristan Lehmann on 2024-06-03.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                    .frame(height: 300)
                
                Text("Terrufic Planner")
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding()
                    Spacer()
                
                Text("Remember your Pets")
        .font(.system(size: 24, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding(.bottom, 50)
                Spacer()
                
                
                Image("paw")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .padding(.bottom, 20)
                
                
                
                Spacer()
                    .frame(height: 75)
                
                Button(action: {
                 
                }) {
                    Text("Get Started")
                        .font(.system(size: 50, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding()
                        .frame(height: 600)
                }
                
                Spacer()
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
