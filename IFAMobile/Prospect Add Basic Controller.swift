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

class ProspectAddBasicController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
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
        labelGenderMale.text = NSLocalizedString("OPTION_MALE", comment: "")
        labelGenderFemale.text = NSLocalizedString("OPTION_FEMALE", comment: "")
        
        textFieldName.placeholder = NSLocalizedString("PLACEHOLDER_NAME", comment: "")
        textFieldContactNumber.placeholder = NSLocalizedString("PLACEHOLDER_CONTACTNUMBER", comment: "")
        textFieldAddress.placeholder = NSLocalizedString("PLACEHOLDER_ADDRESS", comment: "")
        textFieldEmail.placeholder = NSLocalizedString("PLACEHOLDER_EMAIL", comment: "")
        
        buttonSubmit.setTitle(NSLocalizedString("BUTTON_SUBMIT", comment: ""), forState: .Normal)
        
        
        // LAYOUT SETTING
        
        self.pickerViewNamePrefix.delegate = self
        self.pickerViewNamePrefix.dataSource = self
        
        arrayNamePrefix = [NSLocalizedString("OPTION_MR", comment: ""), NSLocalizedString("OPTION_MRS", comment: ""), NSLocalizedString("OPTION_MS", comment: ""), NSLocalizedString("OPTION_MSS", comment: "")]
        
        
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
        buttonFindProspect?.backgroundColor = GeneratorUIColor(THEME_SECONDARY_COLOR, Opacity: 1.0)
        buttonFindProspect!.addTarget(self, action: #selector(self.goToFindProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
    }
    
    
    // DID RECEIVE MEMORY WARNING
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // PICKER VIEW
    
    // The number of columns of data
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    // The number of rows of data
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return arrayNamePrefix.count
    }
    
    // The data to return for the row and component (column) that's being passed in
//    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
//    {
//        return arrayNamePrefix[row]
//    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView
    {
        let label = LabelPicker()
        label.text = arrayNamePrefix[row]
        return label
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