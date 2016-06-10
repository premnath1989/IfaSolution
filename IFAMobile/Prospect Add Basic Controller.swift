//
//  Prospect Add.swift
//  IFAMobile
//
//  Created by Ibrahim Aziz Tejokusumo on 6/8/16.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// CLASS

class ProspectAddBasicController: UIViewController, UITextFieldDelegate
{
    // INITIALIZATION
    
        // OUTLET
        
        @IBOutlet var labelHeaderTitle : UILabel!
        @IBOutlet var labelHeaderDescription : UILabel!
        
        @IBOutlet var labelBasicInformationTitle : UILabel!
        
        @IBOutlet var labelName : UILabel!
        @IBOutlet var labelBirthday : UILabel!
        @IBOutlet var labelGender : UILabel!
        @IBOutlet var labelContactNumber : UILabel!
        @IBOutlet var labelAddress : UILabel!
        @IBOutlet var labelEmail : UILabel!
        
        @IBOutlet var textFieldName : UITextField!
        @IBOutlet var textFieldNamePrefix : UITextField!
        @IBOutlet var textFieldBirthday : UITextField!
        @IBOutlet var textFieldContactNumber : UITextField!
        @IBOutlet var textFieldAddress : UITextField!
        @IBOutlet var textFieldEmail : UITextField!
        
        @IBOutlet var buttonSubmit : UIButton!
        @IBOutlet var buttonReset : UIButton!
    
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
        
        labelBasicInformationTitle.text = NSLocalizedString("TITLE_PROSPECT_PROFILE", comment: "").uppercaseString
        
        labelName.text = NSLocalizedString("FIELD_NAME", comment: "")
        labelBirthday.text = NSLocalizedString("FIELD_BIRTHDAY", comment: "")
        labelGender.text = NSLocalizedString("FIELD_GENDER", comment: "")
        labelContactNumber.text = NSLocalizedString("FIELD_CONTACTNUMBER", comment: "")
        labelAddress.text = NSLocalizedString("FIELD_ADDRESS", comment: "")
        labelEmail.text = NSLocalizedString("FIELD_EMAIL", comment: "")
        
        textFieldName.placeholder = NSLocalizedString("PLACEHOLDER_NAME", comment: "")
        textFieldContactNumber.placeholder = NSLocalizedString("PLACEHOLDER_CONTACTNUMBER", comment: "")
        textFieldAddress.placeholder = NSLocalizedString("PLACEHOLDER_ADDRESS", comment: "")
        textFieldEmail.placeholder = NSLocalizedString("PLACEHOLDER_EMAIL", comment: "")
        textFieldBirthday.placeholder = NSLocalizedString("PLACEHOLDER_BIRTHDAY", comment: "")
        textFieldNamePrefix.placeholder = NSLocalizedString("PLACEHOLDER_TITLE", comment: "")
        
        buttonSubmit.setTitle(NSLocalizedString("BUTTON_SUBMIT", comment: ""), forState: .Normal)
        
        
        // LAYOUT SETTING
        
        arrayNamePrefix = [NSLocalizedString("OPTION_MR", comment: ""), NSLocalizedString("OPTION_MRS", comment: ""), NSLocalizedString("OPTION_MS", comment: ""), NSLocalizedString("OPTION_MSS", comment: "")]
        
        textFieldNamePrefix.delegate = self
        
        
        // NAVIGATION
        
        var buttonNavigationProspect : UIButton? = UIButton()
        buttonNavigationProspect = self.view.viewWithTag(TAG_BUTTON_NAVIGATIONPROSPECT) as? UIButton
        buttonNavigationProspect!.addTarget(self, action: #selector(self.goToAddProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonAgentProfile : UIButton? = UIButton()
        buttonAgentProfile = self.view.viewWithTag(TAG_BUTTON_AGENTPROFILE) as? UIButton
        buttonAgentProfile!.addTarget(self, action: #selector(self.goToAgentProfile(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonAddProspect : UIButton? = UIButton()
        buttonAddProspect = self.view.viewWithTag(TAG_BUTTON_ADDPROSPECT) as? UIButton
        buttonAddProspect!.addTarget(self, action: #selector(self.goToAddProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonFindProspect : UIButton? = UIButton()
        buttonFindProspect = self.view.viewWithTag(TAG_BUTTON_FINDPROSPECT) as? UIButton
        buttonFindProspect?.backgroundColor = GeneratorUIColor(THEME_SECONDARY_COLOR, Opacity: 1.0)
        buttonFindProspect!.addTarget(self, action: #selector(self.goToFindProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        /* var buttonStep1 : UIButton? = UIButton()
        buttonStep1 = self.view.viewWithTag(TAG_GUIDE_STEP1) as? UIButton
        buttonStep1!.addTarget(self, action: #selector(self.goToAddProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonStep2 : UIButton? = UIButton()
        buttonStep2 = self.view.viewWithTag(TAG_GUIDE_STEP2) as? UIButton
        buttonStep2!.addTarget(self, action: #selector(self.goToChooseFinancialPlan(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonStep3 : UIButton? = UIButton()
        buttonStep3 = self.view.viewWithTag(TAG_GUIDE_STEP3) as? UIButton
        buttonStep3!.addTarget(self, action: #selector(self.goToEducationDetail(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonStep4 : UIButton? = UIButton()
        buttonStep4 = self.view.viewWithTag(TAG_GUIDE_STEP4) as? UIButton
        buttonStep4!.addTarget(self, action: #selector(self.goToFactFindingQuestionnaire(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonStep5 : UIButton? = UIButton()
        buttonStep5 = self.view.viewWithTag(TAG_GUIDE_STEP5) as? UIButton
        buttonStep5!.addTarget(self, action: #selector(self.goToEducationAnalysis(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION) */
        
        
        // DROPDOWN ESCAPE
        
        /**
         * Called when 'return' key pressed. return NO to ignore.
         */
        func textFieldShouldReturn(textField: UITextField) -> Bool
        {
            textField.resignFirstResponder()
            return true
        }
        
        func textFieldShouldBeginEditing(textField: UITextField) -> Bool
        {
            if textField == textFieldNamePrefix
            {
                dropDownPrefixName(textField)
                
                return false
            }
            else
            {
                
            }
            
            return true
        }
    }
    
    
    // DID RECEIVE MEMORY WARNING
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // EVENT
    
    @IBAction func datePickerBirthday(sender: AnyObject)
    {
        DatePickerDialog().show("DatePicker", doneButtonTitle: "Done", cancelButtonTitle: "Cancel", datePickerMode: .Date)
        {
            (date) -> Void in
            self.textFieldBirthday.text = "\(date)"
        }
    }
    
    @IBAction func dropDownPrefixName(sender: AnyObject)
    {
        let AlertVariable : AlertDropDown = AlertDropDown.init()
        AlertVariable.SetDropDownTitle("Name Prefix")
        AlertVariable.SetDropDownMessage("What we should call you ?")
        AlertVariable.SetArrayPositiveAction(arrayNamePrefix)
        AlertVariable.SetAddState(false)
        
        self.presentViewController(AlertSheetDropDown(AlertVariable, Sender: sender, ViewController: self), animated: true, completion: nil)
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
    
    /* func goToChooseFinancialPlan(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageChooseFinancialPlan") as! ChooseFinancialPlanController
        self.presentViewController(page, animated: true, completion: nil)
    }
    
    func goToEducationDetail(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageEducationPlanDetail") as! EducationDetailController
        self.presentViewController(page, animated: true, completion: nil)
    }
    
    func goToFactFindingQuestionnaire(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageFactFindingQuestionnaire") as! FactFindingQuestionnaireController
        self.presentViewController(page, animated: true, completion: nil)
    }
    
    func goToEducationAnalysis(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageEducationAnalysis") as! EducationAnalysisController
        self.presentViewController(page, animated: true, completion: nil)
    } */
}