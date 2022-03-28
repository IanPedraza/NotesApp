//
//  ListNotesView.swift
//  NotesApp WatchKit Extension
//
//  Created by Ian Pedraza on 27/03/22.
//

import SwiftUI

struct ListNotesView: View {
    
    @ObservedObject var viewModel = ListNotesViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.notes, id: \.self) { note in
               NoteItem(note: note)
            }
            .onDelete (perform: viewModel.delete)
        }
        .onAppear (perform: viewModel.fetchData)
    }
    
}

struct ListNotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListNotesView()
    }
}
