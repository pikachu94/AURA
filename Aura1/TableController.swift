//
//  TableController.swift
//  Aura1
//
//  Created by Paola Jara on 3/2/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit


class TableController: UITableViewController{
    
    
    var places = [Place]()
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
    
        return self.places.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)as UITableViewCell
    }
    
    var place : Place
    
    place = places[indexPath.rpw]//counting how many time it appears
    
    cell.textLabel.text = place.name


    
    
}
