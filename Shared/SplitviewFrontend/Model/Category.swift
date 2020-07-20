//
//  Category.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import Foundation


class Category : Identifiable {
    var id = UUID()
    var name : String
    var iconName : String = "circle.fill"
    var children : [Category]?
    
    
    init(name: String, iconName : String,  children : [Category]?) {
        self.name = name
        self.iconName = iconName
        self.children = children
    }
    
    init(name: String, children : [Category]?) {
        self.name = name
        self.children = children
    }
}

    

extension Category : Equatable {
    public static func ==(lhs: Category, rhs: Category) -> Bool {
        return lhs.id == rhs.id
    }
}

extension Category : Hashable {

    public func hash(into hasher: inout Hasher) {
           hasher.combine(name)
      }
    
}
