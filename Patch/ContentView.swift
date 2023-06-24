//
//  ContentView.swift
//  Patch
//
//  Created by sofea hakim, rowena van houten and xichen dong on 24/06/2023.
//

import SwiftUI

struct ContentView: View {
      //@State private var counter = 0
      //@State private var message = "some message"
    @AppStorage ("counter") var counter = 0
    @AppStorage ("message") var message = ""
       @State private var chefEmoji = "👩‍🍳"
       @State private var angryEmoji = "🤬"
       @State private var emojiOpacity = 0.0
        
        var body: some View {
            
            ZStack {
                
                
                VStack {
                    Text("\(counter) brownies baked")
                    
                    Button {
                        print("You tapped me!")
                        counter += 1
                        
                        
                        
                        if counter >= 60 {
                            chefEmoji = "👩‍🍳"
                            emojiOpacity =  1.0
                            message = "MY BROWNIES!!"
                              
                            
                            
                        } else if counter >= 50 {
                            message = "the trays fell! The oven's on fire! 🫨"
                        } else if counter >= 40 {
                            message = "You're going to ruin the brownies!"
                        } else if counter >= 30 {
                            message = "Don't over fill the oven 😰"
                            
                        }
                    } label: {
                        Text("shove brownie trays in oven")
                            .padding(30)
                            .background(.white)
                            .foregroundColor(.purple)
                            .cornerRadius(10, antialiased: true)
                            .shadow(color: .white.opacity(0.3), radius: 10)
                    }
                    
                    Button {
                        counter = 0
                    } label: {
                        Text("Reset")
                            .padding(20)
                            .background(.black)
                            .foregroundColor(.purple)
                            .cornerRadius(10, antialiased: true)
                            .shadow(color: .white.opacity(0.3), radius: 10)
                    }
                    
                    
                    
                    
                    
                    Text(message)
                        .padding()
                        .foregroundColor(.red)
                }
                
                Text(chefEmoji)
                    .opacity(emojiOpacity)
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
