//
//  File.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 11/12/15.
//  Copyright © 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//

import Foundation
import UIKit

class AlertDropDown
{
    var DropDownTitle : String
    var DropDownMessage : String
    var ArrayPositiveAction : Array<String>
    var ResponseTitle : String
    var ResponseMessage : String
    var ResponsePlaceholder : String
    var KeyboardType : UIKeyboardType
    var AddState : Bool
    
    init()
    {
        DropDownTitle = ""
        DropDownMessage = ""
        ArrayPositiveAction = []
        ResponseTitle = ""
        ResponseMessage = ""
        ResponsePlaceholder = ""
        KeyboardType = UIKeyboardType.Alphabet
        AddState = false
    }
    
    func SetDropDownTitle(DropDownTitle : String) -> Void
    {
        self.DropDownTitle = DropDownTitle
    }
    
    func GetDropDownTitle() -> String
    {
        return self.DropDownTitle
    }
    
    func SetDropDownMessage(DropDownMessage : String) -> Void
    {
        self.DropDownMessage = DropDownMessage
    }
    
    func GetDropDownMessage() -> String
    {
        return self.DropDownMessage
    }
    
    func SetArrayPositiveAction(ArrayPositiveAction : Array<String>) -> Void
    {
        self.ArrayPositiveAction = ArrayPositiveAction
    }
    
    func GetArrayPositiveAction() -> Array<String>
    {
        return self.ArrayPositiveAction
    }
    
    func SetResponseTitle(ResponseTitle : String) -> Void
    {
        self.ResponseTitle = ResponseTitle
    }
    
    func GetResponseTitle() -> String
    {
        return self.ResponseTitle
    }
    
    func SetResponseMessage(ResponseMessage : String) -> Void
    {
        self.ResponseMessage = ResponseMessage
    }
    
    func GetResponseMessage() -> String
    {
        return self.ResponseMessage
    }
    
    func SetResponsePlaceholder(ResponsePlaceholder : String) -> Void
    {
        self.ResponsePlaceholder = ResponsePlaceholder
    }
    
    func GetResponsePlaceholder() -> String
    {
        return self.ResponsePlaceholder
    }
    
    func SetKeyboardType(KeyboardType : UIKeyboardType) -> Void
    {
        self.KeyboardType = KeyboardType
    }
    
    func GetKeyboardType() -> UIKeyboardType
    {
        return self.KeyboardType
    }
    
    func SetAddState(AddState : Bool) -> Void
    {
        self.AddState = AddState
    }
    
    func GetAddState() -> Bool
    {
        return self.AddState
    }
}


class AlertSetting
{
    var AlertTitle : String
    var AlertMessage : String
    var PageIdentifier : String
    var ID : Int
    var Value : String
    var Holder : String
    var Catagory : String
    var BillerCode : String
    var DeleteEntity : String
    var DeleteColoumn : String
    var DeleteValue : Int
    
    init()
    {
        AlertTitle = ""
        AlertMessage = ""
        PageIdentifier = ""
        ID = 0
        Value = ""
        Holder = ""
        Catagory = ""
        BillerCode = ""
        DeleteEntity = ""
        DeleteColoumn = ""
        DeleteValue = 0
    }
    
    func SetAlertTitle(AlertTitle : String) -> Void
    {
        self.AlertTitle = AlertTitle
    }
    
    func GetAlertTitle() -> String
    {
        return self.AlertTitle
    }
    
    func SetAlertMessage(AlertMessage : String) -> Void
    {
        self.AlertMessage = AlertMessage
    }
    
    func GetAlertMessage() -> String
    {
        return self.AlertMessage
    }
    
    func SetPageIdentifier(PageIdentifier : String) -> Void
    {
        self.PageIdentifier = PageIdentifier
    }
    
    func GetPageIdentifier() -> String
    {
        return self.PageIdentifier
    }
    
    func SetID(ID : Int) -> Void
    {
        self.ID = ID
    }
    
    func GetID() -> Int
    {
        return self.ID
    }
    
    func SetValue(Value : String) -> Void
    {
        self.Value = Value
    }
    
    func GetValue() -> String
    {
        return self.Value
    }
    
    func SetHolder(Holder : String) -> Void
    {
        self.Holder = Holder
    }
    
    func GetHolder() -> String
    {
        return self.Holder
    }
    
    func SetCatagory(Catagory : String) -> Void
    {
        self.Catagory = Catagory
    }
    
    func GetCatagory() -> String
    {
        return self.Catagory
    }
    
    func SetDeleteEntity(DeleteEntity : String) -> Void
    {
        self.DeleteEntity = DeleteEntity
    }
    
    func GetDeleteEntity() -> String
    {
        return self.DeleteEntity
    }
    
    func SetDeleteColoumn(DeleteColoumn : String) -> Void
    {
        self.DeleteColoumn = DeleteColoumn
    }
    
    func GetDeleteColoumn() -> String
    {
        return self.DeleteColoumn
    }
    
    func SetDeleteValue(DeleteValue : Int) -> Void
    {
        self.DeleteValue = DeleteValue
    }
    
    func GetDeleteValue() -> Int
    {
        return self.DeleteValue
    }
    
    func SetBillerCode(BillerCode : String) -> Void
    {
        self.BillerCode = BillerCode
    }
    
    func GetBillerCode() -> String
    {
        return self.BillerCode
    }
}

class AlertGeneral
{
    var AlertTitle : String
    var AlertMessage : String
    var ButtonPositive : String
    var ButtonNegative : String
    var SegueIdentifier : String
    var MessageState : Int
    var ArrayInput : Array<AnyObject>
    
    init()
    {
        AlertTitle = ""
        AlertMessage = ""
        ButtonPositive = NSLocalizedString("BUTTON_OK", comment: "")
        ButtonNegative = NSLocalizedString("BUTTON_CANCEL", comment: "")
        SegueIdentifier = ""
        MessageState = 0
        ArrayInput = []
    }
    
    func SetAlertTitle(AlertTitle : String) -> Void
    {
        self.AlertTitle = AlertTitle
    }
    
    func GetAlertTitle() -> String
    {
        return self.AlertTitle
    }
    
    func SetAlertMessage(AlertMessage : String) -> Void
    {
        self.AlertMessage = AlertMessage
    }
    
    func GetAlertMessage() -> String
    {
        return self.AlertMessage
    }
    
    func SetButtonPositive(ButtonPositive : String) -> Void
    {
        self.ButtonPositive = ButtonPositive
    }
    
    func GetButtonPositive() -> String
    {
        return self.ButtonPositive
    }
    
    func SetButtonNegative(ButtonNegative : String) -> Void
    {
        self.ButtonNegative = ButtonNegative
    }
    
    func GetButtonNegative() -> String
    {
        return self.ButtonNegative
    }
    
    func SetSegueIdentifier(SegueIdentifier : String) -> Void
    {
        self.SegueIdentifier = SegueIdentifier
    }
    
    func GetSegueIdentifier() -> String
    {
        return self.SegueIdentifier
    }
    
    func SetMessageState(MessageState : Int) -> Void
    {
        self.MessageState = MessageState
    }
    
    func GetMessageState() -> Int
    {
        return self.MessageState
    }
    
    func SetArrayInput(ArrayInput : Array<AnyObject>) -> Void
    {
        self.ArrayInput = ArrayInput
    }
    
    func GetArrayInput() -> Array<AnyObject>
    {
        return self.ArrayInput
    }
}