//
//  ContentView.swift
//  Africa
//
//  Created by Jesús  Fortuna on 5/6/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Content")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
