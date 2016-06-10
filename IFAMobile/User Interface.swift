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

func AlertSheetDropDown(AlertVariable : AlertDropDown, Sender : AnyObject, ViewController : UIViewController) -> UIAlertController
{
    // ALERT CONTROLLER
    
    let ActionSheetController: UIAlertController = UIAlertController(title : AlertVariable.GetDropDownTitle(), message: AlertVariable.GetDropDownMessage(), preferredStyle : UIAlertControllerStyle.ActionSheet)
    
    var ArrayPositiveAction : Array<String> = AlertVariable.GetArrayPositiveAction()
    
    if(AlertVariable.GetAddState() == true)
    {
        ArrayPositiveAction.append(NSLocalizedString("TITLE_ADDNEW", comment: ""))
    }
    else
    {
        
    }
    
    guard let textField = Sender as? UITextField else
    {
        return ActionSheetController
    }
    
    
    // NEGATIVE ACTION
    
    let ActionNegative : UIAlertAction = UIAlertAction(title: NSLocalizedString("TITLE_CANCEL", comment: ""), style: .Cancel)
    {
        action -> Void in
        
        if let DropDownAsTextField = Sender as? UITextField
        {
            DropDownAsTextField.endEditing(true)
        }
        else
        {
            
        }
    }
    
    ActionSheetController.addAction(ActionNegative)
    
    
    // POSITIVE ACTION
    
    for i in 0 ..< ArrayPositiveAction.count
    {
        let ActionPositive : UIAlertAction = UIAlertAction(title: ArrayPositiveAction[i], style: .Default)
        {
            action -> Void in
            
            if let DropDownAsTextField = Sender as? UITextField
            {
                DropDownAsTextField.text = action.title
            }
        }
        ActionSheetController.addAction(ActionPositive)
    }
    
    if let presenter = ActionSheetController.popoverPresentationController
    {
        presenter.sourceView = textField
        presenter.sourceRect = textField.bounds
    }
    
    return ActionSheetController
}