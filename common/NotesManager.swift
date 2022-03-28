//
//  Utils.swift
//  NotesApp WatchKit Extension
//
//  Created by Ian Pedraza on 27/03/22.
//

import Foundation

class NotesManager {
    
    // MARK: - Singleton declaration
    
    static let instance = NotesManager()
    
    private init() { }
    
    // MARK: - Class body
    
    private let key: String = "NotesApp"
    private let TAG: String = "NotesManager"
    
    func saveNote(note: Note) {
        var notes = getNotes()
        notes.append(note)
        save(notes: notes)
    }
    
    func removeNote(offsets: IndexSet) {
        var notes = getNotes()
        notes.remove(atOffsets: offsets)
        save(notes: notes)
    }
    
    func save(notes: [Note]) {
        let data = notes.map{ try? JSONEncoder().encode($0) }
        UserDefaults.standard.setValue(data, forKey: key)
    }
    
    func getNotes() -> [Note] {
        guard let savedData = UserDefaults.standard.array(forKey: key) as? [Data] else {
            print("\(TAG):getNotes:Error:Couldn't retrieve data")
            return []
        }
        
        let notes = savedData.map { try! JSONDecoder().decode(Note.self, from: $0) }
        
        return notes
    }
    
}
