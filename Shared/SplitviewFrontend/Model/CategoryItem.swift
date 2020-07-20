//
//  Item.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import Foundation


class CategoryItem : Identifiable {
    var id = UUID()
    var name : String 
    var category : Category
    
    init(name : String, category:Category){
    
        self.name = name
        self.category = category
    }
    
}
