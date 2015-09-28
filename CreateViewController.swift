//
//  CreateViewController.swift
//  Carousel
//
//  Created by Kevin Wong on 9/27/15.
//  Copyright © 2015 Kevin Wong. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var createText: UIImageView!
    @IBOutlet weak var createLines: UIImageView!
    @IBOutlet weak var checkbox: UIButton!
    @IBOutlet weak var agreeImage: UIButton!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var termsImage: UIImageView!
    @IBOutlet weak var createImage: UIImageView!
    @IBOutlet weak var checkboxTerms: UIButton!
    
    var initialFirstNameY: CGFloat!
    var initialLastNameY: CGFloat!
    var initialEmailY: CGFloat!
    var initialPasswordY: CGFloat!
    var initialCreateTextY: CGFloat!
    var initialCreateLinesY: CGFloat!
    var initialCheckboxY: CGFloat!
    var initialAgreementImageY: CGFloat!
    var initialCreateButtonY: CGFloat!
    var initialCreateImageY: CGFloat!
    var initialTermsImageY: CGFloat!
    let offsetText: CGFloat = -110
    let offsetCTA: CGFloat = -140

    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialFirstNameY = firstNameText.frame.origin.y
        initialLastNameY = lastNameText.frame.origin.y
        initialEmailY = emailText.frame.origin.y
        initialPasswordY = passwordText.frame.origin.y
        initialCreateTextY = createText.frame.origin.y
        initialCreateLinesY = createLines.frame.origin.y
        initialCheckboxY = checkbox.frame.origin.y
        initialAgreementImageY = agreeImage.frame.origin.y
        initialCreateButtonY = createButton.frame.origin.y
        initialCreateImageY = createImage.frame.origin.y
        initialTermsImageY = termsImage.frame.origin.y
        checkboxTerms.selected = false
        
        // Do any additional setup after loading the view.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func checkbox(sender: AnyObject) {
        if checkboxTerms.selected == false
        {
            checkboxTerms.selected = true
            //print(checkboxTerms.selected)
        } else {
            checkboxTerms.selected = false
            //print(checkboxTerms.selected)
        }
        
    }
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        let kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        let durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        let animationDuration = durationValue.doubleValue
        let curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        let animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            self.firstNameText.frame.origin = CGPoint(x: self.firstNameText.frame.origin.x, y: self.initialFirstNameY + self.offsetText)
            self.lastNameText.frame.origin = CGPoint(x: self.lastNameText.frame.origin.x, y: self.initialLastNameY + self.offsetText)
            self.emailText.frame.origin = CGPoint(x: self.emailText.frame.origin.x, y: self.initialEmailY + self.offsetText)
            self.passwordText.frame.origin = CGPoint(x: self.passwordText.frame.origin.x, y: self.initialPasswordY + self.offsetText)
            self.createText.frame.origin = CGPoint(x: self.createText.frame.origin.x, y: self.initialCreateTextY + self.offsetText)
            self.createLines.frame.origin = CGPoint(x: self.createLines.frame.origin.x, y: self.initialCreateLinesY + self.offsetText)
            self.checkbox.frame.origin = CGPoint(x: self.checkbox.frame.origin.x, y: self.initialCheckboxY + self.offsetText)
            self.termsImage.frame.origin = CGPoint(x: self.termsImage.frame.origin.x, y: self.initialTermsImageY + self.offsetText)
            
            self.createButton.frame.origin = CGPoint(x: self.createButton.frame.origin.x, y: self.initialCreateButtonY + self.offsetCTA)
            self.createImage.frame.origin = CGPoint(x: self.createImage.frame.origin.x, y: self.initialCreateImageY + self.offsetCTA)
            }, completion: nil)
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        let kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        let durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        let animationDuration = durationValue.doubleValue
        let curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        let animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(rawValue: UInt(animationCurve << 16)), animations: {
            
            self.firstNameText.frame.origin = CGPoint(x: self.firstNameText.frame.origin.x, y: self.initialFirstNameY)
            self.lastNameText.frame.origin = CGPoint(x: self.lastNameText.frame.origin.x, y: self.initialLastNameY)
            self.emailText.frame.origin = CGPoint(x: self.emailText.frame.origin.x, y: self.initialEmailY)
            self.passwordText.frame.origin = CGPoint(x: self.passwordText.frame.origin.x, y: self.initialPasswordY)
            self.createText.frame.origin = CGPoint(x: self.createText.frame.origin.x, y: self.initialCreateTextY)
            self.createLines.frame.origin = CGPoint(x: self.createLines.frame.origin.x, y: self.initialCreateLinesY)
            self.checkbox.frame.origin = CGPoint(x: self.checkbox.frame.origin.x, y: self.initialCheckboxY)
            self.termsImage.frame.origin = CGPoint(x: self.termsImage.frame.origin.x, y: self.initialTermsImageY)
            
            self.createButton.frame.origin = CGPoint(x: self.createButton.frame.origin.x, y: self.initialCreateButtonY)
            self.createImage.frame.origin = CGPoint(x: self.createImage.frame.origin.x, y: self.initialCreateImageY)
            }, completion: nil)
    }
    
    @IBAction func backNav(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func onTap(sender: AnyObject) {
        firstNameText.endEditing(true)
        lastNameText.endEditing(true)
        emailText.endEditing(true)
        passwordText.endEditing(true)
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
