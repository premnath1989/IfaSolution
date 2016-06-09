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

    class TextFieldSinglelineGeneral : UITextField
    {
        override func textRectForBounds(bounds: CGRect) -> CGRect
        {
            return CGRectInset(bounds, INPUT_SIDE_PADDING, INPUT_SIDE_PADDING)
        }
        
        override func editingRectForBounds(bounds: CGRect) -> CGRect
        {
            return CGRectInset(bounds, INPUT_SIDE_PADDING, INPUT_SIDE_PADDING)
        }
        
        override func placeholderRectForBounds(bounds: CGRect) -> CGRect
        {
            return CGRectInset(bounds, INPUT_SIDE_PADDING, INPUT_SIDE_PADDING)
        }
        
        required init?(coder aDecoder: (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            self.widthAnchor.constraintEqualToConstant(TEXTFIELD_GENERAL_WIDTH).active = true
            self.heightAnchor.constraintEqualToConstant(INPUT_GENERAL_HEIGHT).active = true
            
            self.backgroundColor = GeneratorUIColor(THEME_QUATERNARY_COLOR, Opacity: 1.0)
            self.layer.masksToBounds = true
            self.borderStyle = UITextBorderStyle.None
            self.layer.cornerRadius = INPUT_GENERAL_BORDERRADIUS
            
            self.minimumFontSize = FONTSIZE_MEDIUM
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_MEDIUM)

            self.clearButtonMode = UITextFieldViewMode.UnlessEditing
            self.returnKeyType = UIReturnKeyType.Done
            
            // ENABLE
            
            self.addTarget(self, action: #selector(TextFieldSinglelineGeneral.InputEnable(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            
            // HIGHLIGHT
            
            self.addTarget(self, action: #selector(TextFieldSinglelineGeneral.InputHighlight(_:)), forControlEvents: UIControlEvents.TouchDown)
        }
        
        // FUNCTION
        
        func InputEnable(OnTouchUpInside: UITextField!)
        {
            
        }
        
        func InputHighlight(OnTouchDown: UITextField!)
        {

        }
    }

    class TextFieldSinglelineLogin : UITextField
    {
        override func textRectForBounds(bounds: CGRect) -> CGRect
        {
            return CGRectInset(bounds, INPUT_SIDE_PADDING, INPUT_SIDE_PADDING)
        }
        
        override func editingRectForBounds(bounds: CGRect) -> CGRect
        {
            return CGRectInset(bounds, INPUT_SIDE_PADDING, INPUT_SIDE_PADDING)
        }
        
        override func placeholderRectForBounds(bounds: CGRect) -> CGRect
        {
            return CGRectInset(bounds, INPUT_SIDE_PADDING, INPUT_SIDE_PADDING)
        }
        
        required init?(coder aDecoder: (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            self.widthAnchor.constraintEqualToConstant(TEXTFIELD_LOGIN_WIDTH).active = true
            self.heightAnchor.constraintEqualToConstant(INPUT_LOGIN_HEIGHT).active = true
            
            self.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity: 1.0)
            self.layer.masksToBounds = true
            self.borderStyle = UITextBorderStyle.None
            self.layer.cornerRadius = INPUT_GENERAL_BORDERRADIUS
            
            self.minimumFontSize = FONTSIZE_LARGE
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_LARGE)
            
            self.clearButtonMode = UITextFieldViewMode.UnlessEditing
            self.returnKeyType = UIReturnKeyType.Done
            
            // ENABLE
            
            self.addTarget(self, action: #selector(TextFieldSinglelineLogin.InputEnable(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            
            // HIGHLIGHT
            
            self.addTarget(self, action: #selector(TextFieldSinglelineLogin.InputHighlight(_:)), forControlEvents: UIControlEvents.TouchDown)
        }
        
        // FUNCTION
        
        func InputEnable(OnTouchUpInside: UITextField!)
        {
            
        }
        
        func InputHighlight(OnTouchDown: UITextField!)
        {
            
        }
    }

    class TextFieldSinglelineShort : UITextField
    {
        override func textRectForBounds(bounds: CGRect) -> CGRect
        {
            return CGRectInset(bounds, INPUT_SIDE_PADDING, INPUT_SIDE_PADDING)
        }
        
        override func editingRectForBounds(bounds: CGRect) -> CGRect
        {
            return CGRectInset(bounds, INPUT_SIDE_PADDING, INPUT_SIDE_PADDING)
        }
        
        override func placeholderRectForBounds(bounds: CGRect) -> CGRect
        {
            return CGRectInset(bounds, INPUT_SIDE_PADDING, INPUT_SIDE_PADDING)
        }
        
        required init?(coder aDecoder: (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            self.widthAnchor.constraintEqualToConstant(TEXTFIELD_SHORT_WIDTH).active = true
            self.heightAnchor.constraintEqualToConstant(INPUT_GENERAL_HEIGHT).active = true
            
            self.backgroundColor = GeneratorUIColor(THEME_QUATERNARY_COLOR, Opacity: 1.0)
            self.layer.masksToBounds = true
            self.borderStyle = UITextBorderStyle.None
            self.layer.cornerRadius = INPUT_GENERAL_BORDERRADIUS
            
            self.minimumFontSize = FONTSIZE_MEDIUM
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_MEDIUM)
            
            self.clearButtonMode = UITextFieldViewMode.UnlessEditing
            self.returnKeyType = UIReturnKeyType.Done
            
            // ENABLE
            
            self.addTarget(self, action: #selector(TextFieldSinglelineGeneral.InputEnable(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            
            // HIGHLIGHT
            
            self.addTarget(self, action: #selector(TextFieldSinglelineGeneral.InputHighlight(_:)), forControlEvents: UIControlEvents.TouchDown)
        }
        
        // FUNCTION
        
        func InputEnable(OnTouchUpInside: UITextField!)
        {
            
        }
        
        func InputHighlight(OnTouchDown: UITextField!)
        {
            
        }
    }

    // PICKER

    class PickerViewSinglelineShort : UIPickerView
    {
        required init?(coder aDecoder: (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            self.widthAnchor.constraintEqualToConstant(TEXTFIELD_SHORT_WIDTH).active = true
            self.heightAnchor.constraintEqualToConstant(PICKERVIEW_GENERAL_HEIGHT).active = true
            
            self.backgroundColor = GeneratorUIColor(THEME_QUATERNARY_COLOR, Opacity: 1.0)
            self.layer.masksToBounds = true
            self.layer.cornerRadius = INPUT_GENERAL_BORDERRADIUS
        }
    }

    class DatePickerSinglelineGeneral : UIDatePicker
    {
        required init?(coder aDecoder: (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            self.widthAnchor.constraintEqualToConstant(TEXTFIELD_LONG_WIDTH).active = true
            self.heightAnchor.constraintEqualToConstant(PICKERVIEW_GENERAL_HEIGHT).active = true
            
            self.backgroundColor = GeneratorUIColor(THEME_QUATERNARY_COLOR, Opacity: 1.0)
            self.layer.masksToBounds = true
            self.layer.cornerRadius = INPUT_GENERAL_BORDERRADIUS
            self.setValue(GeneratorUIColor(THEME_SENARY_COLOR, Opacity: 1.0), forKey: "textColor")
            // self.setValue(UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_MEDIUM), forKey: "font")
        }
    }


// SEGMENTED CONTROL

class SegmentedControlFinancialPlan : UISegmentedControl
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        
        self.layer.masksToBounds = true
        self.layer.cornerRadius = INPUT_GENERAL_BORDERRADIUS
        self.tintColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity: 1.0)
        let attr = NSDictionary(object: UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_MEDIUM)!, forKey: NSFontAttributeName)
        self.setTitleTextAttributes(attr as [NSObject : AnyObject] , forState: .Normal)
    }
}