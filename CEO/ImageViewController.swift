//
//  ImageViewController.swift
//  Memeify
//
//  Created by Jessica Ji on 2/24/16.
//  Copyright © 2016 MOBILEDEVSBERKELEY. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    var imageName = ""
    var imageDescription = ""
    
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var zoomImage: UIImageView!
    @IBOutlet weak var aboutProduct: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zoomImage.image = UIImage(named: imageName)
        aboutProduct.text = imageDescription
    
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
