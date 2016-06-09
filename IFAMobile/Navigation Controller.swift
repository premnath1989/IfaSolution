//
//  Navigation Controller.swift
//  IFAMobile
//
//  Created by Ibrahim on 02/06/2016.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// CLASS

class NavigationController : UIView
{
    // INITIALIZATION
    
    @IBOutlet var viewNavigation : UIView!
    
    @IBOutlet var buttonProspect : UIButton!
    @IBOutlet var buttonCalendar : UIButton!
    @IBOutlet var buttonMail : UIButton!
    @IBOutlet var buttonNote : UIButton!
    @IBOutlet var labelAgentName : UILabel!
    @IBOutlet var labelSignOut : UILabel!
    
    @IBOutlet var imageViewAgentPhoto : UIImageView!
    
    
    // SETUP
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        
        NSBundle.mainBundle().loadNibNamed("Navigation Layout", owner: self, options: nil)[0] as! UIView
        self.heightAnchor.constraintEqualToConstant(60).active = true
        self.addSubview(viewNavigation)
        viewNavigation.frame = self.bounds
        
        
        // LAYOUT SETTING
        
        labelAgentName.text = NSLocalizedString("PROFILE_AGENT_DEFAULTNAME", comment: "")
        imageViewAgentPhoto.image = UIImage(named: PHOTO_PROFILE_SMALL)
        
        
        // LANGUAGE
        
        buttonProspect.setTitle(NSLocalizedString("NAVIGATION_PROSPECT", comment: ""), forState: .Normal)
        buttonCalendar.setTitle(NSLocalizedString("NAVIGATION_CALENDAR", comment: ""), forState: .Normal)
        buttonMail.setTitle(NSLocalizedString("NAVIGATION_MAIL", comment: ""), forState: .Normal)
        buttonNote.setTitle(NSLocalizedString("NAVIGATION_NOTE", comment: ""), forState: .Normal)
        labelSignOut.text = NSLocalizedString("PROFILE_AGENT_SIGNOUT", comment: "").lowercaseString
    }
    
    // EVENT
    
    @IBAction func goToCalendar(sender : UIButton)
    {
        UIApplication.sharedApplication().openURL(NSURL(string: "calshow://")!)
    }
    
    @IBAction func goToMail(sender : UIButton)
    {
        /* let recipients : String = "mailto:first@example.com?cc=second@example.com,third@example.com&subject=Hello from California!"
        let message : String = "&body=It is raining in sunny California!"
        let email : String = String.localizedStringWithFormat("%@%@", recipients, message)
        email.stringByAddingPercentEncodingWithAllowedCharacters(NSUTF8StringEncoding) */
        
        UIApplication.sharedApplication().openURL(NSURL(string: "mailto://")!)
    }
    
//    @IBAction func goToProspect(sender : UIButton)
//    {
//        IBActiongoToProspect(sender, ViewController: self)
//    }
//    
//    func IBActiongoToProspect(Sender : AnyObject, ViewController : UIViewController) -> Void
//    {
//        let pageProspect = ViewController.storyboard?.instantiateViewControllerWithIdentifier("PageProspect") as! ProspectAddBasicController
//        ViewController.presentViewController(pageProspect, animated: true, completion: nil)
//    }
}