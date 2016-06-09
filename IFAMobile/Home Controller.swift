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
    // @IBOutlet var labelCalendarTitle : UILabel!
    // @IBOutlet var labelNoteTitle : UILabel!
    
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
    
    // @IBOutlet var labelTodaysPlan : UILabel!
    
    // @IBOutlet var textFieldTodaysPlan : UITextField!
    
    
    // VIEW DID LOAD
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // LANGUAGE
        
        labelHeaderTitle.text = NSLocalizedString("HEADER_PROSPECT_TITLE", comment: "")
        labelHeaderDescription.text = NSLocalizedString("HEADER_PROSPECT_DESCRIPTION", comment: "")
        
        labelAgentInformationTitle.text = NSLocalizedString("TITLE_EDUCATIONPLAN_DETAILINFORMATION", comment: "").uppercaseString
        // labelCalendarTitle.text = NSLocalizedString("NAVIGATION_CALENDAR", comment: "").uppercaseString
        // labelNoteTitle.text = NSLocalizedString("NAVIGATION_NOTE", comment: "").uppercaseString
        
        // labelTodaysPlan.text = NSLocalizedString("FIELD_TODAYSPLAN", comment: "")
        
        labelPropertyAgentCode.text = "123456"
        labelPropertyBranch.text = "InfoConnect Indonesia"
        labelPropertyArea.text = "Jakarta"
        labelPropertyKCU.text = "Thamrin"
        labelPropertyChannelName.text = "In Branch"
        labelPropertySupervisor.text = "Mr. Lim"
        labelPropertyState.text = "Active"
        labelPropertyActiveDate.text = "Thursday, 9 June 2016"
        labelPropertyExpiredDate.text = "Thursday, 9 June 2017"
        
        // textFieldTodaysPlan.text = "No plan for today"
    }
    
    
    // DID RECEIVE MEMORY WARNING
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}