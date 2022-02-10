//
//  ContentView.swift
//  CommentCardGenerator
//
//  Created by Sibson, Harry (AGDF) on 08/02/2022.
//

import SwiftUI
struct ContentView: View {
    
    var happinessString: String {
        if happiness < 3 {
            return "unhappy"
        } else if happiness < 5 {
            return "okay"
        } else if happiness < 8 {
            return "happy"
        }else{
            return("very happy")
        }
    }
    
    var effortString: String {
        if effort < 3 {
            return "barely any effort"
        } else if effort < 7 {
            return "a reasonable amount of effort"
        } else{
            return "too much effort"
        }
    }
    
    @State private var effort: Double = 1.0
    @State private var happiness: Double = 1.0
    @State private var areaStrengthArray = ["EWs","classwork","exam style questions"]
    @State private var areaWeaknessArray = ["EWs","classwork","exam style questions"]
    @State private var subject = ["math","french","geograpghy"]
    @State private var areaStrengthI = 0
    @State private var areaWeaknessI = 0
    @State private var subjectI = 0
    
    
    
    var body: some View {
        Form {
            HStack {
                Text("Happiness Level:")
                Slider(value: $happiness, in: 1...10)
            }
            HStack{
                Text("Effort level:")
                Slider(value: $effort, in: 1...10)
            }
            VStack {
                Button("Toggle - Subject", action:{
                    toggleSubject()
                })
            }
            VStack{
                Button("Toggle - Area of Strength", action:{
                    toggleStrength()
                })
            }
            VStack{
                Button("Toggle - Area of Weakness", action:{
                    toggleWeakness()
                })
            }
            VStack{
                Text("In \(subject[subjectI]) I am \(happinessString), exerting what I feel is \(effortString) on it. A strong area of mine is \(areaStrengthArray[areaStrengthI]) but an area of weakness is \(areaWeaknessArray[areaWeaknessI]).")
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
    
    func toggleSubject() {
        if subjectI == subject.count-1{
            subjectI = 0
        } else {
            subjectI += 1
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
