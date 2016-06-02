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
        self.layer.cornerRadius = InputBorderRadius
    }
}