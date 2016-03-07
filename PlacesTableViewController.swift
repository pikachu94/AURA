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
        
        
        
        let place1 = Place(name: "Spiderhouse", text: "Food, Drinks, Coffee")
        let place2 = Place(name: "The Clay Pit", text: "Food")
        let place3 = Place(name: "Chipotle", text: "Food")
        let place4 = Place(name: "American Apparel", text: "Shopping")
        let place5 = Place(name: "Subway", text: "Food")
        let place6 = Place(name: "Starbucks on 24th", text: "Coffee")
        let place7 = Place(name: "McDonald's", text: "Food")
        let place8 = Place(name: "The Q Austin", text: "")
        let place9 = Place(name: "Wheatsville Co-op", text: "Grocery")
        let place10 = Place(name: "University Baptist Church", text: "Practice")
        let place11 = Place(name: "Cheer Up Charlies", text: "Bar")
        let place12 = Place(name: "Barbarella", text: "Bar")
        let place13 = Place(name: "Amy's Ice Cream", text: "Food")
        let place14 = Place(name: "The Iron Bear", text: "Unknown")
        let place15 = Place(name: "Birds Barbershop", text: "Hair")
        let place16 = Place(name: "Elysium", text: "Unknown")
        let place17 = Place(name: "Tiff's Treats", text: "Food")
        let place18 = Place(name: "Buffalo Exchange", text: "Shopping")
        
        
        places += [place1,place2, place3, place4, place5, place6, place7, place8, place9, place10, place11, place12, place13, place14, place15, place16, place17, place18]
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
