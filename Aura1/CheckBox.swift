//
//  CheckBox.swift
//  Aura1
//
//  Created by Paola Jara on 3/4/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class CheckBox: UIButton {
    
    //images
    let checkedImage = UIImage(named : "checkedImage")
    
    let uncheckedImage = UIImage (named: "uncheckedImage")
    
    
    
    
    // bool property
    
    
    var  isChecked:Bool = false{
    //anytime value is changed wil call code
    
        didSet{
            if isChecked == true{
                self.setImage(checkedImage, forState: .Normal)
            }
            else{
                self.setImage(uncheckedImage, forState: .Normal)
            
            }
    
        }
    
    }
    
   override func awakeFromNib()
   {
    self.addTarget(self, action: "buttonClicked:" , forControlEvents: UIControlEvents.TouchUpInside)
        self.isChecked = false
    }
    
    func buttonClicked(sender:UIButton){
        if(sender==self)
        {
            if isChecked == true{
                isChecked = false
                
            }
            else{
                isChecked = true
            }
        }
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}