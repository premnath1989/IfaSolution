//
//  Icon.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 9/8/15.
//  Copyright (c) 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

import UIKit
import Foundation


// STYLES

class IconInput : UIImageView
{
    // let InputEnableGradient = CAGradientLayer().InputEnableGradient()
    
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        
        // self.backgroundColor = GeneratorUIColor(ThemeQuinaryColor, Opacity: 1.0)
        self.layer.cornerRadius = INPUT_GENERAL_BORDERRADIUS
    }
}

class PhotoProfileNavigation : UIButton
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        
        self.widthAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
        self.heightAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
        self.layer.cornerRadius = ICON_SIZE_LDPI * 0.5
        self.setImage(UIImage(named: "Photo Profile Small"), forState: .Normal)
        // self.tintColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity: 0.0)
    }
}

class PhotoProfilePage : UIImageView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        
        self.image = UIImage(named: "Photo Profile Large")
    }
}

class LogoLoginPage : UIImageView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        
        self.widthAnchor.constraintEqualToConstant(140).active = true
        self.heightAnchor.constraintEqualToConstant(36).active = true
        self.image = UIImage(named: "Logo Login")
    }
}