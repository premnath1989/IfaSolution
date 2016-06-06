//
//  Delete.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 10/20/15.
//  Copyright © 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//

import Foundation
import UIKit
import CoreData


func DeleteContext() -> NSManagedObjectContext
{
    //1
    let ApplicationDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    return ApplicationDelegate.managedObjectContext
}

func DeleteSingleWhere(DeleteVariable : EntityDelete) -> [NSManagedObject]
{
    let TableContext = DeleteContext()
    var ColoumnValue : String = ""
    
    if DeleteVariable.GetStringColoumnValue().characters.count == 0
    {
        ColoumnValue = String(DeleteVariable.GetIntColoumnValue())
    }
    else
    {
        ColoumnValue = DeleteVariable.GetStringColoumnValue()
    }
    
    //2
    let Table = NSFetchRequest(entityName: DeleteVariable.GetEntityName())
    let WhereStatement = NSPredicate(format: DeleteVariable.GetColoumnName() + CHARACTER_DASH + DeleteVariable.GetCondition(), ColoumnValue)
    Table.predicate = WhereStatement
    var TableVariable = [NSManagedObject]()
    
    //3
    do
    {
        let QueryResults = try TableContext.executeFetchRequest(Table)
        TableVariable = QueryResults as! [NSManagedObject]
        
        if (TableVariable.count != 0)
        {
            for i : Int in 0 ..< TableVariable.count
            {
                TableVariable[i].managedObjectContext?.deleteObject(TableVariable[i])
            }
        }
        else
        {
            
        }
        
        try TableContext.save()
        NSLog("DeleteSingleWhere(\(DeleteVariable.GetEntityName())) - Fetching.", TableVariable)
    }
    catch let error as NSError
    {
        print("Could not fetch \(error), \(error.userInfo)")
        NSLog("DeleteSingleWhere(\(DeleteVariable.GetEntityName())) - Could not fetch \(error), \(error.userInfo).", error)
    }
    
    return TableVariable
}

//func MultiDeleteWhere(MultiDeleteVariable : EntityMultiDelete) -> [NSManagedObject]
//{
//    let TableContext = DeleteContext()
//    let Table = NSFetchRequest(entityName: MultiDeleteVariable.GetEntityName())
//    var WhereStatement : Array<NSPredicate>
//    
//    //2
//    if MultiDeleteVariable.GetArrayColoumnName().count != 0
//    {
//        var ArrayColoumnName : Array<String> = MultiDeleteVariable.GetArrayColoumnName()
//        var ArrayCondition : Array<String> = MultiDeleteVariable.GetArrayCondition()
//        var ArrayColoumnValue : Array<String> = MultiDeleteVariable.GetArrayColoumnValue()
//        
//        for i : Int in 0 ..< ArrayColoumnName.count
//        {
//            WhereStatement.append(NSPredicate(format: ArrayColoumnName[i] + Character_Dash + ArrayCondition[i], ArrayColoumnValue[i]))
//            
//        }
//    }
//    else
//    {
//        
//    }
//    
//    Table.predicate = NSCompoundPredicate.init(andPredicateWithSubpredicates: WhereStatement)
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
//            for i : Int in 0 ..< TableVariable.count
//            {
//                TableVariable[i].managedObjectContext?.deleteObject(TableVariable[i])
//            }
//        }
//        else
//        {
//            
//        }
//        
//        try TableContext.save()
//    }
//    catch let error as NSError
//    {
//        print("Could not fetch \(error), \(error.userInfo)")
//    }
//    
//    return TableVariable
//}