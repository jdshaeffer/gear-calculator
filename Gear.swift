//
//  Gear.swift
//  Gear Calculator
//
//  Created by J.D. Shaeffer on 10/14/18.
//  Copyright © 2018 Shaeffer Enterprises LLC. All rights reserved.

import Foundation
import UIKit
import CoreData

//where all the core location functions occur
class Gear
{
    var myGear:[myGear] = [];
    
    init()
    {
    }
    
    //core data TableView properties
    let ManagedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var fetchResults = [GearEntity]()
    
    func fetchRecords() -> Int
    {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "GearEntity")
        fetchResults = ((try? ManagedObjectContext.fetch(fetchRequest)) as? [GearEntity])!
        
        let i = fetchResults.count
        return i
    }
    
    func addRecord(name:String, weight:Float) -> Bool
    {
        let entity = NSEntityDescription.entity(forEntityName: "GearEntity", in: self.ManagedObjectContext)
        let addItem = GearEntity(entity: entity!, insertInto: self.ManagedObjectContext)
        addItem.name = name
        addItem.weight = weight
        //addItem.totalWeight += weight
        
        do
        {
            try self.ManagedObjectContext.save()
        }
        catch _
        {
            return false
        }
        return true
    }
    
    func deleteRecord(row:Int) -> Bool
    {
        ManagedObjectContext.delete(fetchResults[row])
        fetchResults.remove(at: row)
        do
        {
            try self.ManagedObjectContext.save()
        }
        catch _
        {
            return false
        }
        return true
    }
}

class myGear
{
    var gearName:String!
    var gearWeight:Float!
    
    init(name:String, weight:Float)
    {
        gearName = name
        gearWeight = weight
    }
}

