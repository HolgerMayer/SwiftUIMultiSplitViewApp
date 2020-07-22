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
    
    var loc : PointOfInterest? {
        return item as? PointOfInterest
    }
    
    var body: some View {
        ScrollView {
            if item != nil {
                Text("Detail View of \(item!.name)" )
                    .foregroundColor(model.userData.color)
            } else {
                Text("Please select item")
            }
            
            if loc != nil {
                Text("\(loc!.description)" )
                    .padding()
                
            }
            
        }.frame(minWidth: 300, idealWidth: 400, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 100, idealHeight: 500, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

        .navigationBarTitle(item?.name ?? "Please select an item")
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = SplitviewModel()
        return ItemDetailView(model:model,item: model.items[0])
            .environmentObject(model)
    }
}
