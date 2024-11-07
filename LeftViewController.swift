//
//  LeftViewController.swift
//  UsefulAppGough
//
//  Created by LOGAN GOUGH on 11/7/24.
//

import UIKit

class LeftViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
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
        
        
        label1.text = "\(one)"
        label2.text = "\(two)"
        label3.text = "\(three)"
    }
    

}
