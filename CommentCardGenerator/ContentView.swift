//
//  ContentView.swift
//  CommentCardGenerator
//
//  Created by Sibson, Harry (AGDF) on 08/02/2022.
//

import SwiftUI
struct ContentView: View {
    @State private var feelingBool = false
    var happinessString: String {
        if happiness < 3 {
            return "unhappy"
        } else if happiness < 5 {
            return "okay"
        } else if happiness < 8 {
            return "happy"
        }else{
            return("very Happy")
        }
    }
    @State private var happiness: Double = 1.0
    @State private var areaStrengthArray = ["EWs","classwork","exam style questions"]
    @State private var areaWeaknessArray = ["EWs","classwork","exam style questions"]
    @State private var areaStrengthI = 0
    @State private var areaWeaknessI = 0
    
    var body: some View {
        Form {
            VStack {
                Text("Happiness Level")
                Slider(value: $happiness, in: 1...10)
                Button("Toggle - Area of Strength", action:{
                    toggleStrength()
                })
                Button("Toggle - Area of Weakness", action:{
                    toggleWeakness()
                })
            }
            VStack{
                Text("In this subject I am \(happinessString); a strong area is \(areaStrengthArray[areaStrengthI]) but an area of weakness is \(areaWeaknessArray[areaWeaknessI])")
                    .padding()
            }
        }

    }
    
    func toggleStrength() {
        if areaStrengthI == areaStrengthArray.count-1{
            areaStrengthI = 0
        } else {
            areaStrengthI += 1
        }
    }
    func toggleWeakness() {
        if areaWeaknessI == areaWeaknessArray.count-1{
            areaWeaknessI = 0
        } else {
            areaWeaknessI += 1
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
