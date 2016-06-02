//
//  Label.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 9/8/15.
//  Copyright (c) 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

import UIKit
import Foundation


// STYLES

    // HEADER

    class LabelLogInTitle : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_SECONDARY_FONT, size : FONTSIZE_ENORMOUS)
            self.textColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Center
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }


    // FOOTER

    class LabelFooterLeftHeader : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_PRIMARY_FONT, size : FONTSIZE_MEDIUM)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Left
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 4
        }
    }

    class LabelFooterLeftDetail : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_SECONDARY_FONT, size : FONTSIZE_SMALL)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Left
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 4
        }
    }

    class LabelFooterRightHeader : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_PRIMARY_FONT, size : FONTSIZE_MEDIUM)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Right
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 4
        }
    }

    class LabelFooterRightDetail : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_SECONDARY_FONT, size : FONTSIZE_SMALL)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Right
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 4
        }
    }