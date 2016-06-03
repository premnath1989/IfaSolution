////
////  Database Initialization.swift
////  IFAMobile
////
////  Created by Ibrahim Aziz Tejokusumo on 6/3/16.
////  Copyright © 2016 Ibrahim. All rights reserved.
////
//
//
//// IMPORT
//
//import Foundation
//import UIKit
//import CoreData
//
//
//// GENERAL
//
//func InsertContext() -> NSManagedObjectContext
//{
//    //1
//    let ApplicationDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//    return ApplicationDelegate.managedObjectContext
//}
//
//func InsertHeader(Context : NSManagedObjectContext, TableName : String) -> NSManagedObject
//{
//    //2
//    let Table =  NSEntityDescription.entityForName(TableName, inManagedObjectContext : Context)
//    let TableRow = NSManagedObject(entity: Table!, insertIntoManagedObjectContext : Context)
//    
//    return TableRow
//}
//
//func IDGenerator (EntityName : String) -> Int
//{
//    var GeneratedID : Int = SelectDatabase(EntityName).count
//    
//    if(GeneratedID == 0)
//    {
//        GeneratedID = 1
//    }
//    else
//    {
//        GeneratedID = GeneratedID + 1
//    }
//    
//    return GeneratedID
//}
//
//
//// TABLE
//
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
//        NSLog("InsertUser(\(UserVariable.GetID())) - Could not fetch \(error), \(error.userInfo).", error)
//    }
//}
