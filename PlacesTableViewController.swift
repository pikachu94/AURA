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
        //tableView.contentInset.top = 20
        loadPLaces()
    }
    
    
    func loadPLaces(){
        
        
        let place1 = Place(name: "Spiderhouse Cafe", description: "Food, Drinks, Coffee", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": true, "vegan": true, "quiet": false], web: "http://www.google.com" , hours: "11am-2pm everyday")
        let place2 = Place(name: "The Clay Pit", description: "Food", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": true, "vegan": true, "quiet": false], web: "www.google.com" , hours: "Hours vary, check website")
        let place3 = Place(name: "Chipotle", description: "Food", categories: ["lgbtq": true, "bathroom": false, "open_carry": true, "wheelchair": true, "vegan": true, "quiet": false], web: "www.google.com" , hours: "Monday-Sunday 11am-10pm")
        let place4 = Place(name: "American Apparel", description: "Shopping", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": true, "vegan": false, "quiet": false], web: "www.google.com" , hours: "Monday-Saturday 11am-9pm, Sunday 12pm-8pm")
        let place5 = Place(name: "Subway", description: "Food", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": true, "vegan": true, "quiet": false], web: "www.google.com" , hours: "Monday-Friday 7am-10:30pm, Saturday/Sunday 8am-10:30pm")
        let place6 = Place(name: "Starbucks on 24th", description: "Coffee", categories: ["lgbtq": true, "bathroom": true, "open_carry": true, "wheelchair": true, "vegan": true, "quiet": false], web: "www.google.com" , hours: "Monday-Friday 6am-12pm, Saturday/Sunday 6:30am-12pm")
        let place7 = Place(name: "McDonald's", description: "Food", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": true, "vegan": false, "quiet": false], web: "www.google.com" , hours: "Open 24 hours, 7 days a week")
        let place8 = Place(name: "The Q Austin", description: "", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": false, "vegan": false, "quiet": true], web: "www.google.com" , hours: "")
        let place9 = Place(name: "Wheatsville Co-op", description: "Grocery", categories: ["lgbtq": true, "bathroom": false, "open_carry": true, "wheelchair": true, "vegan": true, "quiet": true], web: "www.google.com" , hours: "7:30am-11pm everyday")
        let place10 = Place(name: "University Baptist Church", description: "church", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": false, "vegan": false, "quiet": false], web: "www.google.com" , hours: "Bible Study 9:30am, Service 11am")
        let place11 = Place(name: "Cheer Up Charlies", description: "Bar", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": false, "vegan": false, "quiet": false], web: "www.google.com" , hours: "Tuesday-Sunday 4pm-2am, Monday 6pm-2am")
        let place12 = Place(name: "Barbarella", description: "Bar", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": true, "vegan": false, "quiet": false], web: "www.google.com" , hours: "Tuesday-Saturday 10pm-2:30am, Sunday-Monday closed")
        let place13 = Place(name: "Amy's Ice Cream", description: "Food", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": false, "vegan": false, "quiet": false], web: "www.google.com" , hours: "")
        let place14 = Place(name: "The Iron Bear", description: "Unknown", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": true, "vegan": false, "quiet": false], web: "www.google.com" ,hours: "3pm-2am everyday")
        let place15 = Place(name: "Birds Barbershop", description: "Hair", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": false, "vegan": false, "quiet": false], web: "www.google.com" , hours: "Monday-Friday 9am-8pm, Saturday 9am-7pm, Sunday 10am-6pm")
        let place16 = Place(name: "Elysium", description: "Unknown", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": true, "vegan": false, "quiet": false], web: "www.google.com" , hours: "Monday closed, Tue-Wed 10pm-2am, Thur-Sun 9:30pm-2am")
        let place17 = Place(name: "Tiff's Treats", description: "Food", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": true, "vegan": false, "quiet": false], web: "www.google.com" , hours: "")
        let place18 = Place(name: "Buffalo Exchange", description: "Shopping", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": true, "vegan": false, "quiet": false], web: "www.google.com" , hours:"Monday-Friday 9am-11:45pm, Sat-Sun 10am-11:45pm")
        let place19 = Place(name: "Gender and Sexuality Center- UT campus", description: "", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": false, "vegan": false, "quiet": false], web: "www.google.com" , hours: "Mon-Thurs 9am to 7pm, Fri 9am to 5pm, Summer Hours: Mon-Fri 9am-5pm")
        let place20 = Place(name: "Mother's Cafe", description: "Food", categories: ["lgbtq": true, "bathroom": true, "open_carry": false, "wheelchair": false, "vegan": true, "quiet": false], web: "www.google.com" , hours: "")

        
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
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let placeviewcontroller = self.storyboard?.instantiateViewControllerWithIdentifier("detailed") as! DetailViewController

        let r = indexPath.row
        //print(places[r].name)
        placeviewcontroller.place = places[r]
        self.navigationController?.pushViewController(placeviewcontroller, animated: true)
        
    }
    
    
    

    
}
