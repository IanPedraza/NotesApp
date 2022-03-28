//
//  DetailNote.swift
//  NotesApp WatchKit Extension
//
//  Created by Ian Pedraza on 27/03/22.
//

import SwiftUI

struct DetailNote: View {
    
    let note: Note
    
    var body: some View {
        VStack(spacing: 10.0) {
            Text(note.content)
            
            Text(note.creationDate)
                .multilineTextAlignment(.center)
                .font(.system(size: 12.0))
                .foregroundColor(.gray)
        }
    }
    
}

struct DetailNote_Previews: PreviewProvider {
    static var previews: some View {
        DetailNote(note: DummyData.DUMMY_NOTE)
    }
}
