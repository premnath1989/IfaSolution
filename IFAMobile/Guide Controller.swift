//
//  Guide Controller.swift
//  IFAMobile
//
//  Created by Ibrahim on 02/06/2016.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// CLASS

class GuideController : UIView
{
    // INITIALIZATION
    
    @IBOutlet var viewNavigation : UIView!
    
    @IBOutlet var labelProspect : UILabel!
    @IBOutlet var labelCalendar : UILabel!
    @IBOutlet var labelMail : UILabel!
    @IBOutlet var labelNote : UILabel!
    @IBOutlet var labelAgentName : UILabel!
    @IBOutlet var labelSignOut : UILabel!
    
    @IBOutlet var imageViewAgentPhoto : UIImageView!
    
    
    // SETUP
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        
        NSBundle.mainBundle().loadNibNamed("Navigation Layout", owner: self, options: nil)[0] as! UIView
        self.addSubview(viewNavigation)
        viewNavigation.frame = self.bounds
        
        
        // LAYOUT SETTING
        
        labelAgentName.text = NSLocalizedString("PROFILE_AGENT_DEFAULTNAME", comment: "")
        imageViewAgentPhoto.image = UIImage(named: "PROFILE_AGENT_DEFAULTPHOTO")
        
        
        // LANGUAGE
        
        labelProspect.text = NSLocalizedString("NAVIGATION_PROSPECT", comment: "")
        labelCalendar.text = NSLocalizedString("NAVIGATION_CALENDAR", comment: "")
        labelMail.text = NSLocalizedString("NAVIGATION_MAIL", comment: "")
        labelNote.text = NSLocalizedString("NAVIGATION_NOTE", comment: "")
        labelSignOut.text = NSLocalizedString("PROFILE_AGENT_SIGNOUT", comment: "").lowercaseString
    }
}