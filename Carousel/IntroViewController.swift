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

    
    var xOffsets : [Float] = [-66, 45, 10, -100, -110, 90]
    var yOffsets : [Float] = [-285, -240, -408, -480, -500, -408]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, 10]
    
    func convertValue(value: Float, r1Min: Float, r1Max: Float, r2Min: Float, r2Max: Float) -> Float { let ratio = (r2Max - r2Min) / (r1Max - r1Min); return value * ratio + r2Min - r1Min * ratio
    }
    
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
        
        // Do any additional setup after loading the views
    
        introScroll.sendSubviewToBack(introView)
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls
        
        let offset = Float(introScroll.contentOffset.y)
        
        let tx0 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[0], r2Max: 0)
        let ty0 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[0], r2Max: 0)
        let scale0 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[0], r2Max: 1)
        let rotation0 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[0], r2Max: 0)
        
        let tx1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[1], r2Max: 0)
        let ty1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[1], r2Max: 0)
        let scale1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[1], r2Max: 1)
        let rotation1 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[1], r2Max: 0)
        
        let tx2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[2], r2Max: 0)
        let ty2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[2], r2Max: 0)
        let scale2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[2], r2Max: 1)
        let rotation2 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[2], r2Max: 0)
        
        let tx3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[3], r2Max: 0)
        let ty3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[3], r2Max: 0)
        let scale3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[3], r2Max: 1)
        let rotation3 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[0], r2Max: 0)
        
        let tx4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[4], r2Max: 0)
        let ty4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[4], r2Max: 0)
        let scale4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[4], r2Max: 1)
        let rotation4 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[4], r2Max: 0)
        
        let tx5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: xOffsets[5], r2Max: 0)
        let ty5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: yOffsets[5], r2Max: 0)
        let scale5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: scales[5], r2Max: 1)
        let rotation5 = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: rotations[5], r2Max: 0)
        
        // Moves, scales and rotates photo with bunny ears
        photo_bunnyears.transform = CGAffineTransformMakeTranslation(CGFloat(tx0), CGFloat(ty0))
        photo_bunnyears.transform = CGAffineTransformScale(photo_bunnyears.transform, CGFloat(scale0), CGFloat(scale0))
        photo_bunnyears.transform = CGAffineTransformRotate(photo_bunnyears.transform, CGFloat(Double(rotation0) * M_PI / 180))
        
        // Moves, scales and rotates photo with deer
        photo_deer.transform = CGAffineTransformMakeTranslation(CGFloat(tx1), CGFloat(ty1))
        photo_deer.transform = CGAffineTransformScale(photo_deer.transform, CGFloat(scale1), CGFloat(scale1))
        photo_deer.transform = CGAffineTransformRotate(photo_deer.transform, CGFloat(Double(rotation1) * M_PI / 180))
        
        // Moves, scales and rotates photo with fishing
        photo_fishing.transform = CGAffineTransformMakeTranslation(CGFloat(tx2), CGFloat(ty2))
        photo_fishing.transform = CGAffineTransformScale(photo_fishing.transform, CGFloat(scale2), CGFloat(scale2))
        photo_fishing.transform = CGAffineTransformRotate(photo_fishing.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        // Moves, scales and rotates photo with lochness
        photo_dog.transform = CGAffineTransformMakeTranslation(CGFloat(tx3), CGFloat(ty3))
        photo_dog.transform = CGAffineTransformScale(photo_dog.transform, CGFloat(scale3), CGFloat(scale3))
        photo_dog.transform = CGAffineTransformRotate(photo_dog.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
        // Moves, scales and rotates photo with cabin
        photo_cabin.transform = CGAffineTransformMakeTranslation(CGFloat(tx4), CGFloat(ty4))
        photo_cabin.transform = CGAffineTransformScale(photo_cabin.transform, CGFloat(scale4), CGFloat(scale4))
        photo_cabin.transform = CGAffineTransformRotate(photo_cabin.transform, CGFloat(Double(rotation4) * M_PI / 180))
        
        // Moves, scales and rotates photo with dog
        photo_lochness.transform = CGAffineTransformMakeTranslation(CGFloat(tx5), CGFloat(ty5))
        photo_lochness.transform = CGAffineTransformScale(photo_lochness.transform, CGFloat(scale5), CGFloat(scale5))
        photo_lochness.transform = CGAffineTransformRotate(photo_lochness.transform, CGFloat(Double(rotation5) * M_PI / 180))
        
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
