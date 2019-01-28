//
//  GearAvailableViewController.swift
//  Gear Calculator
//
//  Created by J.D. Shaeffer on 11/14/18.
//  Copyright © 2018 Shaeffer Enterprises LLC. All rights reserved.
//

import UIKit

//this is a large view controller class assigned with the task to cover all the gear options from every category
class GearAvailableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    @IBOutlet weak var gearAvailableTable: UITableView!
    
    var packGear:PackGear = PackGear()
    var shelterGear:ShelterGear = ShelterGear()
    var sleepingGear:SleepingGear = SleepingGear()
    var padGear:PadGear = PadGear()
    var foodGear:FoodGear = FoodGear()
    var waterGear:WaterGear = WaterGear()
    var electronicsGear:ElectronicsGear = ElectronicsGear()
    var firstAidGear:FirstAidGear = FirstAidGear()
    var toiletriesGear:ToiletriesGear = ToiletriesGear()
    var clothesGear:ClothesGear = ClothesGear()
    var otherGear:OtherGear = OtherGear()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        var count = 0
        if(i == 0)
        {
            count = packGear.packGear.count
        }
        else if(i == 1)
        {
            count = shelterGear.shelterGear.count
        }
        else if(i == 2)
        {
            count = sleepingGear.sleepingGear.count
        }
        else if(i == 3)
        {
            count = padGear.padGear.count
        }
        else if(i == 4)
        {
            count = foodGear.foodGear.count
        }
        else if(i == 5)
        {
            count = waterGear.waterGear.count
        }
        else if(i == 6)
        {
            count = electronicsGear.electronicsGear.count
        }
        else if(i == 7)
        {
            count = firstAidGear.firstAidGear.count
        }
        else if(i == 8)
        {
            count = toiletriesGear.toiletriesGear.count
        }
        else if(i == 9)
        {
            count = clothesGear.clothesGear.count
        }
        else if(i == 10)
        {
            count = otherGear.otherGear.count
        }
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gearAvailableCell", for: indexPath) as! GearAvailableTableViewCell
        cell.gearName.text = packGear.packGear[indexPath.row].gearName
        if(i == 0)
        {
            let weightValue = packGear.packGear[indexPath.row].gearWeight
            cell.gearName.text = packGear.packGear[indexPath.row].gearName
            cell.gearWeight.text = "\(weightValue!) oz"
        }
        else if(i == 1)
        {
            let weightValue = shelterGear.shelterGear[indexPath.row].gearWeight
            cell.gearName.text = shelterGear.shelterGear[indexPath.row].gearName
            cell.gearWeight.text = "\(weightValue!) oz"
        }
        else if(i == 2)
        {
            let weightValue = sleepingGear.sleepingGear[indexPath.row].gearWeight
            cell.gearName.text = sleepingGear.sleepingGear[indexPath.row].gearName
            cell.gearWeight.text = "\(weightValue!) oz"
        }
        else if(i == 3)
        {
            let weightValue = padGear.padGear[indexPath.row].gearWeight
            cell.gearName.text = padGear.padGear[indexPath.row].gearName
            cell.gearWeight.text = "\(weightValue!) oz"
        }
        else if(i == 4)
        {
            let weightValue = foodGear.foodGear[indexPath.row].gearWeight
            cell.gearName.text = foodGear.foodGear[indexPath.row].gearName
            cell.gearWeight.text = "\(weightValue!) oz"
        }
        else if(i == 5)
        {
            let weightValue = waterGear.waterGear[indexPath.row].gearWeight
            cell.gearName.text = waterGear.waterGear[indexPath.row].gearName
            cell.gearWeight.text = "\(weightValue!) oz"
        }
        else if(i == 6)
        {
            let weightValue = electronicsGear.electronicsGear[indexPath.row].gearWeight
            cell.gearName.text = electronicsGear.electronicsGear[indexPath.row].gearName
            cell.gearWeight.text = "\(weightValue!) oz"
        }
        else if(i == 7)
        {
            let weightValue = firstAidGear.firstAidGear[indexPath.row].gearWeight
            cell.gearName.text = firstAidGear.firstAidGear[indexPath.row].gearName
            cell.gearWeight.text = "\(weightValue!) oz"
        }
        else if(i == 8)
        {
            let weightValue = toiletriesGear.toiletriesGear[indexPath.row].gearWeight
            cell.gearName.text = toiletriesGear.toiletriesGear[indexPath.row].gearName
            cell.gearWeight.text = "\(weightValue!) oz"
        }
        else if(i == 9)
        {
            let weightValue = clothesGear.clothesGear[indexPath.row].gearWeight
            cell.gearName.text = clothesGear.clothesGear[indexPath.row].gearName
            cell.gearWeight.text = "\(weightValue!) oz"
        }
        else if(i == 10)
        {
            let weightValue = otherGear.otherGear[indexPath.row].gearWeight
            cell.gearName.text = otherGear.otherGear[indexPath.row].gearName
            cell.gearWeight.text = "\(weightValue!) oz"
        }
        
        return cell;
    }
    
    //ability to edit rows
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    {
        return true;
    }
    
    //set editing style to delete
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle
    {
        return UITableViewCell.EditingStyle.delete
    }
    
    //set cells to be larger
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 60.0
    }
    
    //delete the data from the table, then update, etc.
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if(i == 0)
        {
            packGear.packGear.remove(at: indexPath.row)
            gearAvailableTable.reloadData()
        }
        else if(i == 1)
        {
            shelterGear.shelterGear.remove(at: indexPath.row)
            gearAvailableTable.reloadData()
        }
        else if(i == 2)
        {
            sleepingGear.sleepingGear.remove(at: indexPath.row)
            gearAvailableTable.reloadData()
        }
        else if(i == 3)
        {
            padGear.padGear.remove(at: indexPath.row)
            gearAvailableTable.reloadData()
        }
        else if(i == 4)
        {
            foodGear.foodGear.remove(at: indexPath.row)
            gearAvailableTable.reloadData()
        }
        else if(i == 5)
        {
            waterGear.waterGear.remove(at: indexPath.row)
            gearAvailableTable.reloadData()
        }
        else if(i == 6)
        {
            electronicsGear.electronicsGear.remove(at: indexPath.row)
            gearAvailableTable.reloadData()
        }
        else if(i == 7)
        {
            firstAidGear.firstAidGear.remove(at: indexPath.row)
            gearAvailableTable.reloadData()
        }
        else if(i == 8)
        {
            toiletriesGear.toiletriesGear.remove(at: indexPath.row)
            gearAvailableTable.reloadData()
        }
        else if(i == 9)
        {
            clothesGear.clothesGear.remove(at: indexPath.row)
            gearAvailableTable.reloadData()
        }
        else if(i == 10)
        {
            otherGear.otherGear.remove(at: indexPath.row)
            gearAvailableTable.reloadData()
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if(segue.identifier == "goToDetailView")
        {
            let indexPath: IndexPath = self.gearAvailableTable.indexPath(for: sender as! UITableViewCell)!
            if(i == 0)
            {
                let item = packGear.packGear[indexPath.row]
                
                guard let DetailViewController = segue.destination as? DetailViewController else {return}
                
                DetailViewController.detailNameValue = item.gearName
                DetailViewController.detailDescriptionValue = item.gearDescription
                DetailViewController.detailWeightValue = item.gearWeight
                DetailViewController.detailUrlValue = item.gearURL
            }
            else if(i == 1)
            {
                let item = shelterGear.shelterGear[indexPath.row]
                
                guard let DetailViewController = segue.destination as? DetailViewController else {return}
                
                DetailViewController.detailNameValue = item.gearName
                DetailViewController.detailDescriptionValue = item.gearDescription
                DetailViewController.detailWeightValue = item.gearWeight
                DetailViewController.detailUrlValue = item.gearURL
            }
            else if(i == 2)
            {
                let item = sleepingGear.sleepingGear[indexPath.row]
                
                guard let DetailViewController = segue.destination as? DetailViewController else {return}
                
                DetailViewController.detailNameValue = item.gearName
                DetailViewController.detailDescriptionValue = item.gearDescription
                DetailViewController.detailWeightValue = item.gearWeight
                DetailViewController.detailUrlValue = item.gearURL
            }
            else if(i == 3)
            {
                let item = padGear.padGear[indexPath.row]
                
                guard let DetailViewController = segue.destination as? DetailViewController else {return}
                
                DetailViewController.detailNameValue = item.gearName
                DetailViewController.detailDescriptionValue = item.gearDescription
                DetailViewController.detailWeightValue = item.gearWeight
                DetailViewController.detailUrlValue = item.gearURL
            }
            else if(i == 4)
            {
                let item = foodGear.foodGear[indexPath.row]
                
                guard let DetailViewController = segue.destination as? DetailViewController else {return}
                
                DetailViewController.detailNameValue = item.gearName
                DetailViewController.detailDescriptionValue = item.gearDescription
                DetailViewController.detailWeightValue = item.gearWeight
                DetailViewController.detailUrlValue = item.gearURL
            }
            else if(i == 5)
            {
                let item = waterGear.waterGear[indexPath.row]
                
                guard let DetailViewController = segue.destination as? DetailViewController else {return}
                
                DetailViewController.detailNameValue = item.gearName
                DetailViewController.detailDescriptionValue = item.gearDescription
                DetailViewController.detailWeightValue = item.gearWeight
                DetailViewController.detailUrlValue = item.gearURL
            }
            else if(i == 6)
            {
                let item = electronicsGear.electronicsGear[indexPath.row]
                
                guard let DetailViewController = segue.destination as? DetailViewController else {return}
                
                DetailViewController.detailNameValue = item.gearName
                DetailViewController.detailDescriptionValue = item.gearDescription
                DetailViewController.detailWeightValue = item.gearWeight
                DetailViewController.detailUrlValue = item.gearURL
            }
            else if(i == 7)
            {
                let item = firstAidGear.firstAidGear[indexPath.row]
                
                guard let DetailViewController = segue.destination as? DetailViewController else {return}
                
                DetailViewController.detailNameValue = item.gearName
                DetailViewController.detailDescriptionValue = item.gearDescription
                DetailViewController.detailWeightValue = item.gearWeight
                DetailViewController.detailUrlValue = item.gearURL
            }
            else if(i == 8)
            {
                let item = toiletriesGear.toiletriesGear[indexPath.row]
                
                guard let DetailViewController = segue.destination as? DetailViewController else {return}
                
                DetailViewController.detailNameValue = item.gearName
                DetailViewController.detailDescriptionValue = item.gearDescription
                DetailViewController.detailWeightValue = item.gearWeight
                DetailViewController.detailUrlValue = item.gearURL
            }
            else if(i == 9)
            {
                let item = clothesGear.clothesGear[indexPath.row]
                
                guard let DetailViewController = segue.destination as? DetailViewController else {return}
                
                DetailViewController.detailNameValue = item.gearName
                DetailViewController.detailDescriptionValue = item.gearDescription
                DetailViewController.detailWeightValue = item.gearWeight
                DetailViewController.detailUrlValue = item.gearURL
            }
            else if(i == 10)
            {
                let item = otherGear.otherGear[indexPath.row]
                
                guard let DetailViewController = segue.destination as? DetailViewController else {return}
                
                DetailViewController.detailNameValue = item.gearName
                DetailViewController.detailDescriptionValue = item.gearDescription
                DetailViewController.detailWeightValue = item.gearWeight
                DetailViewController.detailUrlValue = item.gearURL
            }
        }
    }
}
