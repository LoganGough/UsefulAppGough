//
//  Food.swift
//  UsefulAppGough
//
//  Created by LOGAN GOUGH on 10/29/24.
//

import Foundation
import UIKit
class Food{
    var name: String
    var amount: Int
    var calories: Int
    var sugars: Int
    var carbs: Int
    

    init(name: String, amount: Int, calories: Int, sugars: Int, carbs: Int) {
        self.name = name
        self.amount = amount
        self.calories = calories
        self.sugars = sugars
        self.carbs = carbs
    }
    
    func toString()->String{
        return "Food: \(name)\nAmount: \(amount)\nCalories: \(calories)\nCarbs: \(carbs)\nSugar: \(sugars)"
        
    }
    
    
    
}
