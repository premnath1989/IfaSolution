//
//  Button.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 9/5/15.
//  Copyright (c) 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// STYLES

    // THEME

    class ButtonPrimary: UIButton
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.layer.borderWidth = ButtonBorderWidth
            self.layer.cornerRadius = ButtonBorderRadius
            self.titleLabel?.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_MEDIUM)
            self.titleLabel?.text?.capitalizedString
            
            // ENABLE
            
            self.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState:UIControlState.Normal)
            self.addTarget(self, action: #selector(ButtonPrimary.ButtonEnable(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            
            // HIGHLIGHT
            
            self.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState:UIControlState.Highlighted)
            self.addTarget(self, action: #selector(ButtonPrimary.ButtonClicked(_:)), forControlEvents: UIControlEvents.TouchDown)

            // DISABLED
            
            self.setTitleColor(GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0), forState:UIControlState.Disabled)
        }
        
        
        // FUNCTION
        
        func ButtonEnable(OnTouchUpInside: UIButton!)
        {
            self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0);
        }
        
        func ButtonClicked(OnTouchDown: UIButton!)
        {
            self.backgroundColor = GeneratorUIColor(THEME_SECONDARY_COLOR, Opacity : 1.0);
        }
    }