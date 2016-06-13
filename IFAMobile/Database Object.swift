//
//  Database Object.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 12/8/15.
//  Copyright © 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// CLASS

class EntityQuestionnaire
{
    var ID : Int
    var State : Bool
    
    init()
    {
        ID = 0
        State = true
    }
    
    func SetIntID(ID : Int) -> Void
    {
        self.ID = ID
    }
    
    func GetIntID() -> Int
    {
        return self.ID
    }
    
    func SetStringID(ID : String) -> Void
    {
        self.ID = Int(ID)!
    }
    
    func GetStringID() -> String
    {
        return String(self.ID)
    }
    
    func SetState(State : Bool) -> Void
    {
        self.State = State
    }
    
    func GetState() -> Bool
    {
        return self.State
    }
}

class EntityQuestion
{
    var ID : Int
    var QuestionnaireID : Int
    var Question : String
    var State : Bool
    
    init()
    {
        ID = 0
        QuestionnaireID = 0
        Question = ""
        State = true
    }
    
    func SetIntID(ID : Int) -> Void
    {
        self.ID = ID
    }
    
    func GetIntID() -> Int
    {
        return self.ID
    }
    
    func SetStringID(ID : String) -> Void
    {
        self.ID = Int(ID)!
    }
    
    func GetStringID() -> String
    {
        return String(self.ID)
    }
    
    func SetIntQuestionnaireID(QuestionnaireID : Int) -> Void
    {
        self.QuestionnaireID = QuestionnaireID
    }
    
    func GetIntQuestionnaireID() -> Int
    {
        return self.QuestionnaireID
    }
    
    func SetStringQuestionnaireID(QuestionnaireID : String) -> Void
    {
        self.QuestionnaireID = Int(QuestionnaireID)!
    }
    
    func GetStringQuestionnaireID() -> String
    {
        return String(self.QuestionnaireID)
    }
    
    func SetQuestion(Question : String) -> Void
    {
        self.Question = Question
    }
    
    func GetQuestion() -> String
    {
        return self.Question
    }
    
    func SetState(State : Bool) -> Void
    {
        self.State = State
    }
    
    func GetState() -> Bool
    {
        return self.State
    }
}

class EntityOption
{
    var ID : Int
    var QuestionnaireID : Int
    var Option : String
    var State : Bool
    
    init()
    {
        ID = 0
        QuestionnaireID = 0
        Option = ""
        State = true
    }
    
    func SetIntID(ID : Int) -> Void
    {
        self.ID = ID
    }
    
    func GetIntID() -> Int
    {
        return self.ID
    }
    
    func SetStringID(ID : String) -> Void
    {
        self.ID = Int(ID)!
    }
    
    func GetStringID() -> String
    {
        return String(self.ID)
    }
    
    func SetIntQuestionnaireID(QuestionnaireID : Int) -> Void
    {
        self.QuestionnaireID = QuestionnaireID
    }
    
    func GetIntQuestionnaireID() -> Int
    {
        return self.QuestionnaireID
    }
    
    func SetStringQuestionnaireID(QuestionnaireID : String) -> Void
    {
        self.QuestionnaireID = Int(QuestionnaireID)!
    }
    
    func GetStringQuestionnaireID() -> String
    {
        return String(self.QuestionnaireID)
    }
    
    func SetOption(Option : String) -> Void
    {
        self.Option = Option
    }
    
    func GetOption() -> String
    {
        return self.Option
    }
    
    func SetState(State : Bool) -> Void
    {
        self.State = State
    }
    
    func GetState() -> Bool
    {
        return self.State
    }
}

/* class EntityUser
{
    var ID : Int
    var Code : String
    var Password : String
    var Name : String
    var Address : String
    var TelephoneNumber : String
    var Email : String
    var State : Bool
    var PasswordChanged : Bool
    
    init()
    {
        ID = 0
        Password = ""
        // ConnectionType = Connection_Type_SMS
        PasswordChanged = false
    }
    
    func SetID(ID : Int) -> Void
    {
        self.ID = ID
    }
    
    func GetID() -> Int
    {
        return self.ID
    }
    
    func SetPassword(Password : String) -> Void
    {
        self.Password = Password
    }
    
    func GetPassword() -> String
    {
        return self.Password
    }
    
    func SetConnectionType(ConnectionType : String) -> Void
    {
        self.ConnectionType = ConnectionType
    }
    
    func GetConnectionType() -> String
    {
        return self.ConnectionType
    }
    
    func SetPasswordChanged(PasswordChanged : Bool) -> Void
    {
        self.PasswordChanged = PasswordChanged
    }
    
    func GetPasswordChanged() -> Bool
    {
        return self.PasswordChanged
    }
} */

class EntityProspect
{
    var ID : Int
    var Name : String
    var Title : String
    var Birthday : NSDate
    var Gender : Bool
    var Address : String
    var TelephoneNumber : String
    var Email : String
    var State : Bool
    var UpdatedOn : NSDate
    var UpdatedBy : Int
    var CreatedOn : NSDate
    var CreatedBy : Int
    
    
    init()
    {
        ID = 0
        Name = ""
        Title = ""
        Birthday = NSDate()
        Gender = true
        Address = ""
        TelephoneNumber = ""
        Email = ""
        State = true
        UpdatedOn = NSDate()
        UpdatedBy = 0
        CreatedOn = NSDate()
        CreatedBy = 0
    }
    
    func SetID(ID : Int) -> Void
    {
        self.ID = ID
    }
    
    func GetID() -> Int
    {
        return self.ID
    }
    
    func SetName(Name : String) -> Void
    {
        self.Name = Name
    }
    
    func GetName() -> String
    {
        return self.Name
    }
    
    func SetTitle(Title : String) -> Void
    {
        self.Title = Title
    }
    
    func GetTitle() -> String
    {
        return self.Title
    }
    
    func SetBirthday(Birthday : NSDate) -> Void
    {
        self.Birthday = Birthday
    }
    
    func GetBirthday() -> NSDate
    {
        return self.Birthday
    }
    
    func SetGender(Gender : Bool) -> Void
    {
        self.Gender = Gender
    }
    
    func GetGender() -> Bool
    {
        return self.Gender
    }
    
    func SetState(State : Bool) -> Void
    {
        self.State = State
    }
    
    func GetState() -> Bool
    {
        return self.State
    }
}