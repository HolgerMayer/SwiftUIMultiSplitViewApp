//
//  ItemDetailView.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import SwiftUI

struct ItemDetailView: View {
    @State private var isEditing : Bool = false
    @ObservedObject var model: SplitviewModel
    var item  : CategoryItem?
    
    var body: some View {
        #if os(iOS)
        return VStack {
            if isEditing {
                 DetailedEditView(model:model, item:item).toolbar {
                    ToolbarItem(placement:.navigationBarTrailing) {
                        Button(action:editAction){
                            Label("Save",systemImage:"message")
                        }
                    }
                }
            
            } else {
                DetailedReadOnlyContentView(model:model,item:item) .toolbar {
                    ToolbarItem(placement:.navigationBarTrailing) {
                        Button(action:editAction){
                            Label("Edit",systemImage:"square.and.pencil")
                        }
                    }
                }
            }
        }
        #else
        return VStack {
            if isEditing {
                DetailedEditView(model:model,item:item)
            } else {
                DetailedReadOnlyContentView(model:model,item:item)
            }
        }
        #endif
    }
    
    func editAction() {
        isEditing = !isEditing
        print("edit action pressed")
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = SplitviewModel()
        return ItemDetailView(model:model,item: model.items[0])
            .environmentObject(model)
    }
}

