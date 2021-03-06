//
//  Education Detail Controller.swift
//  IFAMobile
//
//  Created by Ibrahim on 02/06/2016.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// CLASS

class EducationDetailController: UIViewController
{
    // INITIALIZATION
    
    @IBOutlet var labelHeaderTitle : UILabel!
    @IBOutlet var labelHeaderDescription : UILabel!
    
    @IBOutlet var labelDetailInformationTitle : UILabel!

    @IBOutlet var labelPlanName : UILabel!
    @IBOutlet var labelPayorName : UILabel!
    @IBOutlet var labelEntryAgeToUniversity : UILabel!
    @IBOutlet var labelTotalAnnualCostAsAtTodayValue : UILabel!
    @IBOutlet var labelTotalAnnualLivingExpenses : UILabel!
    @IBOutlet var labelLumpSumpSavings : UILabel!
    @IBOutlet var labelRegularAnnualSavings : UILabel!
    @IBOutlet var labelExistingSavingsPrograms : UILabel!
    @IBOutlet var labelActualTotalEducation : UILabel!
    @IBOutlet var labelInflationRate : UILabel!
    @IBOutlet var labelExpectedRateOfReturn : UILabel!
    
    
    @IBOutlet var textFieldPlanName : UITextField!
    @IBOutlet var textFieldPayorName : UITextField!
    @IBOutlet var textFieldEntryDate : UITextField!
    @IBOutlet var textFieldTotalAnnualCostAsAtTodayValue : UITextField!
    @IBOutlet var textFieldTotalAnnualLivingExpenses : UITextField!
    @IBOutlet var textFieldLumpSumpSavings : UITextField!
    @IBOutlet var textFieldRegularAnnualSavings : UITextField!
    @IBOutlet var textFieldExistingSavingsPrograms : UITextField!
    @IBOutlet var textFieldActualTotalEducation : UITextField!
    @IBOutlet var textFieldInflationRate : UITextField!
    @IBOutlet var textFieldExpectedRateOfReturn : UITextField!
    @IBOutlet var textFieldEntryAge : UITextField!
    
    
    @IBOutlet var buttonSubmit : UIButton!
    @IBOutlet var buttonReset : UIButton!
    
    
    // VIEW DID LOAD
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // LANGUAGE
        
        labelHeaderTitle.text = NSLocalizedString("Education Planning Analysis", comment: "")
        labelHeaderDescription.text = NSLocalizedString("Please fill up to process data for Education need Analysis", comment: "")
        
        labelDetailInformationTitle.text = NSLocalizedString("TITLE_EDUCATIONPLAN_DETAILINFORMATION", comment: "").uppercaseString
        
        labelPlanName.text = NSLocalizedString("FIELD_PLANNAME", comment: "")
        labelPayorName.text = NSLocalizedString("FIELD_PAYORNAME", comment: "")
        labelEntryAgeToUniversity.text = NSLocalizedString("FIELD_ENTRYAGETOUNIVERSITY", comment: "")
        labelTotalAnnualCostAsAtTodayValue.text = NSLocalizedString("FIELD_TOTALANNUALCOSTASATTODAYVALUE", comment: "")
        labelTotalAnnualLivingExpenses.text = NSLocalizedString("FIELD_TOTALANNUALLIVINGEXPENSES", comment: "")
        labelLumpSumpSavings.text = NSLocalizedString("FIELD_LUMSUMPSAVINGS", comment: "")
        labelRegularAnnualSavings.text = NSLocalizedString("FIELD_REGULARANNUALSAVINGS", comment: "")
        labelExistingSavingsPrograms.text = NSLocalizedString("FIELD_EXISTINGSAVINGSPROGRAMS", comment: "")
        labelActualTotalEducation.text = NSLocalizedString("FIELD_ACTUALTOTALEDUCATION", comment: "")
        labelInflationRate.text = NSLocalizedString("FIELD_INFLATIONRATE", comment: "")
        labelExpectedRateOfReturn.text = NSLocalizedString("FIELD_EXPECTEDRATEOFRETURN", comment: "")
        
        
        textFieldPlanName.placeholder = NSLocalizedString("PLACEHOLDER_PLANNAME", comment: "")
        textFieldPayorName.placeholder = NSLocalizedString("PLACEHOLDER_PAYORNAME", comment: "")
        textFieldEntryDate.placeholder = NSLocalizedString("PLACEHOLDER_ENTRYDATETOUNIVERSITY", comment: "")
        textFieldTotalAnnualCostAsAtTodayValue.placeholder = NSLocalizedString("PLACEHOLDER_TOTALANNUALCOSTASATTODAYVALUE", comment: "")
        textFieldTotalAnnualLivingExpenses.placeholder = NSLocalizedString("PLACEHOLDER_TOTALANNUALLIVINGEXPENSES", comment: "")
        textFieldLumpSumpSavings.placeholder = NSLocalizedString("PLACEHOLDER_LUMSUMPSAVINGS", comment: "")
        textFieldRegularAnnualSavings.placeholder = NSLocalizedString("PLACEHOLDER_REGULARANNUALSAVINGS", comment: "")
        textFieldExistingSavingsPrograms.placeholder = NSLocalizedString("PLACEHOLDER_EXISTINGSAVINGSPROGRAMS", comment: "")
        textFieldActualTotalEducation.placeholder = NSLocalizedString("PLACEHOLDER_ACTUALTOTALEDUCATION", comment: "")
        textFieldInflationRate.placeholder = NSLocalizedString("PLACEHOLDER_INFLATIONRATE", comment: "")
        textFieldExpectedRateOfReturn.placeholder = NSLocalizedString("PLACEHOLDER_EXPECTEDRATEOFRETURN", comment: "")
        textFieldEntryAge.placeholder = NSLocalizedString("PLACEHOLDER_ENTRYAGETOUNIVERSITY", comment: "")
        
        
        buttonSubmit.setTitle(NSLocalizedString("BUTTON_SUBMIT", comment: ""), forState: .Normal)
        
        
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
        
        // GUIDE
        
        var buttonStep1 : UIButton? = ButtonGuideDone()
        buttonStep1 = self.view.viewWithTag(TAG_GUIDE_STEP1) as? UIButton
        buttonStep1!.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
        buttonStep1!.setTitleColor(GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0), forState: .Normal)
        buttonStep1!.addTarget(self, action: #selector(self.goToAddProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonStep2 : UIButton? = ButtonGuideDone()
        buttonStep2 = self.view.viewWithTag(TAG_GUIDE_STEP2) as? UIButton
        buttonStep2!.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
        buttonStep2!.setTitleColor(GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0), forState: .Normal)
        buttonStep2!.addTarget(self, action: #selector(self.goToChooseFinancialPlan(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonStep3 : UIButton? = ButtonGuideInProgress()
        buttonStep3 = self.view.viewWithTag(TAG_GUIDE_STEP3) as? UIButton
        buttonStep3!.backgroundColor = GeneratorUIColor(THEME_SECONDARY_COLOR, Opacity : 1.0)
        buttonStep3!.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState: .Normal)
        buttonStep3!.addTarget(self, action: #selector(self.goToEducationDetail(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        
    }
    
    
    // DID RECEIVE MEMORY WARNING
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // EVENT
    
    @IBAction func datePickerEntryDate(sender: AnyObject)
    {
        DatePickerDialog().show("DatePicker", doneButtonTitle: "Done", cancelButtonTitle: "Cancel", datePickerMode: .Date)
        {
            (date) -> Void in
            
            let stringDate : String = date.formattedWithToString(FORMAT_DATE_BIRTHDAY)
            
            self.textFieldEntryDate.text = "\(stringDate)"
            
            let dateBirthday = ProspectBasicInformation.SharedInstance.GetBirthday()
            let dateTertiaryAge = date.formattedWithToNSDate(FORMAT_DATE_BIRTHDAY)
            let stringAge : String = showAge(dateBirthday, toDate: dateTertiaryAge)
            self.textFieldEntryAge.text = stringAge
        }
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
    
    // GUIDE
    
    func goToChooseFinancialPlan(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageChooseFinancialPlan") as! ChooseFinancialPlanController
        self.presentViewController(page, animated: true, completion: nil)
    }
    
    func goToEducationDetail(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageEducationPlanDetail") as! EducationDetailController
        self.presentViewController(page, animated: true, completion: nil)
    }
}