//
//  ItemListView.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import SwiftUI

struct ItemListView: View {
    @EnvironmentObject private var model: Model
    var category : Category?
    
    var itemsPerCategory : [Item] {
        guard let category = category else {
            return model.items
        }
        
        return model.items.filter({$0.category == category})
    }
    
    var body: some View {
        List (itemsPerCategory) { item in
            NavigationLink(
                destination: ItemDetailView(item: item)){
                Text(item.name)
            }
            
        }.navigationBarTitle("Items")
    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        let model = Model()

        return ItemListView(category:model.mainCategory[0].children![0] ).environmentObject(model)
    }
}
