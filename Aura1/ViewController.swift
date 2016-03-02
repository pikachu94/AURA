//
//  ViewController.swift
//  Aura1
//
//  Created by Paola Jara on 2/26/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Mark: properties
    
    var Places = [Place]()
    
    
    

    @IBOutlet weak var checkBox1: UIButton!
    
    @IBOutlet weak var checkBox2: UIButton!
    
    @IBOutlet weak var checkBox3: UIButton!
    //MArk: Actions
    @IBOutlet weak var checkBox4: UIButton!
    
    @IBOutlet weak var checkBox5: UIButton!
    @IBOutlet weak var checkBox6: UIButton!
    @IBAction func checkAction1(sender: AnyObject) {
    }
    
    @IBAction func checkAction2(sender: AnyObject) {
    }
    
    @IBAction func checkAction3(sender: AnyObject) {
    }
   
    @IBAction func checkAction4(sender: AnyObject) {
    }
    
    @IBAction func checkAction5(sender: AnyObject) {
    }
    @IBAction func checkAction6(sender: AnyObject) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.Places = [Place(name : "Spiderhouse")]
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

