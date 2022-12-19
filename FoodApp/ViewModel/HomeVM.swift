//
//  HomeVM.swift
//  FoodApp
//
//  Created by İlkin İsmayilov on 14.12.22.
//

import Foundation

class HomeVM {
    
    
    
    func getAllFoods() {
        NetworkManager.shared.getAllFoods { result in
            switch result {
            case .success(let response):
                print(response)
            case .failure(let err):
                print(err)
            }
        }
    }
}
