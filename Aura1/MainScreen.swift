//
//  MainScreen.swift
//  Aura1
//
//  Created by Paola Jara on 3/4/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit
//import UIColor


var lgbtqia = false;
var genderNeeutral = false;
var openCarry = false;
var wheelChair = false;
var vegan = false;
var quiet = false;


class MainScreen: UIViewController {

    @IBOutlet weak var checkBox1: CheckBox!
    
    
    @IBOutlet weak var checkBox2: CheckBox!
    
    @IBOutlet weak var checkBox3: CheckBox!
    @IBOutlet weak var checkBox4: CheckBox!
    @IBOutlet weak var checkBox5: CheckBox!
    @IBOutlet weak var checkBox6: CheckBox!
    
    @IBOutlet weak var goToButton: UIButton!
    @IBAction func goToButton(sender: AnyObject) {
        let ThirdVC = self.storyboard?.instantiateViewControllerWithIdentifier("PlacesNav")
        self.presentViewController(ThirdVC!, animated: true, completion: nil)
        
        
        
        
        if (checkBox1.isChecked == true)
            
            
        {
            lgbtqia = true;
        }
        
        if (checkBox2.isChecked == true)
            
        {
            genderNeeutral = true;
        }
        if(checkBox3.isChecked == true)
        {
            openCarry = true;
            
        }
        if(checkBox4.isChecked == true)
        {
            wheelChair = true;
            
        }
        if(checkBox5.isChecked == true)
        {
            vegan = true;
        }
        if(checkBox6.isChecked == true)
            
        {
            quiet = true;
            
        }
        
        
      
        

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        goToButton.layer.borderWidth = 0.5
        //goToButton.layer.borderColor = UIColor.blackColor().CGColor
        // Do any additional setup after loading the view.
        
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
