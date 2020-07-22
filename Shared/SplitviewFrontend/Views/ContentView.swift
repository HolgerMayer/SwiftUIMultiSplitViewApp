//
//  ContentView.swift
//  Shared
//
//  Created by Holger Mayer on 19.07.20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model: SplitviewModel
    #if os(macOS)
    @State var isEditing : Bool = false
    #endif
    var splitview: some View {
            
        NavigationView {

            SideBarView(model:model)
            ItemListView(model:model)
            ItemDetailView(model:model)
        }
 
    }
    
    var body: some View {
 
            #if os(macOS)
                return splitview
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        Button(action: toggleSidebar, label: {
                            Image(systemName: "sidebar.left")
                        })
                    }
                    ToolbarItem(placement:.confirmationAction) {
                        if isEditing {
                            Button(action: toggleEdit, label: {
                                Text("Save")
                            })
                        }
                    }
                    ToolbarItem(placement: .cancellationAction) {
                        if isEditing {
                            Button(action: toggleEdit, label: {
                                Text("Cancel")
                            })
                        } else {
                            Button(action: toggleEdit, label: {
                                Text("Edit")
                             })

                        }
                    }
                }
                .frame(minWidth: 700, maxWidth: .infinity ,minHeight: 300, maxHeight: .infinity)
            #else
            return splitview
            #endif
    }
    #if os(macOS)
    func toggleSidebar() {
            NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
    }
    func toggleEdit() {
        isEditing = !isEditing
        print("ToogleEdit")
    }
   #endif
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model:SplitviewModel())
    }
}
