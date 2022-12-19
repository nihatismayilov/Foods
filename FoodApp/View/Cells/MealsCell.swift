//
//  MealsCell.swift
//  FoodApp
//
//  Created by İlkin İsmayilov on 19.12.22.
//

import UIKit

class MealsCell: UITableViewCell {
    @IBOutlet weak var mealsImage: UIImageView!
    
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
