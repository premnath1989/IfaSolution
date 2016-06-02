//
//  Layout.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 9/9/15.
//  Copyright (c) 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

import UIKit
import Foundation


// CLASS

class ViewFooterContainer : UIView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        self.backgroundColor = GeneratorUIColor(THEME_OCTONARY_COLOR, Opacity: 1.0)
    }
}

class ViewLoginContainer : UIView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        self.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity: 0.2)
    }
}