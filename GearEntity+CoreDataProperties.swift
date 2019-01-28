//
//  GearEntity+CoreDataProperties.swift
//  Gear Calculator
//
//  Created by J.D. Shaeffer on 11/19/18.
//  Copyright © 2018 Shaeffer Enterprises LLC. All rights reserved.
//

import Foundation
import CoreData

extension GearEntity
{
    @nonobjc public class func fetchRequest() ->
        NSFetchRequest<GearEntity> {
            return NSFetchRequest<GearEntity>(entityName: "GearEntity")
    }
    
    @NSManaged public var weight:Float
    @NSManaged public var name:String?
    //@NSManaged public var totalWeight:Float
}
