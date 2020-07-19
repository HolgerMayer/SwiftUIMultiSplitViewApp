//
//  Model.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import Combine
import Foundation


class Model : ObservableObject {
    
    @Published var mainCategory = [Category]()
    @Published var items = [Item]()
    
    init() {
        self.setup()
    }
    

}



extension Model {
     func setup()  {
        
        let subCategory1 = Category(name: "Category 1.1")
        let subCategory2 = Category(name: "Category 1.2")
        let subCategory3 = Category(name: "Category 1.3")

        let firstCategory = Category(name: "First Category", children: [subCategory1,subCategory2,subCategory3])
        mainCategory.append(firstCategory)
        
        items.append(Item(name:"Item 1", category : subCategory1))
        items.append(Item(name:"Item 2", category : subCategory1))
        items.append(Item(name:"Item 3", category : subCategory2))
        items.append(Item(name:"Item 4", category : subCategory3))
        
        let subCategory4 = Category(name: "Category 2.1")
        let subCategory5 = Category(name: "Category 2.2")
        let subCategory6 = Category(name: "Category 2.3")

        let secondCategory = Category(name: "Second Category", children: [subCategory4,subCategory5,subCategory6])
        mainCategory.append(secondCategory)
        
        items.append(Item(name:"Item 5", category : subCategory4))
        items.append(Item(name:"Item 6", category : subCategory5))
        items.append(Item(name:"Item 7", category : subCategory6))
        items.append(Item(name:"Item 8", category : subCategory6))
    }
}
