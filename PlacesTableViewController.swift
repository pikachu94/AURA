//
//  PlacesTableViewController.swift
//  Aura1
//
//  Created by Paola Jara on 3/4/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class PlacesTableViewController: UITableViewController {
    
    var Allplaces = [Place]()
    var selectPlaces = [Place]()
    
    
    override func viewDidLoad() {
       super.viewDidLoad()
        //tableView.contentInset.top = 20
        loadPLaces()
        
        
        let navImage:UIImage = UIImage(named: "aura_header.png")!
        UINavigationBar.appearance().setBackgroundImage(navImage, forBarMetrics: .Default)
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }
    
    
    func loadPLaces(){
        
        
        let place1 = Place(name: "Spider House Cafe", description: "Food", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": true, "vegan": true, "quiet": false], web: "https://spiderhouseaustin.com/" , hours: "11am-2pm everyday")
        let place2 = Place(name: "The Clay Pit", description: "Food", categories: ["lgbtq": true, "bathroom": false, "open_carry": true, "wheelchair": true, "vegan": true, "quiet": false], web: "http://claypit.com/" , hours: "Hours vary, check website")
        let place3 = Place(name: "Chipotle", description: "Food", categories: ["lgbtq": true, "bathroom": false, "open_carry": true, "wheelchair": true, "vegan": true, "quiet": false], web: "https://www.chipotle.com/" , hours: "Mon-Sun 11am-10pm")
        let place4 = Place(name: "American Apparel", description: "Shopping", categories: ["lgbtq": true, "bathroom": false, "open_carry": true, "wheelchair": true, "vegan": false, "quiet": false], web: "http://store.americanapparel.net/en/" , hours: "Mon-Sat 11am-9pm, Sun 12pm-8pm")
        let place5 = Place(name: "Subway", description: "Food", categories: ["lgbtq": true, "bathroom": true, "open_carry": false, "wheelchair": true, "vegan": true, "quiet": false], web: "http://www.subway.com/subwayroot/default.aspx" , hours: "Mon-Fri 7am-10:30pm, Sat/Sun 8am-10:30pm")
        let place6 = Place(name: "Starbucks on 24th", description: "Coffee", categories: ["lgbtq": true, "bathroom": true, "open_carry": true, "wheelchair": true, "vegan": true, "quiet": false], web: "http://www.starbucks.com/" , hours: "Mon-Fri 6am-12pm, Sat/Sun6:30am-12pm")
        let place7 = Place(name: "McDonald's", description: "Food", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": true, "vegan": false, "quiet": false], web: "http://www.mcdonalds.com/us/en/home.html" , hours: "Open 24 hours, 7 days a week")
        let place8 = Place(name: "The Q Austin", description: "Hangout", categories: ["lgbtq": true, "bathroom": true, "open_carry": true, "wheelchair": false, "vegan": false, "quiet": true], web: "http://www.theqaustin.org/" , hours: "Mon-Thurs 10am-7pm, Fri 1pm-5pm")
        let place9 = Place(name: "Wheatsville Co-op", description: "Grocery", categories: ["lgbtq": true, "bathroom": false, "open_carry": true, "wheelchair": true, "vegan": true, "quiet": true], web: "http://wheatsville.coop/" , hours: "7:30am-11pm everyday")
        let place10 = Place(name: "University Baptist Church", description: "Religous", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": false, "vegan": false, "quiet": true], web: "www.google.com" , hours: "Bible Study 9:30am, Service 11am")
        let place11 = Place(name: "Cheer Up Charlies", description: "Bar", categories: ["lgbtq": true, "bathroom": false, "open_carry": true, "wheelchair": true, "vegan": false, "quiet": false], web: "www.google.com" , hours: "Tues-Sun 4pm-2am, Mon 6pm-2am")
        let place12 = Place(name: "Barbarella", description: "Bar", categories: ["lgbtq": true, "bathroom": false, "open_carry": true, "wheelchair": true, "vegan": false, "quiet": false], web: "www.google.com" , hours: "Tues-Sat 10pm-2:30am, Sun-Mon closed")
        let place13 = Place(name: "Amy's Ice Cream", description: "Food", categories: ["lgbtq": true, "bathroom": false, "open_carry": true, "wheelchair": true, "vegan": true, "quiet": false], web: "http://www.amysicecreams.com/" , hours: "Sun-Thurs 11:30am-12am, Fri/Sat 11:30am-1am")
        let place14 = Place(name: "The Iron Bear", description: "Bar", categories: ["lgbtq": true, "bathroom": false, "open_carry": true, "wheelchair": true, "vegan": false, "quiet": false], web: "http://theironbear.com/" ,hours: "3pm-2am everyday")
        let place15 = Place(name: "Birds Barbershop", description: "Salon", categories: ["lgbtq": true, "bathroom": true, "open_carry": true, "wheelchair": false, "vegan": false, "quiet": false], web: "http://birdsbarbershop.com/" , hours: "Mon-Fri 9am-8pm, Sat 9am-7pm, Sun 10am-6pm")
        let place16 = Place(name: "Elysium", description: "Club", categories: ["lgbtq": true, "bathroom": false, "open_carry": true, "wheelchair": true, "vegan": false, "quiet": false], web: "http://www.elysiumonline.net/" , hours: "Mon closed, Tue-Wed 10pm-2am, Thur-Sun 9:30pm-2am")
        let place17 = Place(name: "Tiff's Treats", description: "Food", categories: ["lgbtq": true, "bathroom": false, "open_carry": true, "wheelchair": true, "vegan": true, "quiet": true], web: "https://www.cookiedelivery.com/" , hours: "Mon-Fri 9am-11:45pm, Sat-Sun 10am-11:45pm")
        let place18 = Place(name: "Buffalo Exchange", description: "Shopping", categories: ["lgbtq": true, "bathroom": true, "open_carry": true, "wheelchair": true, "vegan": false, "quiet": false], web: "http://www.buffaloexchange.com/locations/austin/austin/" , hours:"Mon-Fri 9am-11:45pm, Sat-Sun 10am-11:45pm")
        let place19 = Place(name: "Gender and Sexuality Center- UT campus", description: "Hangout", categories: ["lgbtq": true, "bathroom": false, "open_carry": false, "wheelchair": true, "vegan": false, "quiet": true], web: "http://ddce.utexas.edu/genderandsexuality/" , hours: "Mon-Thurs 9am to 7pm, Fri 9am to 5pm, Summer Hours: Mon-Fri 9am-5pm")
        let place20 = Place(name: "Mother's Cafe", description: "Food", categories: ["lgbtq": true, "bathroom": true, "open_carry": false, "wheelchair": false, "vegan": true, "quiet": false], web: "http://motherscafeaustin.com/" , hours: "Mon-Fri 11am-10pm, Sat-Sun 10am-10pm")
        let place21 = Place(name: "University United Methodist Church", description: "Religious", categories: ["lgbtq": true, "bathroom": true, "open_carry": true, "wheelchair": false, "vegan": false, "quiet": true], web: "http://www.uumc.org/" , hours: "Sunday Service 8:30am/11am")
        let place22 = Place(name: "Austin's Pizza", description: "Food", categories: ["lgbtq": false, "bathroom": false, "open_carry": true, "wheelchair": false, "vegan": true, "quiet": false], web: "http://www.austinspizza.com/stores/guadalupe/" , hours: "Open 24 hours, 7 days a week")
        let place23 = Place(name: "Fuzzy's Taco Shop", description: "Food", categories: ["lgbtq": false, "bathroom": false, "open_carry": true, "wheelchair": false, "vegan": true, "quiet": false], web: "http://www.fuzzystacoshop.com/locations/30073-fuzzys-taco-shop-austin-tx" , hours: "10am-10pm everyday")
        let place24 = Place(name: "Juiceland", description: "Food", categories: ["lgbtq": false, "bathroom": false, "open_carry": true, "wheelchair": false, "vegan": true, "quiet": false], web: "http://www.juiceland.com/" , hours: "Mon-Sat 7am-8pm, Sun 8am-8pm")
        let place25 = Place(name: "Kerbey Lane Cafe", description: "Food", categories: ["lgbtq": false, "bathroom": false, "open_carry": true, "wheelchair": false, "vegan": true, "quiet": false], web: "http://kerbeylanecafe.com/locations/university" , hours: "Open 24 hours, 7 days a week")
        let place26 = Place(name: "Plucker's", description: "Food", categories: ["lgbtq": false, "bathroom": false, "open_carry": true, "wheelchair": false, "vegan": true, "quiet": false], web: "http://www.pluckers.com/" , hours: "Sun-Thurs 11am-2am, Fri-Sat 11am-3am")
        let place27 = Place(name: "Torchy's Tacos", description: "Food", categories: ["lgbtq": false, "bathroom": false, "open_carry": true, "wheelchair": false, "vegan": true, "quiet": false], web: "http://torchystacos.com/location/ut/" , hours: "Mon-Fri 7am-10pm, Sat-Sun 8am-10pm")
        let place28 = Place(name: "Whataburger", description: "Food", categories: ["lgbtq": false, "bathroom": false, "open_carry": true, "wheelchair": false, "vegan": true, "quiet": false], web: "http://whataburger.com/" , hours: "Open 24 hours, 7 days a week")
        let place29 = Place(name: "Fresh Plus", description: "Grocery", categories: ["lgbtq": false, "bathroom": false, "open_carry": true, "wheelchair": false, "vegan": true, "quiet": false], web: "http://freshplusaustin.com/" , hours: "8am-10pm everyday")
        let place30 = Place(name: "Taco Cabana", description: "Food", categories: ["lgbtq": false, "bathroom": false, "open_carry": true, "wheelchair": false, "vegan": true, "quiet": false], web: "http://www.tacocabana.com/" , hours: "Open 24 hours, 7 days a week")
        let place31 = Place(name: "Tom's Tabooley", description: "Food", categories: ["lgbtq": false, "bathroom": false, "open_carry": true, "wheelchair": false, "vegan": false, "quiet": false], web: "http://www.taboolery.com/" , hours: "11am-9pm everyday")
        let place32 = Place(name: "Trudy's Tex-Mex", description: "Food", categories: ["lgbtq": false, "bathroom": false, "open_carry": true, "wheelchair": false, "vegan": true, "quiet": false], web: "http://www.trudys.com/" , hours: "Mon-Thurs 2pm-2am, Fri 11am-2am, Sat-Sun 9am-2am")
        let place33 = Place(name: "University Federal Credit Union", description: "Bank", categories: ["lgbtq": false, "bathroom": false, "open_carry": true, "wheelchair": false, "vegan": false, "quiet": false], web: "http://Ufcu.org" , hours: "Mon-Fri 9am-6pm, Sat-Sun closed")
        let place34 = Place(name: "University Co-op", description: "Shopping", categories: ["lgbtq": false, "bathroom": false, "open_carry": false, "wheelchair": false, "vegan": false, "quiet": false], web: "http://www.universitycoop.com/" , hours: "Mon-Fri 8:30am-7:30pm, Sat 9:30am-6pm, Sun 11am-5pm")
        let place35 = Place(name: "Zen Japanese", description: "Food", categories: ["lgbtq": false, "bathroom": false, "open_carry": true, "wheelchair": false, "vegan": false, "quiet": false], web: "http://www.eatzen.com/" , hours: "Mon-Sat 11am-10pm, Sun 11:30am-10pm")
        
        Allplaces += [place1,place2, place3, place4, place5, place6, place7, place8, place9, place10, place11, place12, place13, place14, place15, place16, place17, place18, place19, place20 ,place21, place22, place23, place24, place25, place26, place27, place28, place29, place30, place31, place32, place33, place34, place35]
        
        
        
        
       // if lgbtqia == true
        //{
            for placesDic:Place in Allplaces
            {
                if (  (lgbtqia==true && placesDic.categories["lgbtq"] == true) || (genderNeeutral==true && placesDic.categories["bathroom"] == true) || (openCarry==true && placesDic.categories["open_carry"] == true) || (wheelChair==true && placesDic.categories["wheelchair"] == true)  || (vegan==true && placesDic.categories["vegan"] == true) || (quiet==true && placesDic.categories["quiet"] == true))
                {
                    selectPlaces.append(placesDic)
                    
                }
                           // }
        }
        /*if lgbtqia == true
        {
            for placesDic:Place in Allplaces
            {
                if placesDic.categories["lgbtq"] == true
                {
                    selectPlaces.append(placesDic)
                    
                }
                
                
            }
        }
        
        
        for places in selectPlaces
        {
            if places
        }*/
        
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
        return selectPlaces.count
    }

    
    override func tableView(tableView: UITableView, titleForHeaderInSection section : Int)
        -> String{
            return "Results"
            
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "PlacesTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier", forIndexPath: indexPath) as! PlacesTableViewCell
        let place = selectPlaces[indexPath.row]
        
        cell.namePlace.text = place.name
        cell.descriptionPlace.text = place.description

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let placeviewcontroller = self.storyboard?.instantiateViewControllerWithIdentifier("detailed") as! DetailViewController

        let r = indexPath.row
        //print(places[r].name)
        placeviewcontroller.place = selectPlaces[r]
        self.navigationController?.pushViewController(placeviewcontroller, animated: true)
        
    }
    
   /* override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerlabel = UILabel()
        
        headerlabel.sizeToFit()
        headerlabel.backgroundColor = UIColor(patternImage: UIImage(named: "logo.png")!)
        return headerlabel
    }*/
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
        
    }

    
}
