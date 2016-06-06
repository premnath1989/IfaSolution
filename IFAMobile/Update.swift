//
//  Update.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 10/20/15.
//  Copyright © 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//

import Foundation
import UIKit
import CoreData


func UpdateContext() -> NSManagedObjectContext
{
    //1
    let ApplicationDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    return ApplicationDelegate.managedObjectContext
}

//func UpdateUser(UserVariable : EntityUser, UpdateVariable : EntityUpdate) -> [NSManagedObject]
//{
//    let TableContext = UpdateContext()
//    
//    //2
//    let Table = NSFetchRequest(entityName: Entity_User)
//    let WhereStatement = NSPredicate(format: UpdateVariable.GetColoumnName() + Character_Dash + UpdateVariable.GetCondition(), String(UpdateVariable.GetIntColoumnValue()))
//    Table.predicate = WhereStatement
//    var TableVariable = [NSManagedObject]()
//    
//    //3
//    do
//    {
//        let QueryResults = try TableContext.executeFetchRequest(Table)
//        TableVariable = QueryResults as! [NSManagedObject]
//        
//        if (TableVariable.count != 0)
//        {
//            TableVariable[0].setValue(UserVariable.GetPassword(), forKey: Coloumn_User_Password)
//            TableVariable[0].setValue(UserVariable.GetPasswordChanged(), forKey: Coloumn_User_PasswordChanged)
//        }
//        else
//        {
//            
//        }
//        
//        try TableContext.save()
//        NSLog("UpdateUser(\(UserVariable.GetID())) - Fetching.", TableVariable)
//    }
//    catch let error as NSError
//    {
//        print("Could not fetch \(error), \(error.userInfo)")
//        NSLog("UpdateUser(\(UserVariable.GetID())) - Could not fetch \(error), \(error.userInfo).", error)
//    }
//    
//    print(UpdateVariable.GetColoumnName())
//    print(UpdateVariable.GetIntColoumnValue())
//    print(UserVariable.GetPassword())
//    print(UserVariable.GetPasswordChanged())
//    
//    return TableVariable
//}