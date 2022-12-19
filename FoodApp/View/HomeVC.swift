//
//  ViewController.swift
//  FoodApp
//
//  Created by İlkin İsmayilov on 14.12.22.
//

import UIKit
import Kingfisher

class HomeVC: UIViewController {
    
    // MARK: - Variables
    private let baseForImage = "http://kasimadalan.pe.hu/foods/images/"
     
    // MARK: - Functions
    
    // MARK: - Parent Delegate
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    // MARK: - UI Components
    
    @IBOutlet weak var foodsTableView: UITableView!
    
    @IBOutlet weak var mealsCollectionView: UICollectionView!
    @IBOutlet weak var drinksCollectionView: UICollectionView!
    @IBOutlet weak var dessertsCollectionView: UICollectionView!
    @IBOutlet weak var mealsViewCell: UITableViewCell!
    
    @IBOutlet weak var drinksViewCell
    : UITableViewCell!
    
    @IBOutlet weak var dessertsViewCell: UITableViewCell!
}

// MARK: - TableView
extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            return UITableViewCell()
        case 1:
            return UITableViewCell()
        case 2:
            return UITableViewCell()
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Meals"
        case 1:
            return "Drinks"
        case 2:
            return "Desserts"
        default:
            return ""
        }
    }
}
