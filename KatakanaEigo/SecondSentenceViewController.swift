//
//  SecondSentenceViewController.swift
//  KatakanaEigo
//
//  Created by Rayne on 5/11/16.
//  Copyright © 2016 Kappa. All rights reserved.
//

import UIKit

class SecondSentenceViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let engSentences : [[String:String]] = [["English":"My name is ****", "Japanese":"私の名前は****。"],["English":"I am Japanese", "Japanese":"私は日本人です。"],["English":"I "]]
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 100.0
        tableView.rowHeight = UITableViewAutomaticDimension

        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib(nibName: "SecondCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "SecondCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return engSentences.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SecondCell") as! SecondCell
        
        cell.setSecondCell(engSentences[indexPath.row])
        return cell
        
    }
    

    
 

}
