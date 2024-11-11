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
        AppData.defaults.setValue(one, forKey: "theCalories")
        AppData.defaults.setValue(two, forKey: "theCarbs")
        AppData.defaults.setValue(three, forKey: "theSugars")
        
        if(one > 0 && two > 0 && three > 0){
            AppData.maxCalories = one
            AppData.maxCarbs = two
            AppData.maxSugars = three
            print(AppData.maxCalories)
            print(AppData.maxCarbs)
            print(AppData.maxSugars)
        }
        else{
            let alert = UIAlertController(title: "Error", message: "Please enter a valid answer", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
    }
    

}
