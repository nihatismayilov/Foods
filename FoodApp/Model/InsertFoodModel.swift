//
//  InsertFood.swift
//  FoodApp
//
//  Created by İlkin İsmayilov on 17.12.22.
//

import Foundation

class InsertFoodParam {
    let name:String?
    let image:String?
    let price:Int?
    let category:String?
    let orderAmount:Int?
    let userName:String?
    
    init(name:String,image:String,price:Int,category:String,orderAmount:Int,userName:String){
        self.name = name
        self.image = image
        self.price = price
        self.category = category
        self.orderAmount = orderAmount
        self.userName = userName
    }
}
