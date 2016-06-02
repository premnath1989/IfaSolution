//
//  Footer Controller.swift
//  IFAMobile
//
//  Created by Ibrahim on 01/06/2016.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// CLASS

class LayoutFooter: UIView
{
    // INITIALIZATION
    
    @IBOutlet var viewFooter : UIView!
    @IBOutlet var labelFooterLeftHeader : UILabel!
    @IBOutlet var labelFooterLeftDetail : UILabel!
    @IBOutlet var labelFooterRightHeader : UILabel!
    @IBOutlet var labelFooterRightDetail : UILabel!
    
    
    // SETUP
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        
        NSBundle.mainBundle().loadNibNamed("Footer Layout", owner: self, options: nil)[0] as! UIView
        self.addSubview(viewFooter)
        viewFooter.frame = self.bounds
        
        
        // LANGUAGE
        
        labelFooterLeftHeader.text = NSLocalizedString("LABEL_FOOTERLEFT_HEADER", comment: "")
        labelFooterLeftDetail.text = NSLocalizedString("LABEL_FOOTERLEFT_DETAIL", comment: "")
        labelFooterRightHeader.text = NSLocalizedString("LABEL_FOOTERRIGHT_HEADER", comment: "")
        labelFooterRightDetail.text = NSLocalizedString("LABEL_FOOTERRIGHT_DETAIL", comment: "")
    }
}