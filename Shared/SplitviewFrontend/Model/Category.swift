//
//  Category.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import Foundation


class Category : Identifiable, ObservableObject {
    var id = UUID()
    @Published var name : String
    @Published var iconName : String = "circle.fill"
    @Published var children : [Category]?
    
    
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
