//
//  GetStartedViewController.swift
//  Carousel
//
//  Created by Kevin Wong on 9/28/15.
//  Copyright © 2015 Kevin Wong. All rights reserved.
//

import UIKit

class GetStartedViewController: UIViewController {

    @IBOutlet weak var checkViewPhoto: UIImageView!
    @IBOutlet weak var checkTimeWheel: UIImageView!
    @IBOutlet weak var checkSharePhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        checkViewPhoto.alpha = 0
        checkTimeWheel.alpha = 0
        checkSharePhoto.alpha = 0
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion:nil)
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
