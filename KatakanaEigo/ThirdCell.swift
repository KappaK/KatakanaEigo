//
//  ThirdCell.swift
//  KatakanaEigo
//
//  Created by Rayne on 6/15/16.
//  Copyright © 2016 Kappa. All rights reserved.
//

import UIKit

class ThirdCell: UITableViewCell {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setThirdCell(businessWords:[String:String]) {
        self.label1.text = businessWords["Japanese"]
        self.label2.text = businessWords["English"]
    }
    
}
