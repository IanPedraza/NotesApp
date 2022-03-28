//
//  Note.swift
//  NotesApp WatchKit Extension
//
//  Created by Ian Pedraza on 24/03/22.
//

import SwiftUI

struct Note: Identifiable, Hashable, Codable {
    var id: UUID
    var content: String
    var creationDate: String
    
    init(content: String) {
        self.id = UUID()
        self.content = content
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
        
        self.creationDate = dateFormatter.string(from: Date())
    }
    
}
