//
//  ItemDetailView.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import SwiftUI

struct ItemDetailView: View {
    
    var item  : Item?
    
    var body: some View {
        ScrollView {
            VStack{
                if item != nil {
                    Text("Detail View of \(item!.name)" )
                } else {
                    Text("Please select item")
                }
            }
        }
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = Model()
        return ItemDetailView(item: model.items[0])
            .environmentObject(model)
    }
}
