//
//  DetailViewController.swift
//  Gear Calculator
//
//  Created by J.D. Shaeffer on 11/15/18.
//  Copyright © 2018 Shaeffer Enterprises LLC. All rights reserved.
//

import UIKit

extension UITextView
{
    func increaseFontSize()
    {
        self.font =  UIFont(name: self.font!.fontName, size: self.font!.pointSize+7)!
    }
}

//the detail class that displays information about the specific piece of gear
//options to go to the gear's presence on the web is possible, as well as a map to find the closest REI, and the option to add it to the user's virtual pack
class DetailViewController: UIViewController
{
    @IBOutlet weak var detailName: UILabel!
    @IBOutlet weak var detailWeight: UILabel!
    @IBOutlet weak var detailDescription: UILabel!
    @IBOutlet weak var detailUrl: UITextView!
    
    var detailNameValue:String!
    var detailWeightValue:Float!
    var detailDescriptionValue:String!
    var detailUrlValue:URL!
    
    let attributedString = NSMutableAttributedString(string: "Check it Out")
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        attributedString.addAttribute(.link, value: detailUrlValue, range: NSRange(location: 0, length: 12))
        
        detailName.text = detailNameValue
        detailWeight.text = "\(String(detailWeightValue)) oz"
        detailDescription.text = detailDescriptionValue
        detailUrl.attributedText = attributedString
        
        detailUrl.increaseFontSize()
    }
    
    @IBAction func addToPack(_ sender: UIButton)
    {
        //core data save
        _ = g.addRecord(name: detailNameValue, weight: detailWeightValue)
        
        //write to totalWeight -> will need to change later
        //totalWeight += detailWeightValue
    }
}
