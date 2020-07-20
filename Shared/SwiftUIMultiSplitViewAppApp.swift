//
//  SwiftUIMultiSplitViewAppApp.swift
//  Shared
//
//  Created by Holger Mayer on 19.07.20.
//

import SwiftUI

@main
struct SwiftUIMultiSplitViewAppApp: App {
    
    
    @StateObject private var model = LocationModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView(model:model)
        }
    }
}
