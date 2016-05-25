//
//  FirstVocabViewController.swift
//  KatakanaEigo
//
//  Created by Rayne on 5/11/16.
//  Copyright © 2016 Kappa. All rights reserved.
// Learn Dictionary swift. Array.

import UIKit

class FirstVocabViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let simpleWords : [[String:String]] = [["English":"Angry", "Japanese":"怒っている"],["English":"Beautiful", "Japanese":"美しい"],["English":"Intelligent", "Japanese":"賢い"],["English":"Young", "Japanese":"若い"],
                                           ["English":"Old", "Japanese":"古い、老いた"],["English":"Famous", "Japanese":"有名"],["English":"Brave", "Japanese":"勇気がある"],["English":"Interesting","Japanese":"興味深い"], ["English":"Generous", "Japanese":"寛大な"], ["English":"Stubborn", "Japanese":"頑固"],
                                           ["Englush":"Sad", "Japanese":"悲しい"]]
    
 
    @IBOutlet weak var tableView: UITableView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        var nib = UINib(nibName: "CustomCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = simpleWords[indexPath.row]["English"]
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpleWords.count
    }
    
    
    

}
