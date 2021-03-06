//
//  Existing Prospect Controller.swift
//  IFAMobile
//
//  Created by Ibrahim Aziz Tejokusumo on 6/9/16.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// CLASS

class ExistingProspectController: UIViewController
{
    // INITIALIZATION
    
    // OUTLET
    
    @IBOutlet var labelHeaderTitle : UILabel!
    @IBOutlet var labelHeaderDescription : UILabel!
    
    // @IBOutlet var labelBasicInformationTitle : UILabel!
    
    /* @IBOutlet var labelName : UILabel!
    @IBOutlet var labelBirthday : UILabel!
    @IBOutlet var labelGender : UILabel!
    @IBOutlet var labelContactNumber : UILabel!
    @IBOutlet var labelAddress : UILabel!
    @IBOutlet var labelEmail : UILabel!
    @IBOutlet var labelGenderMale : UILabel!
    @IBOutlet var labelGenderFemale : UILabel!
    
    @IBOutlet var textFieldName : UITextField!
    @IBOutlet var pickerViewNamePrefix : UIPickerView!
    @IBOutlet var datePickerBirthday : UIDatePicker!
    @IBOutlet var switchGender : UISwitch!
    @IBOutlet var textFieldContactNumber : UITextField!
    @IBOutlet var textFieldAddress : UITextField!
    @IBOutlet var textFieldEmail : UITextField!
    
    @IBOutlet var buttonSubmit : UIButton!
    @IBOutlet var buttonReset : UIButton! */
    
    // VARIABLE
    
    var arrayNamePrefix : [String] = [String]()
    
    
    // VIEW DID LOAD
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // LANGUAGE
        
        labelHeaderTitle.text = NSLocalizedString("HEADER_PROSPECT_TITLE", comment: "")
        labelHeaderDescription.text = NSLocalizedString("HEADER_PROSPECT_DESCRIPTION", comment: "")
        
        // labelBasicInformationTitle.text = NSLocalizedString("TITLE_PROSPECT_PROFILE", comment: "").uppercaseString
        
        /* labelName.text = NSLocalizedString("FIELD_NAME", comment: "")
        labelBirthday.text = NSLocalizedString("FIELD_BIRTHDAY", comment: "")
        labelGender.text = NSLocalizedString("FIELD_GENDER", comment: "")
        labelContactNumber.text = NSLocalizedString("FIELD_CONTACTNUMBER", comment: "")
        labelAddress.text = NSLocalizedString("FIELD_ADDRESS", comment: "")
        labelEmail.text = NSLocalizedString("FIELD_EMAIL", comment: "")
        labelGenderMale.text = NSLocalizedString("OPTION_MALE", comment: "")
        labelGenderFemale.text = NSLocalizedString("OPTION_FEMALE", comment: "")
        
        textFieldName.placeholder = NSLocalizedString("PLACEHOLDER_NAME", comment: "")
        textFieldContactNumber.placeholder = NSLocalizedString("PLACEHOLDER_CONTACTNUMBER", comment: "")
        textFieldAddress.placeholder = NSLocalizedString("PLACEHOLDER_ADDRESS", comment: "")
        textFieldEmail.placeholder = NSLocalizedString("PLACEHOLDER_EMAIL", comment: "")
        
        buttonSubmit.setTitle(NSLocalizedString("BUTTON_SUBMIT", comment: ""), forState: .Normal) */
        
        
        // LAYOUT SETTING
        
        
        
        
        // NAVIGATION
        
        var buttonNavigationProspect : UIButton? = UIButton()
        buttonNavigationProspect = self.view.viewWithTag(TAG_BUTTON_NAVIGATIONPROSPECT) as? UIButton
        buttonNavigationProspect!.addTarget(self, action: #selector(self.goToFindProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonAgentProfile : UIButton? = UIButton()
        buttonAgentProfile = self.view.viewWithTag(TAG_BUTTON_AGENTPROFILE) as? UIButton
        buttonAgentProfile!.addTarget(self, action: #selector(self.goToAgentProfile(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonAddProspect : UIButton? = UIButton()
        buttonAddProspect = self.view.viewWithTag(TAG_BUTTON_ADDPROSPECT) as? UIButton
        buttonAddProspect!.addTarget(self, action: #selector(self.goToAddProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonFindProspect : UIButton? = UIButton()
        buttonFindProspect = self.view.viewWithTag(TAG_BUTTON_FINDPROSPECT) as? UIButton
        buttonFindProspect!.addTarget(self, action: #selector(self.goToFindProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
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
    
    func goToFindProspect(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageFindProspect") as! FindProspectController
        self.presentViewController(page, animated: true, completion: nil)
    }
}