//
//  DetailViewController.swift
//  Aura1
//
//  Created by Barbosa, Jamie L on 3/30/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var place:Place?
    @IBOutlet weak var placename: UILabel!
    
    @IBOutlet weak var gaylabel: UILabel!
    
    @IBOutlet weak var bathlabel: UILabel!
    
    @IBOutlet weak var gunlabel: UILabel!
    
    @IBOutlet weak var wheellabel: UILabel!
    
    @IBOutlet weak var foodlabel: UILabel!
    
    @IBOutlet weak var quietlabel: UILabel!
    
    @IBOutlet weak var hourslabel: UILabel!
    
    
    @IBAction func webbutton(sender: AnyObject) {
        let urlstring = NSURL(string: place!.web)
        UIApplication.sharedApplication().openURL(urlstring!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        placename.text = place!.name
        hourslabel.text = place!.hours
        
        
        if(place!.categories["lgbtq"] == true){
            gaylabel.text = "Yes"
        }
        else{
            gaylabel.text = "No"
        }
        
        
        if(place!.categories["bathroom"] == true){
            bathlabel.text = "Yes"
        }
        else{
            bathlabel.text = "No"
        }
        
        if(place!.categories["open_carry"] == true){
            gunlabel.text = "Yes"
        }
        else{
            gunlabel.text = "No"
        }
        
        
        if(place!.categories["wheelchair"] == true){
            wheellabel.text = "Yes"
        }
        else{
            wheellabel.text = "No"
        }
        
        
        if(place!.categories["vegan"] == true){
            foodlabel.text = "Yes"
        }
        else{
            foodlabel.text = "No"
        }
        
        
        
        if(place!.categories["quiet"] == true){
            quietlabel.text = "Yes"
        }
        else{
            quietlabel.text = "No"
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
