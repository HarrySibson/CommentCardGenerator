//
//  ContentView.swift
//  CommentCardGenerator
//
//  Created by Sibson, Harry (AGDF) on 08/02/2022.
//

import SwiftUI
struct ContentView: View {
    
    var feelingString: String {
        if feeling < 3 {
            return "difficult, I haven't enjoyed"
        } else if feeling < 5 {
            return "okay, I haven't hugely enjoyed"
        } else if feeling < 8 {
            return "fun, I have enjoyed"
        }else{
            return("really fun, I have really enjoyed")
        }
    }
    
    var AttainmentString: String {
        if attainment < 3 {
            if topicI == 2{
                return "not very much as I have made a lot of mistakes"
            }else{
                return "not very much"
            }
        } else if attainment < 5 {
            if topicI == 2{
                return "a little as I have made quite a few mistakes"
            }else{
                return "a little"
            }
        } else if attainment < 8 {
            if topicI == 2{
                return "a fair amount as I have made a few mistakes"
            }else{
                return "a fair amount"
            }
        } else{
            if topicI == 2{
                return "quite a lot as I haven't made many mistakes"
            }else{
                return "quite a lot"
            }
        }
    }
    var currentDate: Date = Date()
    @State private var attainment: Double = 1.0
    @State private var feeling: Double = 1.0
    @State private var topicArray = ["EWs","classwork","tests"]
    @State private var areaWeaknessArray = ["EWs","classwork","tests"]
    @State private var reasonArray = ["they are quite hard","I dont understand it sometimes","it is quite hard","I dont understand them sometimes"]
    @State private var subject = ["Math","French","Geograpghy"]
    @State private var topicI = 0
    @State private var areaWeaknessI = 0
    @State private var reasonI = 0
    @State private var subjectI = 0
    
    
    var body: some View {
        Form {
            Section(header: Text("\(getShortDate())").foregroundColor(.black)){
                
            }
            VStack {
                HStack{
                    Text("Subject Feelings:")
                    Slider(value: $feeling, in: 1...10)
                }
                HStack{
                    Text("Attainment level:")
                    Slider(value: $attainment, in: 1...10)
                }
            }
            VStack {
                Button("Toggle - Subject", action:{
                    toggleSubject()
                })
            }
            VStack{
                Button("Toggle - Attainment topic", action:{
                    toggleStrength()
                })
            }
            VStack{
                Button("Toggle - Area of Weakness", action:{
                    toggleWeakness()
                })
            }
            VStack{
                Button("Toggle - Weakness Reason", action:{
                    toggleWeaknessReason()
                })
            }
            
            VStack{
                Text("\(subject[subjectI]) has been \(feelingString) this half. In \(topicArray[topicI]) I have achieved what I feel is \(AttainmentString). An area of weakness of mine is \(areaWeaknessArray[areaWeaknessI]) because \(reasonArray[reasonI]).")
                    .padding()
            }
        }

    }
    
    func toggleStrength() {
        if topicI == topicArray.count-1{
            topicI = 0
        } else {
            topicI += 1
        }
    }
    
    func toggleWeakness() {
        if areaWeaknessI == areaWeaknessArray.count-1{
            areaWeaknessI = 0
        } else {
            areaWeaknessI += 1
        }
    }
    
    func toggleWeaknessReason() {
        if reasonI == reasonArray.count-1{
            reasonI = 0
        } else {
            reasonI += 1
        }
    }
    
    func toggleSubject() {
        if subjectI == subject.count-1{
            subjectI = 0
        } else {
            subjectI += 1
        }
    }
    
    func getShortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: currentDate)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
