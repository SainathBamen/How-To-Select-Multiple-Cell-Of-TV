//
//  ViewController.swift
//  How To Select Multiple Cell Of TV
//
//  Created by sainath bamen on 19/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var swift = ["TabelView","CollectionView","GET Api Call", "ActionSheet","Displaying AlertAction", "MVVM Pattern With GET Api", "PickerView", "Flipkart single Page Clone", "Dry fruitApp", "TorchApp", "StopWatchApp", "CoffeeShopApp","WeatherApp", "TodoList","DataPassingthroughClosure", "DataPassingWithProtocolnDelegate","UserTransitionApp", "UserDefaults","DropDownMenu", "UserRegistrationForm", "BMI Calculator", "Calculator","AppleSignInForm", "FindMyAgeApp","AudioPlayer","Coursemaker","And lots Of In Process"]
    
    var selectedData:[Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swift.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = swift[indexPath.row]
        cell.accessoryType = self.selectedData.contains(indexPath.row) ?.checkmark :
            .none
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if self.selectedData.contains(indexPath.row){
            let index = self.selectedData.firstIndex(of: indexPath.row)
            self.selectedData.remove(at: index!)
        }
        else{
            self.selectedData.append(indexPath.row)
        }
        tableView.reloadData()
    }
    
    
    
}

