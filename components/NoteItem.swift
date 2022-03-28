//
//  NoteItem.swift
//  NotesApp WatchKit Extension
//
//  Created by Ian Pedraza on 27/03/22.
//

import SwiftUI

struct NoteItem: View {
    let note: Note
    
    var body: some View {
        
        NavigationLink(destination: DetailNote(note: note)) {
            Text(note.content)
                .foregroundColor(.white)
                .lineLimit(1)
        }
        
    }
}

struct NoteItem_Previews: PreviewProvider {
    static var previews: some View {
        NoteItem(note: DummyData.DUMMY_NOTE)
    }
}
