//
//  ContentView.swift
//  Layouts
//
//  Created by Chigozie Sumani on 2/3/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageString = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        
        VStack {
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.black)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 2)
                .padding()
            
            HStack{
                
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
                
            }
            .buttonStyle(.borderedProminent)
            .border(.purple, width: 5)
            
        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
