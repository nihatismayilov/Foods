//
//  NetworkManager.swift
//  FoodApp
//
//  Created by İlkin İsmayilov on 17.12.22.
//

import Foundation
import UIKit
import Alamofire

class NetworkManager{
    static let shared = NetworkManager()
    private init() {}
}

extension NetworkManager{
    
    func getAllFoods(completion: @escaping (Swift.Result<AllFoods,Error>)-> Void){
        let url = "http://kasimadalan.pe.hu/foods/getAllFoods.php"
        AF.request(url, method: .get).responseDecodable(of: AllFoods.self) { response in
            guard let _ = response.error else {
                print(response.error)
                completion(.failure(response.error as! Error))
                return
            }
            if let value = response.value {
                completion(.success(value))
            }
        }
    }
}
extension NetworkManager{
    func insertFood(name:String,image:String,price:Int,category:String,orderAmount:Int,completion: @escaping (Swift.Result<CRUDResponse,Error>)-> Void){
        var params:Parameters = ["name":name,"image":image,"price":price,"category":category,"orderAmount":orderAmount]
        params["userName"] = ["ilkin"]
        let url = "http://kasimadalan.pe.hu/foods/insertFood.php"
        AF.request(url, method: .post, parameters: params).responseDecodable(of: CRUDResponse.self){ response in
            guard let _ = response.error else {
                print(response.error)
                completion(.failure(response.error as! Error))
                return
            }
            if let value = response.value {
                completion(.success(value))
            }
        }
    }
}

extension NetworkManager{
    func getFoodFromCart(cartId:Int, completion: @escaping (Swift.Result<CRUDResponse,Error>)-> Void){
        var params:Parameters = ["cartId":cartId]
        params["userName"] = ["ilkin"]
        let url = "http://kasimadalan.pe.hu/foods/getFoodsCart.php"
        AF.request(url, method: .post, parameters: params).responseDecodable(of: CRUDResponse.self){ response in
            guard let _ = response.error else {
                print(response.error)
                completion(.failure(response.error as! Error))
                return
            }
            if let value = response.value {
                completion(.success(value))
            }
        }
    }
}
    extension NetworkManager {
        func deleteFood(id:Int,completion: @escaping (Swift.Result<CRUDResponse,Error>)-> Void) {
            var params:Parameters = ["id":id]
            params["userName"] = ["ilkin"]
            let url = "http://kasimadalan.pe.hu/foods/deleteFoodsCart.php"
            
            AF.request(url,
                       method: .post,
                       parameters: params)
            .responseDecodable(of: CRUDResponse.self) { response in
                guard let _ = response.error else {
                    print(response.error)
                    completion(.failure(response.error as! Error))
                    return
                }
                
                if let value = response.value {
                    completion(.success(value))
                }
            }
        }
    }

