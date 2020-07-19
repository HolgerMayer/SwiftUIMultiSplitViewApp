//
//  SideBarView.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import SwiftUI

struct SideBarView: View {
    @EnvironmentObject private var model: Model
    
    var body: some View {
        List (model.mainCategory, children: \.children) { category in
            NavigationLink(
                destination: ItemListView(category: category)){
                Text(category.name)
            }
        }
        .navigationBarTitle("SideBar")
        .listStyle(SidebarListStyle())
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView().environmentObject(Model())
    }
}
