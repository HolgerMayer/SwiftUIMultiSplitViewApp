//
//  ItemListView.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import SwiftUI

struct ItemListView: View {
    @ObservedObject var model: SplitviewModel
    var category : Category?
    
    var itemsPerCategory : [CategoryItem] {
        guard let category = category else {
            return model.items
        }
        
        return model.items.filter({$0.category == category})
    }
    
    var body: some View {
        List (itemsPerCategory) { item in
            NavigationLink(
                destination: ItemDetailView(model:model,item: item)){
                Text(item.name)
            }
            
        }.navigationBarTitle("Items")
    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        let model = SplitviewModel()

        return ItemListView(model:SplitviewModel(),category:model.mainCategory[0].children![0] )
    }
}
