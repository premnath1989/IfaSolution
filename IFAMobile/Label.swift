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
            
            self.font = UIFont(name : THEME_SECONDARY_FONT, size : FONTSIZE_LOGIN_TITLE)
            self.textColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Center
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }

    class LabelHeaderTitle : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_HEADER_TITLE)
            self.textColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Left
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }

    class LabelHeaderDescription : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_SECONDARY_FONT, size : FONTSIZE_HEADER_DESCRIPTION)
            self.textColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Left
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }


    // NAVIGATION

    class LabelNavigation : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_PRIMARY_FONT, size : FONTSIZE_NAVIGATION_MENU)
            self.textColor = GeneratorUIColor(THEME_SEPTENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Center
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }


    // PROFILE

    class LabelProfileName : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_PRIMARY_FONT, size : FONTSIZE_USER_NAME)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Right
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }

    class LabelProfileSetting : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_SECONDARY_FONT, size : FONTSIZE_USER_SETTING)
            self.textColor = GeneratorUIColor(THEME_SEPTENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Right
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }

    class LabelProfileHeader : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_PRIMARY_FONT, size : FONTSIZE_USER_HEADER)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Right
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }

    class LabelProfileDetail : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_SECONDARY_FONT, size : FONTSIZE_USER_DETAIL)
            self.textColor = GeneratorUIColor(THEME_SEPTENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Right
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }


    // CONTENT

    class LabelTitle : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_FORM_TITLE)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Left
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
            self.text?.capitalizedString
        }
    }

    class TextViewNote : UITextView
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.heightAnchor.constraintEqualToConstant(TEXTVIEW_GENERAL_HEIGHT).active = true
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_FORM_FIELD)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Left
            self.backgroundColor = GeneratorUIColor(THEME_QUATERNARY_COLOR, Opacity: 1.0)
        }
    }

    class LabelField : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.bounds = CGRectInset(bounds, INPUT_SIDE_PADDING, INPUT_SIDE_PADDING)
            self.widthAnchor.constraintEqualToConstant(FIELD_GENERAL_WIDTH).active = true
            self.heightAnchor.constraintEqualToConstant(INPUT_GENERAL_HEIGHT).active = true
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_FORM_FIELD)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Left
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }

    class LabelQuestion : UILabel
    {
        required init?(coder aDecoder : NSCoder)
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.widthAnchor.constraintEqualToConstant(LABEL_QUESTION_WIDTH).active = true
            self.heightAnchor.constraintEqualToConstant(INPUT_GENERAL_HEIGHT).active = true
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_FORM_FIELD)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Left
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
        
        override init(frame: CGRect)
        {
            super.init(frame: frame)
            
            self.widthAnchor.constraintEqualToConstant(LABEL_QUESTION_WIDTH).active = true
            self.heightAnchor.constraintEqualToConstant(INPUT_GENERAL_HEIGHT).active = true
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_FORM_FIELD)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Left
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }

    class LabelOption : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.widthAnchor.constraintEqualToConstant(LABEL_OPTION_WIDTH).active = true
            self.heightAnchor.constraintEqualToConstant(INPUT_GENERAL_HEIGHT).active = true
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_FORM_FIELD)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Left
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
        
        override init(frame: CGRect)
        {
            super.init(frame: frame)
            
            self.widthAnchor.constraintEqualToConstant(LABEL_OPTION_WIDTH).active = true
            self.heightAnchor.constraintEqualToConstant(INPUT_GENERAL_HEIGHT).active = true
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_FORM_FIELD)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Left
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1 
        }
    }

    class LabelText : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_FORM_FIELD)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Left
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
            
            self.font = UIFont(name : THEME_PRIMARY_FONT, size : FONTSIZE_FOOTER_HEADER)
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
            
            self.font = UIFont(name : THEME_SECONDARY_FONT, size : FONTSIZE_FOOTER_DETAIL)
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
            
            self.font = UIFont(name : THEME_PRIMARY_FONT, size : FONTSIZE_FOOTER_HEADER)
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
            
            self.font = UIFont(name : THEME_SECONDARY_FONT, size : FONTSIZE_FOOTER_DETAIL)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Right
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 4
        }
    }