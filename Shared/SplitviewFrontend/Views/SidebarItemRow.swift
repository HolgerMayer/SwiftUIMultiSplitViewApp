//
//  SidebarItemRow.swift
//  SwiftUIMultiSplitViewApp
//
//  Created by Holger Mayer on 23.07.20.
//

import SwiftUI

struct SidebarItemRow: View {
    @ObservedObject var category : Category
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            if isEditing {
                TextField("Test", text: $category.name).onTapGesture(count: 2, perform: {self.isEditing = !self.isEditing})
            } else {
                Label(category.name, systemImage:category.iconName).onTapGesture(count: 2, perform: {self.isEditing = !self.isEditing})
            }
        }
    }
}

struct SidebarItemRow_Previews: PreviewProvider {
    static var previews: some View {
        SidebarItemRow(category:Category(name: "Hugo", children: nil))
    }
}
