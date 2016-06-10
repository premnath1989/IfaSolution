//
//  Landing Controller.swift
//  IFAMobile
//
//  Created by Ibrahim Aziz Tejokusumo on 6/9/16.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// CLASS

class HomeController: UIViewController
{
    // INITIALIZATION
    
    @IBOutlet var labelHeaderTitle : UILabel!
    @IBOutlet var labelHeaderDescription : UILabel!
    
    @IBOutlet var labelAgentInformationTitle : UILabel!
    @IBOutlet var labelCalendarTitle : UILabel!
    @IBOutlet var labelNoteTitle : UILabel!
    
    @IBOutlet var labelAgentCode : UILabel!
    @IBOutlet var labelBranch : UILabel!
    @IBOutlet var labelArea : UILabel!
    @IBOutlet var labelKCU : UILabel!
    @IBOutlet var labelChannelName : UILabel!
    @IBOutlet var labelSupervisor : UILabel!
    @IBOutlet var labelState : UILabel!
    @IBOutlet var labelActiveDate : UILabel!
    @IBOutlet var labelExpiredDate : UILabel!
    
    @IBOutlet var labelPropertyAgentCode : UILabel!
    @IBOutlet var labelPropertyBranch : UILabel!
    @IBOutlet var labelPropertyArea : UILabel!
    @IBOutlet var labelPropertyKCU : UILabel!
    @IBOutlet var labelPropertyChannelName : UILabel!
    @IBOutlet var labelPropertySupervisor : UILabel!
    @IBOutlet var labelPropertyState : UILabel!
    @IBOutlet var labelPropertyActiveDate : UILabel!
    @IBOutlet var labelPropertyExpiredDate : UILabel!
    
    @IBOutlet var labelMonday : UILabel!
    @IBOutlet var labelTuesday : UILabel!
    @IBOutlet var labelWednesday : UILabel!
    @IBOutlet var labelThursday : UILabel!
    @IBOutlet var labelFriday : UILabel!
    @IBOutlet var labelSaturday : UILabel!
    @IBOutlet var labelSunday : UILabel!
    
    @IBOutlet var labelTodaysPlan : UILabel!
    
    @IBOutlet var textFieldTodaysPlan : UITextField!
    
    
    // VIEW DID LOAD
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // LANGUAGE
        
        labelHeaderTitle.text = NSLocalizedString("HEADER_PROSPECT_TITLE", comment: "")
        labelHeaderDescription.text = NSLocalizedString("HEADER_PROSPECT_DESCRIPTION", comment: "")
        
        labelAgentInformationTitle.text = NSLocalizedString("TITLE_EDUCATIONPLAN_DETAILINFORMATION", comment: "").uppercaseString
        labelCalendarTitle.text = NSLocalizedString("NAVIGATION_CALENDAR", comment: "").uppercaseString
        labelNoteTitle.text = NSLocalizedString("NAVIGATION_NOTE", comment: "").uppercaseString
        
        labelTodaysPlan.text = NSLocalizedString("FIELD_TODAYSPLAN", comment: "")
        
        labelAgentCode.text = NSLocalizedString("FIELD_AGENTCODE", comment: "")
        labelBranch.text = NSLocalizedString("FIELD_BRANCH", comment: "")
        labelArea.text = NSLocalizedString("FIELD_AREA", comment: "")
        labelKCU.text = NSLocalizedString("FIELD_KCU", comment: "")
        labelChannelName.text = NSLocalizedString("FIELD_CHANNELNAME", comment: "")
        labelSupervisor.text = NSLocalizedString("FIELD_SUPERVISOR", comment: "")
        labelState.text = NSLocalizedString("FIELD_STATE", comment: "")
        labelActiveDate.text = NSLocalizedString("FIELD_ACTIVEDATE", comment: "")
        labelExpiredDate.text = NSLocalizedString("FIELD_EXPIREDDATE", comment: "")
        
        labelPropertyAgentCode.text = "123456"
        labelPropertyBranch.text = "InfoConnect Malaysia"
        labelPropertyArea.text = "Selangor"
        labelPropertyKCU.text = "Petaling Jaya"
        labelPropertyChannelName.text = "In Branch"
        labelPropertySupervisor.text = "Mr. Lim"
        labelPropertyState.text = "Active"
        labelPropertyActiveDate.text = "Thursday, 9 June 2016"
        labelPropertyExpiredDate.text = "Thursday, 9 June 2017"
        
        labelMonday.text = NSLocalizedString("FIELD_DATE_MON", comment: "").uppercaseString
        labelTuesday.text = NSLocalizedString("FIELD_DATE_TUE", comment: "").uppercaseString
        labelWednesday.text = NSLocalizedString("FIELD_DATE_WED", comment: "").uppercaseString
        labelThursday.text = NSLocalizedString("FIELD_DATE_THU", comment: "").uppercaseString
        labelFriday.text = NSLocalizedString("FIELD_DATE_FRI", comment: "").uppercaseString
        labelSaturday.text = NSLocalizedString("FIELD_DATE_SAT", comment: "").uppercaseString
        labelSunday.text = NSLocalizedString("FIELD_DATE_SUN", comment: "").uppercaseString
        
        textFieldTodaysPlan.text = "No plan for today"
        
        
        // NAVIGATION
        
        var buttonNavigationProspect : UIButton? = UIButton()
        buttonNavigationProspect = self.view.viewWithTag(TAG_BUTTON_NAVIGATIONPROSPECT) as? UIButton
        buttonNavigationProspect!.addTarget(self, action: #selector(self.goToAddProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonAgentProfile : UIButton? = UIButton()
        buttonAgentProfile = self.view.viewWithTag(TAG_BUTTON_AGENTPROFILE) as? UIButton
        buttonAgentProfile!.addTarget(self, action: #selector(self.goToAgentProfile(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
    }
    
    
    // DID RECEIVE MEMORY WARNING
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // NAVIGATION
    
    func goToAddProspect(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageAddProspect") as! ProspectAddBasicController
        self.presentViewController(page, animated: true, completion: nil)
    }
    
    func goToAgentProfile(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageAgentProfile") as! HomeController
        self.presentViewController(page, animated: true, completion: nil)
    }
}