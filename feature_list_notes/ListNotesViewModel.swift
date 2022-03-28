//
//  ListNotesViewModel.swift
//  NotesApp WatchKit Extension
//
//  Created by Ian Pedraza on 27/03/22.
//

import SwiftUI

class ListNotesViewModel: ObservableObject {
    
    private let TAG = "ListNotesViewModel"
    
    private let notesManager = NotesManager.instance
    
    @Published var notes = [Note]()
    
    func delete(offsets: IndexSet) {
        withAnimation {
            notes.remove(atOffsets: offsets)
            notesManager.save(notes: notes)
        }
    }
    
    func fetchData() {
        notes = notesManager.getNotes()
    }
    
}
