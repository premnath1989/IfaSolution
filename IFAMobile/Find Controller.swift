//
//  Find Controller.swift
//  IFAMobile
//
//  Created by Ibrahim Aziz Tejokusumo on 6/9/16.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// CLASS

class FindController : UIView
{
    // INITIALIZATION
    
    @IBOutlet var viewProfile : UIView!
    @IBOutlet var viewFindContainer : UIView!
    
    @IBOutlet var labelFind : UILabel!
    @IBOutlet var textFieldFind : UITextField!
    @IBOutlet var labelResult : UILabel!
    
    @IBOutlet var buttonAdd : UIButton!
    @IBOutlet var buttonFind : UIButton!
    
    
    // SETUP
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        
        
        // LAYOUT SETTING
        
        NSBundle.mainBundle().loadNibNamed("Find Layout", owner: self, options: nil)[0] as! UIView
        self.heightAnchor.constraintEqualToConstant(240).active = true
        self.addSubview(viewProfile)
        viewFindContainer.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity: 1.0)
        viewProfile.frame = self.bounds
        buttonAdd.backgroundColor = GeneratorUIColor(THEME_SECONDARY_COLOR, Opacity: 1.0)
        buttonFind.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity: 1.0)
        
        
        
        // LANGUAGE
        
        labelFind.text = "Find existing prospect".uppercaseString
        textFieldFind.text = "find existing prospect by name, telephon or email"
        labelResult.text = "found 12 result based on your description"
    }
}