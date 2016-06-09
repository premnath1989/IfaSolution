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
        
        labelHeaderTitle.text = NSLocalizedString("HEADER_PROSPECT_TITLE", comment: "")
        labelHeaderDescription.text = NSLocalizedString("HEADER_PROSPECT_DESCRIPTION", comment: "")
        
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
}