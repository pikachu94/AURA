//
//  placeviewcontroller.swift
//  Aura1
//
//  Created by Barbosa, Jamie L on 3/22/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import Foundation
import UIKit

class Placeviewcontroller: UIViewController {

    @IBOutlet weak var Placenamelabel: UILabel!
    var placename = ""

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        Placenamelabel.text = placename
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    
    
    

    
}