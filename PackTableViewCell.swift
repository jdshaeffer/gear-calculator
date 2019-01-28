//
//  PackTableViewCell.swift
//  Gear Calculator
//
//  Created by J.D. Shaeffer on 11/14/18.
//  Copyright © 2018 Shaeffer Enterprises LLC. All rights reserved.
//

import UIKit

class PackTableViewCell: UITableViewCell
{
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var weight: UILabel!
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
}
