//
//  CrazyCell.swift
//  UsefulAppGough
//
//  Created by LOGAN GOUGH on 10/30/24.
//

import Foundation
import UIKit

class CrazyCell: UITableViewCell{
    
 
    
    @IBOutlet weak var nameLab2: UILabel!
    
    @IBOutlet weak var amountLab2: UILabel!
    
    @IBOutlet weak var calorieLab2: UILabel!
    
    @IBOutlet weak var sugarLab2: UILabel!
    
    @IBOutlet weak var carbLab2: UILabel!
    
    func configure(food: Food){
        nameLab2.text = food.name
        amountLab2.text = "\(food.amount)"
        calorieLab2.text = "\(food.calories)"
        carbLab2.text = "\(food.carbs)"
        sugarLab2.text = "\(food.sugars)"
    }
    
}
