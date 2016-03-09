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
        
        
        
        let place1 = Place(name: "Spiderhouse", description: "Food, Drinks, Coffee", lgbtq: true, bathroom: false, open_carry: false, wheelchair: true, vegan: true, quiet: false)
        let place2 = Place(name: "The Clay Pit", description: "Food", lgbtq: true, bathroom: false, open_carry: false, wheelchair: true, vegan: true, quiet: false)
        let place3 = Place(name: "Chipotle", description: "Food", lgbtq: true, bathroom: false, open_carry: true, wheelchair: true, vegan: true, quiet: false)
        let place4 = Place(name: "American Apparel", description: "Shopping", lgbtq: true, bathroom: false, open_carry: false, wheelchair: true, vegan: false, quiet: false)
        let place5 = Place(name: "Subway", description: "Food", lgbtq: true, bathroom: false, open_carry: false, wheelchair: true, vegan: true, quiet: false)
        let place6 = Place(name: "Starbucks on 24th", description: "Coffee", lgbtq: true, bathroom: true, open_carry: true, wheelchair: true, vegan: true, quiet: false)
        let place7 = Place(name: "McDonald's", description: "Food", lgbtq: true, bathroom: false, open_carry: false, wheelchair: true, vegan: false, quiet: false)
        let place8 = Place(name: "The Q Austin", description: "", lgbtq: true, bathroom: false, open_carry: false, wheelchair: false, vegan: false, quiet: true)
        let place9 = Place(name: "Wheatsville Co-op", description: "Grocery", lgbtq: true, bathroom: false, open_carry: true, wheelchair: true, vegan: true, quiet: true)
        let place10 = Place(name: "University Baptist Church", description: "church", lgbtq: true, bathroom: false, open_carry: false, wheelchair: false, vegan: false, quiet: false)
        let place11 = Place(name: "Cheer Up Charlies", description: "Bar", lgbtq: true, bathroom: false, open_carry: false, wheelchair: false, vegan: false, quiet: false)
        let place12 = Place(name: "Barbarella", description: "Bar", lgbtq: true, bathroom: false, open_carry: false, wheelchair: true, vegan: false, quiet: false)
        let place13 = Place(name: "Amy's Ice Cream", description: "Food", lgbtq: true, bathroom: false, open_carry: false, wheelchair: false, vegan: false, quiet: false)
        let place14 = Place(name: "The Iron Bear", description: "Unknown", lgbtq: true, bathroom: false, open_carry: false, wheelchair: true, vegan: false, quiet: false)
        let place15 = Place(name: "Birds Barbershop", description: "Hair", lgbtq: true, bathroom: false, open_carry: false, wheelchair: false, vegan: false, quiet: false)
        let place16 = Place(name: "Elysium", description: "Unknown", lgbtq: true, bathroom: false, open_carry: false, wheelchair: true, vegan: false, quiet: false)
        let place17 = Place(name: "Tiff's Treats", description: "Food", lgbtq: true, bathroom: false, open_carry: false, wheelchair: true, vegan: false, quiet: false)
        let place18 = Place(name: "Buffalo Exchange", description: "Shopping", lgbtq: true, bathroom: false, open_carry: false, wheelchair: true, vegan: false, quiet: false)
        let place19 = Place(name: "Gender and Sexuality Center- UT campus", description: "", lgbtq: true, bathroom: false, open_carry: false, wheelchair: false, vegan: false, quiet: false)
        let place20 = Place(name: "Mother's Cafe", description: "Food", lgbtq: true, bathroom: true, open_carry: false, wheelchair: false, vegan: true, quiet: false)

        
        places += [place1,place2, place3, place4, place5, place6, place7, place8, place9, place10, place11, place12, place13, place14, place15, place16, place17, place18, place19, place20]
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
            return "Results"
            
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "PlacesTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier", forIndexPath: indexPath) as! PlacesTableViewCell
        let place = places[indexPath.row]
        
        cell.namePlace.text = place.name
        cell.descriptionPlace.text = place.description
        
       
    

        return cell
    }
    
    
    

    
}
