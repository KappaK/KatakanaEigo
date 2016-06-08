//
//  SecondCell.swift
//  KatakanaEigo
//
//  Created by Rayne on 6/8/16.
//  Copyright © 2016 Kappa. All rights reserved.
//

import UIKit

class SecondCell: UITableViewCell {
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
    
    func setSecondCell(engSentences:[String:String]) {
        self.label1.text = engSentences["Japanese"]
        self.label2.text = engSentences["English"]
    }
    
    
    
}
