//
//  DetailedEditView.swift
//  SwiftUIMultiSplitViewApp
//
//  Created by Holger Mayer on 22.07.20.
//

import SwiftUI

struct DetailedEditView: View {
    @ObservedObject var model: SplitviewModel
    var item  : CategoryItem?
    
    var loc : PointOfInterest? {
        return item as? PointOfInterest
    }

    var body: some View {
        VStack {
        if item != nil {
            Text("Editing Detail View of \(item!.name)" )
                .foregroundColor(model.userData.color)
        } else {
            Text("Please select item")
        }
 
    }.frame(minWidth: 300, idealWidth: 400, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 100, idealHeight: 500, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    .navigationBarTitle(item?.name ?? "Please select an item")
        
    }
}

struct DetailedEditView_Previews: PreviewProvider {
    static var previews: some View {
        let model = SplitviewModel()
        return DetailedEditView(model:model,item: model.items[0])
            .environmentObject(model)
    }
}
