//
//  CalorieViewController.swift
//  UsefulAppGough
//
//  Created by LOGAN GOUGH on 11/4/24.
//

import UIKit

class CalorieViewController: UIViewController {
    
    @IBOutlet weak var textViewOutlet: UITextView!
    
    var calLeft = AppData.maxCalories
    var carLeft = AppData.maxCarbs
    var sugLeft = AppData.maxSugars
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        var blah = AppData.maxCalories - calLeft
        var blat = AppData.maxCarbs - carLeft
        var blay = AppData.maxSugars - sugLeft
        
        for var i in 0..<AppData.foods.count{
            calLeft = calLeft - AppData.foods[i].calories
            carLeft = carLeft - AppData.foods[i].carbs
            sugLeft = sugLeft - AppData.foods[i].sugars
        }
        textViewOutlet.text = "Calories consumed: \(blah)\nCarbs consumed: \(blat)\nSugars consumed: \(blay)\nCalories left: \(calLeft)\nCarbs left: \(carLeft)\nSugars left: \(sugLeft)"
    }
}


