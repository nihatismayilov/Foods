//
//  DessertsCell.swift
//  FoodApp
//
//  Created by İlkin İsmayilov on 19.12.22.
//

import UIKit

class DessertsCell: UITableViewCell {
    
    @IBOutlet weak var dessertsImage: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
