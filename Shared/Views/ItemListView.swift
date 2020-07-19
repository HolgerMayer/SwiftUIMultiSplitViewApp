//
//  ItemListView.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import SwiftUI

struct ItemListView: View {
    var body: some View {
        List {
            Text("Elephant")
            Text("Mouse")
            Text("Duck")
            Text("Deer")
        }    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView()
    }
}
