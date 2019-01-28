//
//  CategoryViewController.swift
//  Gear Calculator
//
//  Created by J.D. Shaeffer on 10/14/18.
//  Copyright © 2018 Shaeffer Enterprises LLC. All rights reserved.

import UIKit

var i = 0

//categorized all the gear into 11 categories
class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var categories:Categories = Categories();
    
    @IBOutlet weak var categoryTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return categories.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as! CategoryTableViewCell
        cell.categoryTitle.text = categories.categories[indexPath.row];
        
        return cell;
    }
    
    //i is the vigilant variable used to know which gear to display based on the category
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        i = indexPath.row
        performSegue(withIdentifier: "goToAvailableGearView", sender: self)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
