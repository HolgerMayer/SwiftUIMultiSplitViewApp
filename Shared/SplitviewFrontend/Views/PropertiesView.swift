//
//  PropertiesView.swift
//  SwiftUIMultiSplitViewApp
//
//  Created by Holger Mayer on 21.07.20.
//

import SwiftUI

struct PropertiesView: View {
    @ObservedObject  var model: SplitviewModel

    var body: some View {
        
        VStack{
            TextField("Title:", text: $model.userData.appTitle)
            ColorPicker("Background color:", selection: $model.userData.color)
        }
    }
}

struct PropertiesView_Previews: PreviewProvider {
    static var previews: some View {
        let model = SplitviewModel()

        return PropertiesView(model:model)
    }
}
