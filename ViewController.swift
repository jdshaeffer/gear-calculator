//
//  ViewController.swift
//  Gear Calculator
//
//  Created by J.D. Shaeffer on 10/14/18.
//  Copyright © 2018 Shaeffer Enterprises LLC. All rights reserved.

import UIKit
import CoreData

//global vars
var myPack:Gear = Gear(); //not so necessary
let g:Gear = Gear() //the Gear object array full of our managed objects
var totalWeight:Float = 0.0
var firstTimeThru:Bool = true //for the alert at the beginning

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var packTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return g.fetchRecords()
    }
    
    //cell data
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "packCell", for: indexPath) as! PackTableViewCell
        let data = g.fetchResults[indexPath.row]
        cell.name.text = data.name
        cell.weight.text = "\(data.weight) oz"
        
        return cell
    }
    
    //editable cells
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    {
        return true
    }
    
    //set editing style of the cells to delete
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle
    {
        return UITableViewCell.EditingStyle.delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        //delete the data from the table then update
        totalWeight -= g.fetchResults[indexPath.row].weight
        _ = g.deleteRecord(row: indexPath.row)
        packTableView.reloadData()
        weight.text = "\(String(totalWeight)) oz (\(String(totalWeight/16)) lbs)"
    }
    
    //set cells to be larger
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 60.0
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        reloadWeight()
        
        if(firstTimeThru)
        {
            let alert = UIAlertController(title: "Welcome to the Gear Calculator. This app is intended for those hikers looking to lower their base weight. Here you will find a broad selection of brands and their products to help you find the best and lightest gear for your next big trip. Tap the '+' at the top right to get started. Thank you - J.D. Shaeffer, AT 2018.", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
            self.present(alert, animated: true)
        }
        firstTimeThru = false
    }
    
    //unwind from detail segue - necessary to insert rows into table view
    @IBAction func didUnwindFromAdding(segue: UIStoryboardSegue)
    {
        if let _ = segue.source as? DetailViewController
        {
            let indexPath = IndexPath(row: g.fetchRecords() - 1, section:0)

            packTableView.insertRows(at: [indexPath], with: .automatic)
            packTableView.reloadData()
        }
    }
    
    //function to calculate the total weight at the bottom every time the screen reloads
    func reloadWeight()
    {
        //var totalWeight:Float
        if(g.fetchRecords() == 0)
        {
            totalWeight = 0.0
            weight.text = "0.0 oz (0.0 lbs)"
        }
        else
        {
            totalWeight = 0.0
            for i in 0...g.fetchRecords()-1
            {
                totalWeight += g.fetchResults[i].weight
                weight.text = "\(String(totalWeight)) oz (\(String(totalWeight/16)) lbs)"
            }
        }
    }
}

