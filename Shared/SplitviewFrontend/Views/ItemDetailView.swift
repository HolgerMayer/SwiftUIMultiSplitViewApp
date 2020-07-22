//
//  ItemDetailView.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import SwiftUI

struct ItemDetailView: View {
    @ObservedObject var model: SplitviewModel
    var item  : CategoryItem?
    
 
    
    var body: some View {
 
        #if os(iOS)
         return DetailedReadOnlyContentView(model:model,item:item)
         .toolbar {
            ToolbarItem(placement:.navigationBarTrailing) {
                Button(action:editAction){
                    Label("Edit",systemImage:"square.and.pencil")
                }
            }
         }
        #else
         return DetailedReadOnlyContentView(model:model,item:item)
        #endif
    }
    
    func editAction() {
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
