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
    var body: some View {
        Form {
            VStack {
                Button("Toggle - Happy/Sad",action:{
                    toggleFeeling()
                })
            }
            VStack{
                Text("In this subject I am feeling \(feelingString), a strong area is")
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
