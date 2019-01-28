//
//  BrandTableViewCell.swift
//  Gear Calculator
//
//  Created by J.D. Shaeffer on 11/14/18.
//  Copyright © 2018 Shaeffer Enterprises LLC. All rights reserved.
//

import UIKit

class GearAvailableTableViewCell: UITableViewCell
{
    @IBOutlet weak var gearName: UILabel!
    @IBOutlet weak var gearWeight: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
    
}
