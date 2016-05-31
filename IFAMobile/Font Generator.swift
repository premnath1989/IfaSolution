//
//  Font Generator.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 9/8/15.
//  Copyright (c) 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

import UIKit
import Foundation


// FUNCTION

public func GeneratorFontName()
{
    for name in UIFont.familyNames()
    {
        print(name, terminator: "")
        
        if let nameString : String = name // as? String
        {
            print(UIFont.fontNamesForFamilyName(nameString), terminator: "")
        }
    }
}


public func CapitalizedFrontLetter(nameOfString:String)->String
{
    let result : String = nameOfString
    return result.capitalizedStringWithLocale(NSLocale.currentLocale())
}