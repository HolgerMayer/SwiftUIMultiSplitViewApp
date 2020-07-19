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
    var children : [Category]?
    
}

extension Category : Equatable {
    public static func ==(lhs: Category, rhs: Category) -> Bool {
        return lhs.name == rhs.name
    }
}

extension Category : Hashable {

    public func hash(into hasher: inout Hasher) {
           hasher.combine(name)
      }
    
}
