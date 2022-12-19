//
//  DrinksCell.swift
//  FoodApp
//
//  Created by İlkin İsmayilov on 19.12.22.
//

import UIKit

class DrinksCell: UITableViewCell {
    
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var drinksImage: UIImageView!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
