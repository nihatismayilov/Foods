//
//  Router.swift
//  FoodApp
//
//  Created by İlkin İsmayilov on 17.12.22.
//

import Foundation
import UIKit

class Router{
    static let shared = Router()
    private init() {}
    
    func getViewController(id:String, storyboard:String = "Main") -> UIViewController{
        let storyBoard = UIStoryboard.init(name: storyboard, bundle: nil)
        let controller = storyBoard.instantiateViewController(withIdentifier: id)
        controller.modalTransitionStyle = .crossDissolve
        controller.modalPresentationStyle = .fullScreen
        return controller
    }
}

extension Router {
    func presentDetailVC(completion: @escaping (DetailVC) -> Void){
        let controller = getViewController(id: String(describing: DetailVC.self)) as! DetailVC
        completion(controller)
    }
}

extension Router {
    func presentSearchVC(completion: @escaping (SearchVC) -> Void){
        let controller = getViewController(id: String(describing: SearchVC.self)) as! SearchVC
        completion(controller)
        
    }
}
