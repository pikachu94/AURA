//
//  PlacesTableViewCell.swift
//  Aura1
//
//  Created by Paola Jara on 2/26/16.
//  Copyright © 2016 Apple Inc. All rights reserved.
//

import UIKit

class PlacesTableViewCell: UITableViewCell {
    
    
    //Properties
    
    @IBOutlet weak var PlaceName: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
