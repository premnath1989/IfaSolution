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
    
    @IBOutlet var viewGuide : UIView!
    @IBOutlet var viewGuideContainer : UIView!
    
    @IBOutlet var stackViewStepGuide : UIStackView!
    @IBOutlet var stackViewDetailGuide : UIStackView!
    
    // @IBOutlet var buttonAdd : UIButton!
    // @IBOutlet var buttonSearch : UIButton!
    
    
    // SETUP
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        
        
        // INITIALIZATIOIN
        
        NSBundle.mainBundle().loadNibNamed("Guide Layout", owner: self, options: nil)[0] as! UIView
        self.addSubview(viewGuide)
        viewGuide.frame = self.bounds
        
        let arrayStep : Array<String> =
        [
            NSLocalizedString("GUIDE_GENERALINFORMATION_STEP", comment: ""),
            NSLocalizedString("GUIDE_FINANCIALPLAN_STEP", comment: ""),
            NSLocalizedString("GUIDE_DETAILINFORMATION_STEP", comment: ""),
            NSLocalizedString("GUIDE_FACTFINDINGQUESTIONARE_STEP", comment: ""),
            NSLocalizedString("GUIDE_GUIDE_ANALYSISRESULT_STEP", comment: ""),
            NSLocalizedString("GUIDE_PDFRESULT_STEP", comment: "")
        ]
        let arrayDetail : Array<String> =
        [
            NSLocalizedString("GUIDE_GENERALINFORMATION_DETAIL", comment: ""),
            NSLocalizedString("GUIDE_FINANCIALPLAN_DETAIL", comment: ""),
            NSLocalizedString("GUIDE_DETAILINFORMATION_DETAIL", comment: ""),
            NSLocalizedString("GUIDE_FACTFINDINGRQUESTIONARE_DETAIL", comment: ""),
            NSLocalizedString("GUIDE_ANALYSISRESULT_DETAIL", comment: ""),
            NSLocalizedString("GUIDE_PDFRESULT_DETAIL", comment: "")
        ]
        
        
        // LAYOUT SETTING
        
        viewGuideContainer.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity: 1.0)
        
        for i : Int in 0 ..< arrayStep.count
        {
            let viewStep = UIView()
            viewStep.widthAnchor.constraintEqualToConstant(GUIDE_ITEM_WIDTH).active = true
            viewStep.heightAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
            let buttonStep = ButtonGuide()
            buttonStep.setTitle(arrayStep[i], forState: .Normal)
            
            viewStep.addSubview(buttonStep)
            stackViewStepGuide.addArrangedSubview(viewStep)
        }
        
        for i : Int in 0 ..< arrayDetail.count
        {
            let viewDetail = UIView()
            viewDetail.widthAnchor.constraintEqualToConstant(GUIDE_ITEM_WIDTH).active = true
            viewDetail.heightAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
            let labelDetail = LabelGuideDetail()
            labelDetail.text = arrayStep[i].lowercaseString
            
            viewDetail.addSubview(labelDetail)
            stackViewDetailGuide.addArrangedSubview(viewDetail)
        }
        
        
        // LANGUAGE
        
        
    }
}