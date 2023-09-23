//
//  ContentView.swift
//  ColorizeButton
//
//  Created by Kenneth Oliver Rathbun on 7/10/23.
//

import Foundation
import SwiftUI

struct ContentView: View {
    @State var backgroundColor = Color(red: 0.69, green: 0.96, blue: 1.0)
    @State var buttonColor = Color(red: 0.82, green: 0.34, blue: 0.45)
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea() // The backgroundColor fills the entire safe area
            
            VStack {
                Button(
                    action: { randomizeColors() }, // Action to randomize the colors when the button is pressed
                    label: {
                        Text("Press Me") // The label text of the button
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal, 20)
                            .background(
                                buttonColor
                                    .cornerRadius(50)
                                    .shadow(radius: 5)
                            )
                    }
                )
            }
        }
    }
    
    func randomizeColors() {
        backgroundColor = Color(
            red: Double.random(in: 0...1), // Random red value for the main color
            green: Double.random(in: 0...1), // Random green value for the main color
            blue: Double.random(in: 0...1) // Random blue value for the main color
        )
        
        buttonColor = Color(
            red: Double.random(in: 0...1), // Random red value for the accent color
            green: Double.random(in: 0...1), // Random green value for the accent color
            blue: Double.random(in: 0...1) // Random blue value for the accent color
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
