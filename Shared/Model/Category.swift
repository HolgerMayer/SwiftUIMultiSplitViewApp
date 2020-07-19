//
//  Category.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import Foundation


struct Category : Identifiable {
    var id = UUID()
    var name : String
    var children = [Category]()
    
}
