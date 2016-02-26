//
//  TableViewCell.swift
//  Memeify
//
//  Created by Jessica Ji on 2/23/16.
//  Copyright © 2016 MOBILEDEVSBERKELEY. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var productName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
