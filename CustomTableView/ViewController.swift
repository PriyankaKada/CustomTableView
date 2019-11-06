//
//  ViewController.swift
//  CustomTableView
//
//  Created by DebasishSen on 06/11/19.
//  Copyright © 2019 DebasishSen. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    var firstNames: [String] = ["Hardik" ,"Roger", "Andrew", "Eliz", "Kety"]
    var cityNames: [String] = ["Rajkot" ,"Basel", "New York", "London", "Sydney"]
    
    //a list to store DataModel
    var dataModels = [DataModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //traversing through all elements of the array
        for i in 0..<5{
            
            self.dataModels.append(DataModel(title:   firstNames[i], city: cityNames[i]))
            //displaying data in tableview
            self.tableView.reloadData()
            
        }
    }
    
    //the method returning size of the list
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return dataModels.count
    }
    
    //the method returning each cell of the list
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        //getting the hero for the specified position
        let model: DataModel
        
        model = dataModels [indexPath.row]
        
        //displaying values
        cell.Title.text = model.title
        cell.City.text = model.city
        
        return cell
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

