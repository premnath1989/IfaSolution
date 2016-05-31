//
//  UserInterface.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 9/5/15.
//  Copyright (c) 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

import Foundation
import UIKit
import CoreData


// FUNCTION

public func GeneratorUIColor(HexColor : UInt32, Opacity : Double = 1.0) -> UIColor
{
    let RedValue = CGFloat((HexColor & 0xFF0000) >> 16) / 256.0
    let GreenValue = CGFloat((HexColor & 0xFF00) >> 8) / 256.0
    let BlueValue = CGFloat(HexColor & 0xFF) / 256.0

    return UIColor(red : RedValue, green : GreenValue, blue : BlueValue, alpha : CGFloat(Opacity))
}