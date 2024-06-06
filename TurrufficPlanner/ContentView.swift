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
                
                VStack(spacing: -10) {
                    Text("Terrufic")
                        .font(.system(size: 60, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    Text("Planner")
                        .font(.system(size: 60, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
                .padding()
                
                Spacer()
                
                Text("Remember your Pets")
                    .font(.system(size: 30, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                
                
                Spacer()
                
                Image("paw")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .padding(.bottom, 20)
                
                
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Get Started")
                        .font(.system(size: 50, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding()
//                        .padding(.bottom, 20)
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
