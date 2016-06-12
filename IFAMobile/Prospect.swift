//
//  Prospect.swift
//  IFAMobile
//
//  Created by Ibrahim Aziz Tejokusumo on 6/12/16.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation


// CLASS

class ProspectBasicInformation
{
    // INITIALIZATION
    
    static let SharedInstance = ProspectBasicInformation()
    
    var ID : Int
    var Title : String
    var Name : String
    var Birthday : NSDate
    var Gender : String
    var Address : String
    var ContactNumber : String
    var Email : String
    var State : Bool
    
    init()
    {
        let date = NSDate()
        
        self.ID = 0
        self.Title = ""
        self.Name = ""
        self.Birthday = date.formattedWithToNSDate("d/MM/yyyy")
        self.Gender = "Female"
        self.Address = ""
        self.ContactNumber = ""
        self.Email = ""
        self.State = true
    }
    
    
    // SETTER
    
    func SetProspectBasicInformation
    (
        ID : Int,
        Title : String,
        Name : String,
        Birthday : NSDate,
        Gender : String,
        Address : String,
        ContactNumber : String,
        Email : String,
        State : Bool
    ) -> Void
    {
        self.ID = ID
        self.Title = Title
        self.Name = Name
        self.Birthday = Birthday
        self.Gender = Gender
        self.Address = Address
        self.ContactNumber = ContactNumber
        self.Email = Email
        self.State = State
    }
    
    func SetBirthday(birthday : NSDate) -> Void
    {
        self.Birthday = birthday
    }
    
    
    // GETTER
    
    func GetID() -> Int
    {
        return self.ID
    }
    
    func GetName() -> String
    {
        return self.Name
    }
    
    func GetBirthday() -> NSDate
    {
        return self.Birthday
    }
    
    func GetGender() -> String
    {
        return self.Gender
    }
    
    func GetAddress() -> String
    {
        return self.Address
    }
    
    func GetContactNumber() -> String
    {
        return self.ContactNumber
    }
    
    func GetEmail() -> String
    {
        return self.Email
    }
    
    func GetState() -> Bool
    {
        return self.State
    }
}