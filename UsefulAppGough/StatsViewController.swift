//
//  StatsViewController.swift
//  UsefulAppGough
//
//  Created by LOGAN GOUGH on 11/1/24.
//

import UIKit

class StatsViewController: UIViewController {

    @IBOutlet weak var calorieText: UITextField!
    
    @IBOutlet weak var carbText: UITextField!
    
    
    @IBOutlet weak var sugarText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func button1(_ sender: UIButton) {
        var one = Int(calorieText.text!) ?? 0
        var two = Int(carbText.text!) ?? 0
        var three = Int(sugarText.text!) ?? 0
        AppData.maxCalories = one
        AppData.maxCarbs = two
        AppData.maxSugars = three
        print(AppData.maxCalories)
        print(AppData.maxCarbs)
        print(AppData.maxSugars)
    }
    

}
