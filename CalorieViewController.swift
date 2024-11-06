//
//  CalorieViewController.swift
//  UsefulAppGough
//
//  Created by LOGAN GOUGH on 11/4/24.
//

import UIKit

class CalorieViewController: UIViewController {
    
    @IBOutlet weak var textViewOutlet: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        var calLeft = AppData.maxCalories
        var carLeft = AppData.maxCarbs
        var sugLeft = AppData.maxSugars
        var calCons = 0
        var carCons = 0
        var sugCons = 0
        print(calLeft)
        
        for var i in 0..<AppData.foods.count{
            calCons = calCons + AppData.foods[i].calories
            carCons = carCons + AppData.foods[i].carbs
            sugCons = sugCons + AppData.foods[i].sugars
        }
        var one = calLeft - calCons
        var two = carLeft - carCons
        var three = sugLeft - sugCons
//        print(calLeft)
//        print(carLeft)
//        print(sugLeft)
        print(calCons)
        print(carCons)
        print(sugCons)

        textViewOutlet.text = "Calories consumed: \(calCons)\nCarbs consumed: \(carCons)\nSugars consumed: \(sugCons)\nCalories left: \(one)\nCarbs left: \(two)\nSugars left: \(three)"
        
   
    }
}


