//
//  Profile Controller.swift
//  IFAMobile
//
//  Created by Ibrahim Aziz Tejokusumo on 6/9/16.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// CLASS

class ProfileController : UIView
{
    // INITIALIZATION
    
    @IBOutlet var viewProfile : UIView!
    
    @IBOutlet var labelWelcome : UILabel!
    @IBOutlet var imageViewProfileLarge : UIImageView!
    @IBOutlet var labelAddress : UILabel!
    @IBOutlet var labelTelephoneNumber : UILabel!
    @IBOutlet var labelEmail : UILabel!
    @IBOutlet var labelName : UILabel!
    
    
    // SETUP
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        
        NSBundle.mainBundle().loadNibNamed("Profile Layout", owner: self, options: nil)[0] as! UIView
        self.heightAnchor.constraintEqualToConstant(112).active = true
        self.addSubview(viewProfile)
        viewProfile.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity: 1.0)
        viewProfile.frame = self.bounds
        
        
        // LAYOUT SETTING
        
        imageViewProfileLarge.image = UIImage(named: "Photo Profile Large")
        
        
        // LANGUAGE
        
        labelWelcome.text = NSLocalizedString("TITLE_LOGIN_WELCOMEBACK", comment: "") + ", "
        labelAddress.text = "Jalan Thamrin Jaya blok 5 nomor 2\nThamrin, Jakarta Selatan, Indonesia"
        labelTelephoneNumber.text = "1234567890"
        labelEmail.text = "andy.phan@infoconnect.com.my"
        labelName.text = "Andy"
    }
}