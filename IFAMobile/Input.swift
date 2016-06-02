//
//  Input.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 9/5/15.
//  Copyright (c) 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// STYLES

    // TEXTFIELD

    class TextFieldSingleline : UITextField
    {
        required init?(coder aDecoder: (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            self.backgroundColor = GeneratorUIColor(THEME_QUATERNARY_COLOR, Opacity: 1.0)
            self.layer.masksToBounds = true
            self.borderStyle = UITextBorderStyle.None
            self.layer.cornerRadius = InputBorderRadius
            
            self.minimumFontSize = FONTSIZE_MEDIUM
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_MEDIUM)

            self.clearButtonMode = UITextFieldViewMode.UnlessEditing
            self.returnKeyType = UIReturnKeyType.Done
            
            // ENABLE
            
            self.addTarget(self, action: #selector(TextFieldSingleline.InputEnable(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            
            // HIGHLIGHT
            
            self.addTarget(self, action: #selector(TextFieldSingleline.InputHighlight(_:)), forControlEvents: UIControlEvents.TouchDown)
        }
        
        // FUNCTION
        
        func InputEnable(OnTouchUpInside: UITextField!)
        {
            
        }
        
        func InputHighlight(OnTouchDown: UITextField!)
        {

        }
    }