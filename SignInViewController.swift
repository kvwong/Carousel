//
//  SignInViewController.swift
//  Carousel
//
//  Created by Kevin Wong on 9/27/15.
//  Copyright © 2015 Kevin Wong. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UIAlertViewDelegate {
    @IBOutlet weak var loginLines: UIImageView!
    @IBOutlet weak var signInText: UIImageView!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var ctaImage: UIImageView!
    
    var initialSignInTextY: CGFloat!
    var initialEmailY: CGFloat!
    var initialPasswordY: CGFloat!
    var initialButtonY: CGFloat!
    var initialForgotY: CGFloat!
    var initialLineY: CGFloat!
    var initialSignInImgY: CGFloat!
    let offsetText: CGFloat = -70
    let offsetCTA: CGFloat = -220

    override func viewDidLoad() {
        super.viewDidLoad()

        initialSignInTextY = signInText.frame.origin.y
        initialEmailY = emailText.frame.origin.y
        initialPasswordY = passwordText.frame.origin.y
        initialButtonY = signInButton.frame.origin.y
        initialForgotY = forgotPasswordButton.frame.origin.y
        initialLineY = loginLines.frame.origin.y
        initialSignInImgY = ctaImage.frame.origin.y
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
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
            
            self.signInText.frame.origin = CGPoint(x: self.signInText.frame.origin.x, y: self.initialSignInTextY + self.offsetText)
            self.emailText.frame.origin = CGPoint(x: self.emailText.frame.origin.x, y: self.initialEmailY + self.offsetText)
            self.passwordText.frame.origin = CGPoint(x: self.passwordText.frame.origin.x, y: self.initialPasswordY + self.offsetText)
            self.loginLines.frame.origin = CGPoint(x: self.loginLines.frame.origin.x, y: self.initialLineY + self.offsetText)
            self.signInButton.frame.origin = CGPoint(x: self.signInButton.frame.origin.x, y: self.initialButtonY + self.offsetCTA)
            self.forgotPasswordButton.frame.origin = CGPoint(x: self.forgotPasswordButton.frame.origin.x, y: self.initialForgotY + self.offsetCTA)
            self.ctaImage.frame.origin = CGPoint(x: self.ctaImage.frame.origin.x, y: self.initialSignInImgY + self.offsetCTA)
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
            
            self.signInText.frame.origin = CGPoint(x: self.signInText.frame.origin.x, y: self.initialSignInTextY)
            self.emailText.frame.origin = CGPoint(x: self.emailText.frame.origin.x, y: self.initialEmailY)
            self.passwordText.frame.origin = CGPoint(x: self.passwordText.frame.origin.x, y: self.initialPasswordY)
            self.loginLines.frame.origin = CGPoint(x: self.loginLines.frame.origin.x, y: self.initialLineY)
            self.signInButton.frame.origin = CGPoint(x: self.signInButton.frame.origin.x, y: self.initialButtonY)
            self.forgotPasswordButton.frame.origin = CGPoint(x: self.forgotPasswordButton.frame.origin.x, y: self.initialForgotY)
            self.ctaImage.frame.origin = CGPoint(x: self.ctaImage.frame.origin.x, y: self.initialSignInImgY)
            }, completion: nil)
    }
    @IBAction func backNav(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }

    
    @IBAction func onTap(sender: AnyObject) {
        emailText.endEditing(true)
        passwordText.endEditing(true)
    }
    
    @IBAction func emailDidEnd(sender: AnyObject) {
        if emailText.text == "" {
            let alertController = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: .Alert)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            
            alertController.addAction(OKAction)
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
        }
    }
    
    func checkPassword() {
        if passwordText.text == "password" {
            let successAlert = UIAlertView(title: "Signing in...", message: "",delegate: nil, cancelButtonTitle: nil)
            
            successAlert.show()
            
            delay(2) {
                successAlert.dismissWithClickedButtonIndex(-1, animated: true)
                self.performSegueWithIdentifier("startWelcome", sender: self)
            }
        } else {
            let passwordAlert = UIAlertView(title: "Incorrect Password", message: "Please try again", delegate: nil, cancelButtonTitle: "Okay")
            
            passwordAlert.show()
        }
    }
    
    @IBAction func signIn(sender: AnyObject) {
        
        self.checkPassword()

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
