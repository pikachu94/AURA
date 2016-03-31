//
//  Place.swift
//  Aura1
//
//  Created by Paola Jara on 3/4/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit


class Place{
    var name : String
    var description: String
    
    var categories: [ String : Bool ]
    var web : String
    var hours : String

    init( name: String, description: String, categories: Dictionary<String, Bool>, web: String, hours: String)
//    init( name: String, description: String, lgbtq: Bool, bathroom: Bool, open_carry: Bool, wheelchair: Bool, vegan: Bool, quiet: Bool)
{
    self.name = name
    self.description = description
    self.categories = categories
    self.web = web
    self.hours = hours
    
//    self.lgbtq = lgbtq
//    self.bathroom = bathroom
//    self.open_carry = open_carry
//    self.wheelchair = wheelchair
//    self .vegan = vegan
//    self.quiet = quiet
}
}