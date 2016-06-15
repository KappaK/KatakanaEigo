//
//  ThirdBusinessVocabViewController.swift
//  KatakanaEigo
//
//  Created by Rayne on 5/11/16.
//  Copyright © 2016 Kappa. All rights reserved.
//

import UIKit

class ThirdBusinessVocabViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let businessWords : [[String:String]] = [["English":"Management", "Japanese":"経営、管理"], ["English":"Stakeholder", "Japanese":"賭け金の保管人"], ["English":"Marketing", "Japanese":"市場で売買すること"]]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 150.0
        tableView.rowHeight = UITableViewAutomaticDimension
                
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib(nibName: "ThirdCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "ThirdCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return businessWords.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =
            tableView.dequeueReusableCellWithIdentifier("ThirdCell") as! ThirdCell
        
    
            
        
        cell.setThirdCell(businessWords[indexPath.row])
        return cell
    }
    

   

}
