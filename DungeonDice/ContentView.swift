//
//  ContentView.swift
//  DungeonDice
//
//  Created by Thomas Radford on 26/01/2023.
//
import SwiftUI

struct ContentView: View {
    @State private var resultMessage = ""
    
    var body: some View {
        VStack {
            
            titleView
            Spacer()
            resultMessageView
            Spacer()
            Group {
                ButtonLayout(resultMessage: $resultMessage)
            }
        }
        .padding()
    }
}

extension ContentView {
    private var resultMessageView: some View {
        Text(resultMessage)
            .font(.largeTitle)
            .fontWeight(.medium)
            .frame(height: 150)
            .multilineTextAlignment(.center)
    }
    
    private var titleView: some View {
        Text("Dungeon Dice")
            .foregroundColor(.red)
            .fontWeight(.black)
            .font(.largeTitle)
    }
    
    
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

