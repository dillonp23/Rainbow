//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Dillon P on 7/23/19.
//  Copyright © 2019 Dillon P. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {

    var colors: [MyColor] = [MyColor(name: "Red", color: .red),
                             MyColor(name: "Orange", color: .orange),
                             MyColor(name: "Yellow", color: .yellow),
                             MyColor(name: "Green", color: .green),
                             MyColor(name: "Blue", color: .blue),
                             MyColor(name: "Cyan", color: .cyan),
                             MyColor(name: "Purple", color: .purple)]
    
    // this array of colors is referred to as our data source.. instead of hard coding the number of rows just use coiunt of the array
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // self.title = "Rainbow" -->> can either set here or set in Main.storyboard
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colors.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        
        let color = colors[indexPath.row] // pronounced "colors, sub, indexpath.row"
        cell.textLabel?.text = color.name
        
        return cell
    }
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // sender would be what we tapped
        // in this case a cell, but could also be a button
        // this segue is called for every single segue
        
        if segue.identifier == "ShowColorSegue" {
            
            guard let indexPath = tableView.indexPathForSelectedRow,
                let colorDetialVC = segue.destination as? ColorDetailViewController else { return }
            
            let cellColor = colors[indexPath.row]
            
            colorDetialVC.cellColor = cellColor
        }
    }
}
