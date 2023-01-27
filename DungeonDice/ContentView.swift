//
//  ContentView.swift
//  DungeonDice
//
//  Created by Thomas Radford on 26/01/2023.
//


import SwiftUI


struct ContentView: View {
    enum Dice: Int, CaseIterable{
        case four = 4
        case six = 6
        case eight = 8
        case ten = 10
        case twelve = 12
        case twenty = 20
        case hundred = 100
        
        func roll() -> Int {
            return Int.random(in: 1...self.rawValue)
        }
    }
    @State private var resultMessage = ""
    
    @State private var columns = [
        GridItem(.adaptive(minimum: 102), spacing: 5)
    ]
    
    var body: some View {
        VStack {
            Text("Dungeon Dice")
                .foregroundColor(.red)
                .fontWeight(.black)
                .font(.largeTitle)
            Spacer()
            Text(resultMessage)
                .font(.largeTitle)
                .fontWeight(.medium)
                .frame(height: 150)
                .multilineTextAlignment(.center)
            Spacer()
            Group {
                
                LazyVGrid(columns: columns, spacing:20 ) {
                    ForEach(Dice.allCases, id: \.self) { die in
                        Button("\(die.rawValue)-sided"){
                            resultMessage = "You rolled a \(die.roll()) on a \(die.rawValue) sided dice"
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.red)
                }
            }
        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

