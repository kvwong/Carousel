//
//  IntroViewController.swift
//  Carousel
//
//  Created by Kevin Wong on 9/25/15.
//  Copyright © 2015 Kevin Wong. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var introView: UIImageView!
    @IBOutlet weak var photo_bunnyears: UIImageView!
    @IBOutlet weak var photo_deer: UIImageView!
    @IBOutlet weak var photo_fishing: UIImageView!
    @IBOutlet weak var photo_lochness: UIImageView!
    @IBOutlet weak var photo_cabin: UIImageView!
    @IBOutlet weak var photo_dog: UIImageView!
    @IBOutlet weak var createAccountButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var introScroll: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        introScroll.delegate = self
        introScroll.contentSize = introView.image!.size
        
        photo_bunnyears.frame.origin.x = 46
        photo_bunnyears.frame.origin.y = 744
        photo_bunnyears.frame.size.width = 152
        photo_bunnyears.frame.size.height = 152

        photo_deer.frame.origin.x = 200
        photo_deer.frame.origin.y = 744
        photo_deer.frame.size.width = 76
        photo_deer.frame.size.height = 76
        
        photo_fishing.frame.origin.x = 200
        photo_fishing.frame.origin.y = 820
        photo_fishing.frame.size.width = 76
        photo_fishing.frame.size.height = 76
        
        photo_dog.frame.origin.x = 200
        photo_dog.frame.origin.y = 898
        photo_dog.frame.size.width = 76
        photo_dog.frame.size.height = 76
        
        photo_cabin.frame.origin.x = 123
        photo_cabin.frame.origin.y = 898
        photo_cabin.frame.size.width = 76
        photo_cabin.frame.size.height = 76
        
        photo_lochness.frame.origin.x = 46
        photo_lochness.frame.origin.y = 897
        photo_lochness.frame.size.width = 76
        photo_lochness.frame.size.height = 76
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
    }

    @IBAction func createAccount(sender: AnyObject) {
    }

    @IBAction func signIn(sender: AnyObject) {
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
