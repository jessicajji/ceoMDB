//
//  CollectionViewCell.swift
//  Memeify
//
//  Created by Jessica Ji on 2/20/16.
//  Copyright © 2016 MOBILEDEVSBERKELEY. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var punchline = ""
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    @IBOutlet weak var jokeLabel: UILabel!
    @IBAction func displayAnswer(sender: AnyObject) {
        jokeLabel.text = punchline
    }
    
}
