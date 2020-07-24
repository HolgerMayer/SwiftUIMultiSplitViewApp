//
//  SideBarView.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import SwiftUI

struct SideBarView: View {
    @ObservedObject var model: SplitviewModel
    
    var body: some View {
        List (model.mainCategory, children: \.children) { category in
            NavigationLink(
                destination: ItemListView(model:model,category: category)){
                SidebarItemRow(category:category)
            }
        }
        .navigationBarTitle("SideBar")
        .listStyle(SidebarListStyle())
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
 
        SideBarView(model: SplitviewModel())
    }
}
