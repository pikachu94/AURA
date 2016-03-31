//
//  MainScreen.swift
//  Aura1
//
//  Created by Paola Jara on 3/4/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit
//import UIColor

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
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        goToButton.layer.borderWidth = 0.5
        goToButton.layer.borderColor = UIColor.blackColor().CGColor
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
