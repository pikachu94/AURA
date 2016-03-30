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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        placename.text = place!.name
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
