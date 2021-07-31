//
//  ContentView.swift
//  minorApp
//
//  Created by SEAN BLAKE on 7/31/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isPressed = false
    
    var body: some View {
        NavigationView  {
            Button("Show Modal") {
                self.isPressed = true
            }.sheet(isPresented: $isPressed) {
                ModalView()
            }.navigationBarTitle("Whata Gwaan")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
