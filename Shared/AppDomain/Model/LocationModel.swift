//
//  LocationModel.swift
//  SwiftUIMultiSplitViewApp
//
//  Created by Holger Mayer on 20.07.20.
//

import Foundation

class LocationModel : SplitviewModel {
 
    
    override init() {
        super.init()
    }
    
    override func setup() {
        let subCategory1 = Category(name: "Arizona", iconName:"sun.min",children : nil)
        let subCategory2 = Category(name: "California", children : nil)
        let subCategory3 = Category(name: "Utah", children : nil)

        let firstCategory = Category(name: "Parks", children: [subCategory1,subCategory2,subCategory3])
        mainCategory.append(firstCategory)

        items.append(PointOfInterest(name:"Grand Canyon", category : subCategory1))
        items.append(PointOfInterest(name:"Sequoia", category : subCategory2))
        items.append(PointOfInterest(name:"Kings Canyon", category : subCategory2))
        items.append(PointOfInterest(name:"Zion", category : subCategory3))
        
        let subCategory4 = Category(name: "Arizona", children : nil)
        let subCategory5 = Category(name: "California", children : nil)
        let subCategory6 = Category(name: "Utah", children : nil)

        let secondCategory = Category(name: "Cities", children: [subCategory4,subCategory5,subCategory6])
        mainCategory.append(secondCategory)
        
        items.append(PointOfInterest(name:"Phoenix", category : subCategory4))
        items.append(PointOfInterest(name:"San Francisco", category : subCategory5))
        items.append(PointOfInterest(name:"Provo", category : subCategory6))
        items.append(PointOfInterest(name:"St. George", category : subCategory6))
    }
}
