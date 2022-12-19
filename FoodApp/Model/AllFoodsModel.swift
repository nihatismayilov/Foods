//
//  Foods.swift
//  FoodApp
//
//  Created by İlkin İsmayilov on 14.12.22.
//

import Foundation

class AllFoods: Codable {
    let foods_cart: [AllFoodsInfo]?
    
    init(foodsCart: [AllFoodsInfo]) {
        self.foods_cart = foodsCart
    }
}

class AllFoodsInfo:Codable {
    var id:Int?
    var name:String?
    var image:String?
    var price:Int?
    var category:String?
    
    init(id:Int,name:String,image:String,price:Int,category:String){
        self.id = id
        self.name = name
        self.image = image
        self.price = price
        self.category = category
    }
}
