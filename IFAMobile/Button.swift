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

    class ButtonGeneralPrimary : UIButton
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.widthAnchor.constraintEqualToConstant(BUTTON_GENERAL_WIDTH).active = true
            self.heightAnchor.constraintEqualToConstant(BUTTON_GENERAL_HEIGHT).active = true
            
            self.layer.borderWidth = BUTTON_GENERAL_BORDERWIDTH
            self.layer.cornerRadius = BUTTON_GENERAL_BORDERRADIUS
            self.titleLabel?.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_MEDIUM)
            self.titleLabel?.text?.capitalizedString
            self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0);
            
            // ENABLE
            
            self.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState:UIControlState.Normal)
            self.addTarget(self, action: #selector(ButtonGeneralPrimary.ButtonEnable(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            
            // HIGHLIGHT
            
            self.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState:UIControlState.Highlighted)
            self.addTarget(self, action: #selector(ButtonGeneralPrimary.ButtonClicked(_:)), forControlEvents: UIControlEvents.TouchDown)

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

    class ButtonLoginPrimary: UIButton
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.widthAnchor.constraintEqualToConstant(BUTTON_LOGIN_WIDTH).active = true
            self.heightAnchor.constraintEqualToConstant(BUTTON_LOGIN_HEIGHT).active = true
            
            self.layer.borderWidth = BUTTON_GENERAL_BORDERWIDTH
            self.layer.cornerRadius = BUTTON_GENERAL_BORDERRADIUS
            self.titleLabel?.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_MEDIUM)
            self.titleLabel?.text?.capitalizedString
            self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0);
            
            // ENABLE
            
            self.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState:UIControlState.Normal)
            self.addTarget(self, action: #selector(ButtonLoginPrimary.ButtonEnable(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            
            // HIGHLIGHT
            
            self.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState:UIControlState.Highlighted)
            self.addTarget(self, action: #selector(ButtonLoginPrimary.ButtonClicked(_:)), forControlEvents: UIControlEvents.TouchDown)
            
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

    // IMAGE

    class ButtonReset: UIButton
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.widthAnchor.constraintEqualToConstant(BUTTON_GENERAL_HEIGHT).active = true
            self.heightAnchor.constraintEqualToConstant(BUTTON_GENERAL_HEIGHT).active = true
            
            self.layer.borderWidth = BUTTON_GENERAL_BORDERWIDTH
            self.layer.cornerRadius = BUTTON_GENERAL_BORDERRADIUS
            self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0);
            self.setTitle("", forState: .Normal)
            self.setImage(UIImage(named: "Reset Secondary"), forState: .Normal)
            self.tintColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
            
            // ENABLE
            
            self.addTarget(self, action: #selector(ButtonReset.ButtonEnable(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            
            // HIGHLIGHT
            
            self.addTarget(self, action: #selector(ButtonReset.ButtonClicked(_:)), forControlEvents: UIControlEvents.TouchDown)
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

    class ButtonAdd : UIButton
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.widthAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
            self.heightAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true

            self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0)
            self.setTitle("", forState: .Normal)
            self.setImage(UIImage(named: "Add Secondary"), forState: .Normal)
            self.tintColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
        }
        
        override init(frame: CGRect)
        {
            super.init(frame: frame)
            
            self.widthAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
            self.heightAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
            
            self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0)
            self.setTitle("", forState: .Normal)
            self.setImage(UIImage(named: "Add Secondary"), forState: .Normal)
            self.tintColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
        }
    }

class ButtonFind : UIButton
{
    required init?(coder aDecoder : (NSCoder!))
    {
        super.init(coder: aDecoder)
        
        // GENERAL
        
        self.widthAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
        self.heightAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
        
        self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0)
        self.setTitle("", forState: .Normal)
        self.setImage(UIImage(named: "Find Secondary"), forState: .Normal)
        self.tintColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        self.widthAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
        self.heightAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
        
        self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0)
        self.setTitle("", forState: .Normal)
        self.setImage(UIImage(named: "Find Secondary"), forState: .Normal)
        self.tintColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
    }
}


    // GUIDE

    class ButtonGuide : UIButton
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.widthAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
            self.heightAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
            
            self.layer.borderWidth = BUTTON_GUIDE_BORDERWIDTH
            self.layer.cornerRadius = ICON_SIZE_LDPI * 0.5
            self.layer.borderColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0).CGColor as CGColorRef!
            self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0)
            self.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState: .Normal)
        }
        
        override init(frame: CGRect)
        {
            super.init(frame: frame)
            
            self.widthAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
            self.heightAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
            
            self.layer.borderWidth = BUTTON_GUIDE_BORDERWIDTH
            self.layer.cornerRadius = ICON_SIZE_LDPI * 0.5
            self.layer.borderColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0).CGColor as CGColorRef!
            self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0)
            self.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState: .Normal)
        }
    }

class ButtonPlanInformation : UIButton
{
    required init?(coder aDecoder : (NSCoder!))
    {
        super.init(coder: aDecoder)
        
        // GENERAL
        
        self.layer.borderWidth = BUTTON_GUIDE_BORDERWIDTH
        self.layer.cornerRadius = ICON_SIZE_LDPI * 0.5
        self.layer.borderColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0).CGColor as CGColorRef!
        self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 0.0)
        self.setTitle("", forState: .Normal)
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        
        self.layer.borderWidth = BUTTON_GUIDE_BORDERWIDTH
        self.layer.cornerRadius = ICON_SIZE_LDPI * 0.5
        self.layer.borderColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0).CGColor as CGColorRef!
        self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 0.0)
        self.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState: .Normal)
        self.setTitle("", forState: .Normal)
    }
}

class ButtonPlan : UIButton
{
    required init?(coder aDecoder : (NSCoder!))
    {
        super.init(coder: aDecoder)
        
        // GENERAL
        
        self.widthAnchor.constraintEqualToConstant(BUTTON_LOGIN_WIDTH / 2).active = true
        self.heightAnchor.constraintEqualToConstant(BUTTON_LOGIN_WIDTH / 2).active = true
        
        self.layer.borderWidth = BUTTON_GENERAL_BORDERWIDTH
        self.layer.cornerRadius = BUTTON_LOGIN_WIDTH * 0.25
        self.titleLabel?.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_TALL)
        self.titleLabel?.text?.capitalizedString
        self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0);
        
        // ENABLE
        
        self.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState:UIControlState.Normal)
        self.addTarget(self, action: #selector(ButtonLoginPrimary.ButtonEnable(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        
        // HIGHLIGHT
        
        self.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState:UIControlState.Highlighted)
        self.addTarget(self, action: #selector(ButtonLoginPrimary.ButtonClicked(_:)), forControlEvents: UIControlEvents.TouchDown)
        
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