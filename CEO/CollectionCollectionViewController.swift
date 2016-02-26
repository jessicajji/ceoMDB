//
//  CollectionCollectionViewController.swift
//  Memeify
//
//  Created by Jessica Ji on 2/20/16.
//  Copyright © 2016 MOBILEDEVSBERKELEY. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cell"

class CollectionCollectionViewController: UICollectionViewController {
    
    var names = ["Steve Jobs", "Tim Cook", "Bill Gates"]
    
    var jokes = ["How many programmers does it take to change a lightbulb? ", "Why was the JavaScript developer sad? ", "Why do Java programmers have to wear glasses?"]
    
    var answers = ["None. It's a hardware problem!", "Because he didn't Node to express himself!", "Because they don't C#!"]
    
//    var newJokes = ["Why was the JavaScript developer sad? Because he didn't Node to express himself.","Why did the developer go broke? Because he used up all his cache.","How many programmers does it take to change a lightbulb? None. It's a hardware problem."]
    var images = ["steve", "tim", "bill"]
    
//    var steve = ["iPod","iPhone", "iPad", "Macbook"]
//    var tim = ["iPod","iPhone", "iPad", "Macbook", "Apple Watch"]
//    var bill = ["Word", "Powerpoint", "Excel", "Outlook"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//          self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

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
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return names.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
    
        cell.imageView.image = UIImage(named: images[indexPath.item])
        cell.imageLabel.text = names[indexPath.item]
        cell.jokeLabel.text = jokes[indexPath.item]
        cell.backgroundColor = UIColor.whiteColor()
        cell.punchline = answers[indexPath.item]
        
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("toProduct",sender: indexPath)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "toProduct") {
            let productsView = segue.destinationViewController as! TableViewController
            productsView.rowIndex = sender!.item
        }
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
