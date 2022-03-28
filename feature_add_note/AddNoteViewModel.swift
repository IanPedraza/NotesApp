//
//  AddNoteViewModel.swift
//  NotesApp WatchKit Extension
//
//  Created by Ian Pedraza on 25/03/22.
//

import Foundation

class AddNoteViewModel: ObservableObject {
    
    private let TAG = "AddNoteViewModel"
    
    private let notesManager = NotesManager.instance
    
    func addNote(text: String) -> Bool {
        guard text.isEmpty == false else {
            return false
        }
        
        let note = Note(content: text)
        
        notesManager.saveNote(note: note)
        
        return true
    }
    
}
