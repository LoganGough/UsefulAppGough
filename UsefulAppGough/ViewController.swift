//
//  ViewController.swift
//  UsefulAppGough
//
//  Created by LOGAN GOUGH on 10/29/24.
//


class AppData{
    static var foods = [Food]()
    static var maxCalories = 0
    static var maxCarbs = 0
    static var maxSugars = 0
    
}
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var foodText: UITextField!
    
    @IBOutlet weak var calorieText: UITextField!
    
    @IBOutlet weak var carbsText: UITextField!
    
    @IBOutlet weak var sugarText: UITextField!
    
    @IBOutlet weak var amountText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func addButton(_ sender: UIButton) {
        var foo = foodText.text!
        var cal = Int(calorieText.text!) ?? 0
        var car = Int(carbsText.text!) ?? 0
        var sug = Int(sugarText.text!) ?? 0
        var amo = Int(amountText.text!) ?? 0
        if (amo > 1){
            cal = cal * amo
            car = car * amo
            sug = sug * amo
        }
        var blah = Food(name: foo, amount: amo, calories: cal, sugars: sug, carbs: car)
        AppData.foods.append(blah)
    }
    

    
}

