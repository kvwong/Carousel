//
//  WalkthroughViewController.swift
//  Carousel
//
//  Created by Kevin Wong on 9/27/15.
//  Copyright © 2015 Kevin Wong. All rights reserved.
//

import UIKit

class WalkthroughViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var welcomeScroll: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var backupImage: UIImageView!
    @IBOutlet weak var backupSwitch: UISwitch!
    @IBOutlet weak var carouselSpinButton: UIButton!
    
    var pageCount : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeScroll.delegate = self
        self.welcomeScroll.contentSize = CGSizeMake(self.welcomeScroll.frame.width * 4, self.welcomeScroll.frame.height)
        
        backupImage.alpha = 0
        backupSwitch.alpha = 0
        carouselSpinButton.alpha = 0
        
    }
    
        // Do any additional setup after loading the view.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let page : Int = Int(round(welcomeScroll.contentOffset.x / 320))
        pageControl.currentPage = page
        pageCount = page
        print(pageCount)
        
        if pageCount == 3 {
            UIView.animateWithDuration(0.3, animations: {
            self.backupImage.alpha = 1
            self.backupSwitch.alpha = 1
            self.carouselSpinButton.alpha = 1
            })
        } else {
            UIView.animateWithDuration(0.3, animations: {
            self.backupImage.alpha = 0
            self.backupSwitch.alpha = 0
            self.carouselSpinButton.alpha = 0
            })
        }
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
