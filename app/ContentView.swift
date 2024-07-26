//
//  ContentView.swift
//  app
//
//  Created by Hannah Rappaport on 7/24/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
                .padding()
            
            TextField("", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .padding()
            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.pink)
            .padding()
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
