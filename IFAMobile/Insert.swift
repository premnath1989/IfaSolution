//
//  Insert.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 10/20/15.
//  Copyright © 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//

// IMPORT

import Foundation
import CoreData
import UIKit


// CLASS

    // GENERAL

    func InsertContext() -> NSManagedObjectContext
    {
        //1
        let ApplicationDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        return ApplicationDelegate.managedObjectContext
    }

    func InsertHeader(Context : NSManagedObjectContext, TableName : String) -> NSManagedObject
    {
        //2
        let Table =  NSEntityDescription.entityForName(TableName, inManagedObjectContext : Context)
        let TableRow = NSManagedObject(entity: Table!, insertIntoManagedObjectContext : Context)
        
        return TableRow
    }

    func IDGenerator (EntityName : String) -> Int
    {
        var GeneratedID : Int = SelectDatabase(EntityName).count
        
        if(GeneratedID == 0)
        {
            GeneratedID = 1
        }
        else
        {
            GeneratedID = GeneratedID + 1
        }
        
        return GeneratedID
    }


    // TABLE

    //func InsertUser(UserVariable : EntityUser)
    //{
    //    let GeneratedID = IDGenerator(Entity_User)
    //    
    //    let TableContext = InsertContext()
    //    let TableRow = InsertHeader(TableContext, TableName: Entity_User)
    //    
    //    TableRow.setValue(GeneratedID, forKey: Coloumn_User_ID)
    //    TableRow.setValue(UserVariable.GetPassword(), forKey: Coloumn_User_Password)
    //    TableRow.setValue(UserVariable.GetConnectionType(), forKey: Coloumn_User_ConnectionType)
    //    TableRow.setValue(UserVariable.GetPasswordChanged(), forKey: Coloumn_User_PasswordChanged)
    //    
    //    do
    //    {
    //        try TableContext.save()
    //        NSLog("InsertUser(\(UserVariable.GetID())) - Fetching.", TableRow)
    //        // TableVariable.append(TableRow)
    //    }
    //    catch let error as NSError
    //    {
    //        print("Could not save \(error), \(error.userInfo)")
    //         NSLog("InsertUser(\(UserVariable.GetID())) - Could not fetch \(error), \(error.userInfo).", error)
    //    }
    //}

    func InsertQuestionnaire(Entity : EntityQuestionnaire)
    {
        let GeneratedID = IDGenerator(ENTITY_QUESTIONNAIRE)
        
        let TableContext = InsertContext()
        let TableRow = InsertHeader(TableContext, TableName: ENTITY_QUESTIONNAIRE)
        
        TableRow.setValue(GeneratedID, forKey: COLUMN_QUESTIONNAIRE_ID)
        TableRow.setValue(Entity.GetState(), forKey: COLUMN_QUESTIONNAIRE_STATE)
        
        do
        {
            try TableContext.save()
            NSLog("Insert " + ENTITY_QUESTIONNAIRE + "(\(Entity.GetStringID())) - Inserted.", TableRow)
        }
        catch let error as NSError
        {
            NSLog("Insert " + ENTITY_QUESTIONNAIRE + "(\(Entity.GetStringID())) - Could not insert \(error), \(error.userInfo).", error)
        }
    }

    func InsertQuestion(Entity : EntityQuestion)
    {
        let GeneratedID = IDGenerator(ENTITY_QUESTION)
        
        let TableContext = InsertContext()
        let TableRow = InsertHeader(TableContext, TableName: ENTITY_QUESTION)
        
        TableRow.setValue(GeneratedID, forKey: COLUMN_QUESTION_ID)
        TableRow.setValue(Entity.GetIntQuestionnaireID(), forKey: COLUMN_QUESTION_QUESTIONNAIREID)
        TableRow.setValue(Entity.GetQuestion(), forKey: COLUMN_QUESTION_QUESTION)
        TableRow.setValue(Entity.GetState(), forKey: COLUMN_QUESTION_STATE)
        
        do
        {
            try TableContext.save()
            NSLog("Insert " + ENTITY_QUESTION + "(\(Entity.GetStringID())) - Inserted.", TableRow)
        }
        catch let error as NSError
        {
            NSLog("Insert " + ENTITY_QUESTION + "(\(Entity.GetStringID())) - Could not insert \(error), \(error.userInfo).", error)
        }
    }

    func InsertOption(Entity : EntityOption)
    {
        let GeneratedID = IDGenerator(ENTITY_OPTION)
        
        let TableContext = InsertContext()
        let TableRow = InsertHeader(TableContext, TableName: ENTITY_OPTION)
        
        TableRow.setValue(GeneratedID, forKey: COLUMN_OPTION_ID)
        TableRow.setValue(Entity.GetIntQuestionnaireID(), forKey: COLUMN_OPTION_QUESTIONNAIREID)
        TableRow.setValue(Entity.GetOption(), forKey: COLUMN_OPTION_OPTION)
        TableRow.setValue(Entity.GetState(), forKey: COLUMN_OPTION_STATE)
        
        do
        {
            try TableContext.save()
            NSLog("Insert " + ENTITY_OPTION + "(\(Entity.GetStringID())) - Inserted.", TableRow)
        }
        catch let error as NSError
        {
            NSLog("Insert " + ENTITY_OPTION + "(\(Entity.GetStringID())) - Could not insert \(error), \(error.userInfo).", error)
        }
    }

func InsertProspect(Entity : EntityProspect)
{
    let GeneratedID = IDGenerator(ENTITY_PROSPECT)
    
    let TableContext = InsertContext()
    let TableRow = InsertHeader(TableContext, TableName: ENTITY_PROSPECT)
    
    TableRow.setValue(GeneratedID, forKey: COLUMN_PROSPECT_ID)
    TableRow.setValue(Entity.GetName(), forKey: COLUMN_PROSPECT_NAME)
    TableRow.setValue(Entity.GetTitle(), forKey: COLUMN_PROSPECT_TITLE)
    TableRow.setValue(Entity.GetBirthday(), forKey: COLUMN_PROSPECT_TITLE)
    TableRow.setValue(Entity.GetGender(), forKey: COLUMN_PROSPECT_GENDER)
    TableRow.setValue(Entity.GetAddress(), forKey: COLUMN_PROSPECT_ADDRESS)
    TableRow.setValue(Entity.GetTelephoneNumber(), forKey: COLUMN_PROSPECT_TELEPHONENUMBER)
    TableRow.setValue(Entity.GetEmail(), forKey: COLUMN_PROSPECT_EMAIL)
    TableRow.setValue(Entity.GetCreatedOn(), forKey: COLUMN_PROSPECT_CREATEDON)
    TableRow.setValue(Entity.GetCreatedBy(), forKey: COLUMN_PROSPECT_CREATEDBY)
    TableRow.setValue(Entity.GetUpdatedOn(), forKey: COLUMN_PROSPECT_UPDATEDON)
    TableRow.setValue(Entity.GetUpdatedBy(), forKey: COLUMN_PROSPECT_UPDATEDBY)
    TableRow.setValue(Entity.GetState(), forKey: COLUMN_PROSPECT_STATE)
    
    do
    {
        try TableContext.save()
        NSLog("Insert " + ENTITY_PROSPECT + "(\(Entity.GetID())) - Inserted.", TableRow)
    }
    catch let error as NSError
    {
        NSLog("Insert " + ENTITY_PROSPECT + "(\(Entity.GetID())) - Could not insert \(error), \(error.userInfo).", error)
    }
}
