//
//  Choose Financial Plan Controller.swift
//  IFAMobile
//
//  Created by Ibrahim Aziz Tejokusumo on 6/8/16.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// CLASS

class ChooseFinancialPlanController: UIViewController
{
    // INITIALIZATION
    
    @IBOutlet var labelHeaderTitle : UILabel!
    @IBOutlet var labelHeaderDescription : UILabel!
    
    @IBOutlet var segmentedControlPlan : UISegmentedControl!
    
    @IBOutlet var imageViewPlan : UIImageView!
    @IBOutlet var labelPlan : UILabel!
    
    @IBOutlet var buttonSubmit : UIButton!
    
    var arrayPlan : [String] = [String]()
    
    
    // VIEW DID LOAD
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // LANGUAGE
        
        labelHeaderTitle.text = NSLocalizedString("Plan's", comment: "")
        labelHeaderDescription.text = NSLocalizedString("Choose your Assured plan to proceed ", comment: "")
        
        buttonSubmit.setTitle(NSLocalizedString("BUTTON_SUBMIT", comment: ""), forState: .Normal)
        
        
        // LAYOUT SETTING
        
        arrayPlan =
        [
            NSLocalizedString("TITLE_PLAN_EDUCATION", comment: "") + CHARACTER_DATABASE_SEPARATOR + "Education Large Primary",
            NSLocalizedString("TITLE_PLAN_SAVINGS", comment: "") + CHARACTER_DATABASE_SEPARATOR + "Saving Large Primary",
            NSLocalizedString("TITLE_PLAN_INVESTMENT", comment: "") + CHARACTER_DATABASE_SEPARATOR + "Investment Large Primary",
            NSLocalizedString("TITLE_PLAN_INCOME", comment: "") + CHARACTER_DATABASE_SEPARATOR + "Income Large Primary",
            NSLocalizedString("TITLE_PLAN_RETIREMENT", comment: "") + CHARACTER_DATABASE_SEPARATOR + "Retirement Large Primary",
            NSLocalizedString("TITLE_PLAN_HEALTHCARE", comment: "") + CHARACTER_DATABASE_SEPARATOR + "Healthcare Large Primary",
            NSLocalizedString("TITLE_PLAN_LIFE", comment: "") + CHARACTER_DATABASE_SEPARATOR + "Life Large Primary"
        ]
        
        segmentedControlPlan.selectedSegmentIndex = 0
        var arrayPlanContent = arrayPlan[0].componentsSeparatedByString(CHARACTER_DATABASE_SEPARATOR)
        imageViewPlan.image = UIImage(named: arrayPlanContent[1])
        labelPlan.text = arrayPlanContent[0]
        
        
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
    
    
    // EVENT
    
    @IBAction func financialPlan(sender:UISegmentedControl)
    {
        var arrayPlanContent = arrayPlan[segmentedControlPlan.selectedSegmentIndex].componentsSeparatedByString(CHARACTER_DATABASE_SEPARATOR)
        imageViewPlan.image = UIImage(named: arrayPlanContent[1])
        labelPlan.text = arrayPlanContent[0]
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