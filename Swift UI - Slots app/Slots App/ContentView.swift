//
//  ContentView.swift
//  Slots App
//
//  Created by Arthur Sh on 31.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var score = 1000
    
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    
    var body: some View {
        VStack{
            
            
            
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(Color(.label))
                .padding(.top, 33)
            
            Spacer()
            
            Text("Credits \(score)")
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(Color(.label))
            
            Spacer()
            
            HStack{
                Spacer()
                Image("fruit\(slot1)")
                    .resizable()
                    .scaledToFit()
                
                Spacer()
                
                Image("fruit\(slot2)")
                    .resizable()
                    .scaledToFit()
                
                Spacer()
                
                Image("fruit\(slot3)")
                    .resizable()
                    .scaledToFit()
                
                Spacer()
            }
            .padding()
            
            
            Spacer()
            Button {
                
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if slot1 == slot2 && slot2 == slot3 {
                    score += 25
                } else {
                    score -= 5
                }
                
                
                
            } label: {
                Text("Spin")
                    .font(.body)
                    .fontWeight(.medium)
                    .frame(width: 90, height: 30)
                    .background(Color(red: 1, green: 0.0, blue: 0.0, opacity: 1))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
