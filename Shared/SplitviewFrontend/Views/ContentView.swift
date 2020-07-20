//
//  ContentView.swift
//  Shared
//
//  Created by Holger Mayer on 19.07.20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model: SplitviewModel
 
    var splitview: some View {
            
        NavigationView {

            SideBarView(model:model)
            ItemListView(model:model)
            ItemDetailView()
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
    #endif
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(model:SplitviewModel())
    }
}
