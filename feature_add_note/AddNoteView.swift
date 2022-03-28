//
//  AddNote.swift
//  NotesApp WatchKit Extension
//
//  Created by Ian Pedraza on 25/03/22.
//

import SwiftUI

struct AddNoteView: View {
    
    @ObservedObject var viewModel = AddNoteViewModel()
    
    @Environment(\.presentationMode) var presentation
    @State var text = Strings.EMPTY_STRING
    
    var body: some View {
        
        VStack {
            TextField(Strings.NOTE, text: $text)
            
            Button(Strings.ADD_NOTE) {
                if viewModel.addNote(text: text) {
                    presentation.wrappedValue.dismiss()
                }
            }
        }.navigationTitle(Strings.NEW_NOTE)
        
    }

    
}

struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteView()
    }
}
