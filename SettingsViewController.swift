//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Kevin Wong on 9/27/15.
//  Copyright © 2015 Kevin Wong. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsImage: UIImageView!
    @IBOutlet weak var settingsScroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        settingsScroll.contentSize = settingsImage.image!.size
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBOutlet weak var signOut: UIButton!
    
    @IBAction func signOutButton(sender: AnyObject) {
        print("signedout")
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
