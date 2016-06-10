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

    class ButtonNavigation : UIButton
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.titleLabel?.font = UIFont(name : THEME_PRIMARY_FONT, size : FONTSIZE_NAVIGATION_MENU)
            self.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 0.0);
            self.setTitleColor(GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0), forState: .Normal)
        }
    }

    class ButtonLoginNavigation : UIButton
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.titleLabel?.font = UIFont(name : THEME_SECONDARY_FONT, size : FONTSIZE_NAVIGATION_LOGIN)
            self.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 0.0);
            self.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState: .Normal)
        }
    }


    // GUIDE

    class LabelGuideDetail : UILabel
    {
        required init?(coder aDecoder : NSCoder)
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.widthAnchor.constraintEqualToConstant(ICON_SIZE_LDPI).active = true
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_GUIDE_STEP)
            self.textColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Center
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 2
        }
        
        override init(frame: CGRect)
        {
            super.init(frame: frame)
            
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_GUIDE_DETAIL)
            self.textColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Center
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 2
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
            self.numberOfLines = 2
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

class LabelFieldShort : UILabel
{
    required init?(coder aDecoder : (NSCoder!))
    {
        super.init(coder: aDecoder)
        
        // GENERAL
        
        self.bounds = CGRectInset(bounds, INPUT_SIDE_PADDING, INPUT_SIDE_PADDING)
        self.widthAnchor.constraintEqualToConstant(FIELD_GENERAL_WIDTH * 0.8).active = true
        self.heightAnchor.constraintEqualToConstant(INPUT_GENERAL_HEIGHT).active = true
        self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_FORM_FIELD)
        self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
        self.textAlignment = .Left
        self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
        self.numberOfLines = 1
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

class LabelFieldLong : UILabel
{
    required init?(coder aDecoder : (NSCoder!))
    {
        super.init(coder: aDecoder)
        
        // GENERAL
        
        self.bounds = CGRectInset(bounds, INPUT_SIDE_PADDING, INPUT_SIDE_PADDING)
        self.widthAnchor.constraintEqualToConstant(FIELD_GENERAL_WIDTH * 1.25).active = true
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
            
            self.widthAnchor.constraintEqualToConstant(LABEL_QUESTION_WIDTH * 0.85).active = true
            self.heightAnchor.constraintEqualToConstant(INPUT_GENERAL_HEIGHT).active = true
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_FORM_FIELD)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Left
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 4
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

    class LabelPicker : UILabel
    {
        override func drawTextInRect(rect: CGRect)
        {
            let insets: UIEdgeInsets = UIEdgeInsets(top: 0.0, left: 10.0, bottom: 0.0, right: 10.0)
            super.drawTextInRect(UIEdgeInsetsInsetRect(rect, insets))
        }
        
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_FORM_FIELD)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Center
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
        
        override init(frame: CGRect)
        {
            super.init(frame: frame)
            
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_FORM_FIELD)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Center
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

    class LabelPlan : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_ENORMOUS)
            self.textColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Center
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }


    class LabelCalendarTextGrey : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.widthAnchor.constraintEqualToConstant(CALENDAR_SIZE).active = true
            self.heightAnchor.constraintEqualToConstant(CALENDAR_SIZE).active = true
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_CALENDAR)
            self.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Center
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }

    class LabelCalendarTextRed : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.widthAnchor.constraintEqualToConstant(CALENDAR_SIZE).active = true
            self.heightAnchor.constraintEqualToConstant(CALENDAR_SIZE).active = true
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_CALENDAR)
            self.textColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Center
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }

    class LabelCalendarCircleGrey : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.widthAnchor.constraintEqualToConstant(CALENDAR_SIZE).active = true
            self.heightAnchor.constraintEqualToConstant(CALENDAR_SIZE).active = true
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_CALENDAR)
            self.textColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Center
            self.backgroundColor = GeneratorUIColor(THEME_SEPTENARY_COLOR, Opacity: 1.0)
            self.layer.cornerRadius = CALENDAR_SIZE * 0.5
            self.baselineAdjustment = UIBaselineAdjustment.AlignCenters
            self.numberOfLines = 1
        }
    }

    class LabelCalendarCircleRed : UILabel
    {
        required init?(coder aDecoder : (NSCoder!))
        {
            super.init(coder: aDecoder)
            
            // GENERAL
            
            self.widthAnchor.constraintEqualToConstant(CALENDAR_SIZE).active = true
            self.heightAnchor.constraintEqualToConstant(CALENDAR_SIZE).active = true
            self.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_CALENDAR)
            self.textColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
            self.textAlignment = .Center
            self.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity: 1.0)
            self.layer.cornerRadius = CALENDAR_SIZE * 0.5
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