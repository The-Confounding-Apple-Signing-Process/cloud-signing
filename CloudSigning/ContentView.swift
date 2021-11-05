//
//  ContentView.swift
//  CloudSigning
//
//  Created by Uday Pandey on 05/11/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, Apple Cloud Signing!")
            .bold()
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
