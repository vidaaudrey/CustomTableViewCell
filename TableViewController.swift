//
//  TableViewController.swift
//  PreventUILabelSuperviewResizing
//
//  Created by Audrey Li on 6/6/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var data = ["data1", "data2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return data.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CircularTableViewCell
        cell.circularImageView.image = UIImage(named: "cat")
        return cell
    }

}
