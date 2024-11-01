//
//  CrazyCell2.swift
//  UsefulAppGough
//
//  Created by LOGAN GOUGH on 10/31/24.
//

import UIKit

class CrazyCell2: UITableViewCell {

    
    @IBOutlet weak var nameLab2: UILabel!
    
    @IBOutlet weak var calorieLab2: UILabel!
    
    @IBOutlet weak var amountLab2: UILabel!
    @IBOutlet weak var carbLab2: UILabel!
    @IBOutlet weak var sugarLab2: UILabel!
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
    func configure(food: Food){
        nameLab2.text = food.name
        amountLab2.text = "\(food.amount)"
        calorieLab2.text = "\(food.calories)"
        carbLab2.text = "\(food.carbs)"
        sugarLab2.text = "\(food.sugars)"
    }

}
