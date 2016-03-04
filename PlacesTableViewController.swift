//
//  PlacesTableViewController.swift
//  Aura1
//
//  Created by Paola Jara on 3/4/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class PlacesTableViewController: UITableViewController {
    
    var places = [Place]()
    
    
    

    override func viewDidLoad() {
       super.viewDidLoad()

        loadPLaces()
    }
    func loadPLaces(){
        
        
        
        let place1 = Place(name: "Spiderhouse", text: "Chill coffe place")
        let place2 = Place(name: "Starbucks", text: "Best coffee ever")
        
        
        
        places += [place1,place2]
    }
    
    
    
   

//    override func didReceiveMemoryWarning() {
     //   super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
  //  }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return places.count
    }

    
    override func tableView(tableView: UITableView, titleForHeaderInSection section : Int)
        -> String{
            return "Places \(section)"
            
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "PlacesTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier", forIndexPath: indexPath) as! PlacesTableViewCell
        let place = places[indexPath.row]
        
        cell.namePlace.text = place.name
        cell.descriptionPlace.text = place.text

       
    

        return cell
    }
    
    
    

    
}
