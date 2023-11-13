//
//  ContentView.swift
//  Three Letter Word
//
//  Created by chase Hashiguchi on 11/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var letter = ""
    @State private var counter = 0
    @State private var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var body: some View {
        VStack {
            Text("Three Letter Word")
                .font(.title).bold()
            Text("Tap the gray box to change the letter")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomLetterBox: View {
    let color : Color
    let text : String
    var body: some View {
        ZStack {
            color
            Text(text)
                .font(.system(size: 90))
                .fontWeight(.heavy)
        }
        .frame(width: 120, height: 120, alignment: .center)
    }
}
