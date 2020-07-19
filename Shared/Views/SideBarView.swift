//
//  SideBarView.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        List {
            Text("Elephant")
            Text("Mouse")
            Text("Duck")
            Text("Deer")
        }
        
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}
