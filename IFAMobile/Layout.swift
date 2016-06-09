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
        self.backgroundColor = GeneratorUIColor(THEME_TERTIARY_COLOR, Opacity: 1.0)
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

class ScrollViewDesktopContainer : UIScrollView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        self.backgroundColor = GeneratorUIColor(THEME_QUATERNARY_COLOR, Opacity: 1.0)
    }
}

class ViewPaperContainer : UIView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        self.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity: 1.0)
    }
}

class StackViewFieldContainer : UIStackView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        self.axis = .Vertical
        self.alignment = .Leading
        self.distribution = .Fill
        self.spacing = 10
    }
}

class StackViewInputContainer : UIStackView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        self.axis = .Vertical
        self.alignment = .Fill
        self.spacing = 10
    }
}

class StackViewFormContainer : UIStackView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        self.axis = .Horizontal
        self.alignment = .Leading
        self.distribution = .Fill
        self.spacing = 10
    }
}

class StackViewQuestionnaireContainer : UIStackView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        self.axis = .Vertical
        self.alignment = .Leading
        self.distribution = .Fill
        self.spacing = 5
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
    }
}

class StackViewQuestionHorizontalContainer : UIStackView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        self.axis = .Horizontal
        self.alignment = .Leading
        self.distribution = .FillProportionally
        self.spacing = 10
    }
}

class StackViewQuestionVerticalContainer : UIStackView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        self.axis = .Vertical
        self.alignment = .Leading
        self.distribution = .Fill
        self.spacing = 10
    }
}

class StackViewOptionContainer : UIStackView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        self.axis = .Horizontal
        self.alignment = .Leading
        self.distribution = .Fill
        self.spacing = 10
    }
}

class StackViewCalendarHorizontalContainer : UIStackView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        self.axis = .Horizontal
        self.alignment = .Center
        self.distribution = .Fill
        self.spacing = 40
    }
}

class StackViewCalendarVerticalContainer : UIStackView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        self.axis = .Vertical
        self.alignment = .Center
        self.distribution = .Fill
        self.spacing = 5
    }
}

class ImageViewSignature : UIImageView
{
    required init?(coder aDecoder: (NSCoder!))
    {
        super.init(coder: aDecoder)
        
        self.widthAnchor.constraintEqualToConstant(120).active = true
        self.heightAnchor.constraintEqualToConstant(60).active = true
        self.backgroundColor = GeneratorUIColor(THEME_QUATERNARY_COLOR, Opacity: 1.0)
    }
}

