//
//  Model.swift
//  iOS
//
//  Created by Holger Mayer on 19.07.20.
//

import Combine
import Foundation


class SplitviewModel : ObservableObject {
    
    @Published var mainCategory = [Category]()
    @Published var items = [CategoryItem]()
    
    init() {
        self.setup()
    }
    
     func setup()  {
        
        let subCategory1 = Category(name: "Category 1.1", children : nil)
        let subCategory2 = Category(name: "Category 1.2", children : nil)
        let subCategory3 = Category(name: "Category 1.3", children : nil)

        let firstCategory = Category(name: "First Category", children: [subCategory1,subCategory2,subCategory3])
        mainCategory.append(firstCategory)
        
        items.append(CategoryItem(name:"Item 1", category : subCategory1))
        items.append(CategoryItem(name:"Item 2", category : subCategory1))
        items.append(CategoryItem(name:"Item 3", category : subCategory2))
        items.append(CategoryItem(name:"Item 4", category : subCategory3))
        
        let subCategory4 = Category(name: "Category 2.1", children : nil)
        let subCategory5 = Category(name: "Category 2.2", children : nil)
        let subCategory6 = Category(name: "Category 2.3", children : nil)

        let secondCategory = Category(name: "Second Category", children: [subCategory4,subCategory5,subCategory6])
        mainCategory.append(secondCategory)
        
        items.append(CategoryItem(name:"Item 5", category : subCategory4))
        items.append(CategoryItem(name:"Item 6", category : subCategory5))
        items.append(CategoryItem(name:"Item 7", category : subCategory6))
        items.append(CategoryItem(name:"Item 8", category : subCategory6))
    }
}
