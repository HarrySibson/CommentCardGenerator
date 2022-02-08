//
//  ContentView.swift
//  CommentCardGenerator
//
//  Created by Sibson, Harry (AGDF) on 08/02/2022.
//

import SwiftUI
struct ContentView: View {
    @State private var feelingBool = false
    @State private var feelingString = "sad"
    @State private var areaStrengthBool = false
    @State private var areaStrengthString = "EWs"
    @State private var areaWeaknessString = "classwork"
    var body: some View {
        Form {
            VStack {
                Button("Toggle - Happy/Sad",action:{
                    toggleFeeling()
                })
            }
            VStack{
                Button("Toggle - Area of Strength", action:{
                    toggleStrength()
                })
            }
            VStack{
                Text("In this subject I am feeling \(feelingString); a strong area is \(areaStrengthString) and an area of weakness is \(areaWeaknessString)")
                    .padding()
            }
        }

    }
    
    func toggleFeeling() {
        feelingBool.toggle()
        if feelingBool == true{
            feelingString = "happy"
        } else{
            feelingString = "sad"
        }
    }
    func toggleStrength() {
        areaStrengthBool.toggle()
        if areaStrengthBool == true{
            areaStrengthString = "classwork"
            areaWeaknessString = "EWs"
        } else{
            areaStrengthString = "EWs"
            areaWeaknessString = "classwork"
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
