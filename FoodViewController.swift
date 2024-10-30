//
//  FoodViewController.swift
//  UsefulAppGough
//
//  Created by LOGAN GOUGH on 10/30/24.
//

import UIKit

class FoodViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CrazyCell
        cell.nameLab?.text = AppData.foods[indexPath.row].name
//        cell.amountLab?.text = AppData.foods[indexPath.row].amount
//        cell.calorieLab?.text = AppData.foods[indexPath.row].calories
//        cell.carbLab?.text = AppData.foods[indexPath.row].carbs
//        cell.sugarLab?.text = AppData.foods[indexPath.row].sugars
        return cell
    }

   

}
