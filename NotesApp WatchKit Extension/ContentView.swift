//
//  ContentView.swift
//  NotesApp WatchKit Extension
//
//  Created by Ian Pedraza on 31/01/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack (spacing: 10.0) {
            NavigationLink(
                Strings.NEW_NOTE,
                destination: AddNoteView()
            )
            .foregroundColor(.blue)
            
            ListNotesView()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
