//
//  ViewController.swift
//  ShitToDo
//
//  Created by dong yoon kang on 9/24/15.
//  Copyright (c) 2015 yoon kevin kang. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {

    var row0text = "Walk the dog"
    var row1text = "Brush my teeth"
    var row2text = "Learn iOS Development"
    var row3text = "Soccer Practice"
    var row4text = "Eat ice cream"
    
    var row0checked = false
    var row1checked = false
    var row2checked = false
    var row3checked = false
    var row4checked = false 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem")!
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = row0text
        }else if indexPath.row == 1 {
            label.text = row1text
        }else if indexPath.row == 2 {
            label.text = row2text
        }else if indexPath.row == 3 {
            label.text = row3text
        }else if indexPath.row == 4 {
            label.text = row4text
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let cell = tableView.cellForRowAtIndexPath(indexPath){
            if cell.accessoryType == .None {
                cell.accessoryType = .Checkmark
            }else{
                cell.accessoryType = .None
            }
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
    }

}

