//
//  CustomCell.swift
//  KatakanaEigo
//
//  Created by Rayne on 5/25/16.
//  Copyright © 2016 Kappa. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
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
    
    func setCell(test: Test) {
        self.label1.text = test.label1
        self.label2.text = test.label2
    }
    
}
