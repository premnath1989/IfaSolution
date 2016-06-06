//
//  Select.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 10/20/15.
//  Copyright © 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

import Foundation
import UIKit
import CoreData


// CLASS

func SelectContext() -> NSManagedObjectContext
{
    //1
    let ApplicationDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    return ApplicationDelegate.managedObjectContext
}

func SelectDatabase(TableName : String) -> [NSManagedObject]
{
    var TableVariable : [NSManagedObject] = []
    let TableContext = SelectContext()
    
    let Table = NSFetchRequest(entityName: TableName)
    
    do
    {
        Table.returnsObjectsAsFaults = false
        let QueryResults = try TableContext.executeFetchRequest(Table)
        TableVariable = QueryResults as! [NSManagedObject]
        
        NSLog("SelectDatabase(\(TableName)) - Fetching.", TableVariable)
    }
    catch let error as NSError
    {
        NSLog("SelectDatabase(\(TableName)) - Could not fetch \(error), \(error.userInfo).", error)
    }
    
    return TableVariable
}

func SelectSingleWhere(SelectVariable : EntitySingleSelect) -> [NSManagedObject]
{
    let TableContext = SelectContext()
    
    //2
    let Table = NSFetchRequest(entityName: SelectVariable.GetEntityName())
    var ColoumnValue : String = ""
    
    if SelectVariable.GetStringColoumnValue().characters.count == 0
    {
        ColoumnValue = String(SelectVariable.GetIntColoumnValue())
    }
    else
    {
        ColoumnValue = SelectVariable.GetStringColoumnValue()
    }
    
    let WhereStatement = NSPredicate(format: SelectVariable.GetColoumnName() + CHARACTER_DASH + SelectVariable.GetCondition(), ColoumnValue)
    Table.predicate = WhereStatement
    var TableVariable = [NSManagedObject]()
    
    //3
    do
    {
        let QueryResults = try TableContext.executeFetchRequest(Table)
        TableVariable = QueryResults as! [NSManagedObject]
        
        NSLog("SelectSingleWhere(\(SelectVariable.GetEntityName())) - Fetching.", TableVariable)
    }
    catch let error as NSError
    {
        NSLog("SelectSingleWhere(\(SelectVariable.GetEntityName())) - Could not fetch \(error), \(error.userInfo).", error)
    }
    
    return TableVariable
}

func SelectMultiWhere(MultiSelectVariable : EntityMultiSelect) -> [NSManagedObject]
{
    let TableContext = SelectContext()
    
    //2
    let Table = NSFetchRequest(entityName: MultiSelectVariable.GetEntityName())
    var WhereStatement : Array<NSPredicate> = []
    
    if MultiSelectVariable.GetArrayColoumnName().count != 0
    {
        var ArrayColoumnName : Array<String> = MultiSelectVariable.GetArrayColoumnName()
        var ArrayCondition : Array<String> = MultiSelectVariable.GetArrayCondition()
        var ArrayColoumnValue : Array<String> = MultiSelectVariable.GetArrayColoumnValue()
        
        for i : Int in 0 ..< ArrayColoumnName.count
        {
            WhereStatement.append(NSPredicate(format: ArrayColoumnName[i] + CHARACTER_DASH + ArrayCondition[i], ArrayColoumnValue[i]))
        }
    }
    else
    {
        
    }
    
    Table.predicate = NSCompoundPredicate.init(andPredicateWithSubpredicates: WhereStatement)
    var TableVariable = [NSManagedObject]()
    
    //3
    do
    {
        let QueryResults = try TableContext.executeFetchRequest(Table)
        TableVariable = QueryResults as! [NSManagedObject]
        
        NSLog("SelectMultiWhere(\(MultiSelectVariable.GetEntityName())) - Fetching.", TableVariable)
    }
    catch let error as NSError
    {
        NSLog("SelectMultiWhere(\(MultiSelectVariable.GetEntityName())) - Could not fetch \(error), \(error.userInfo).", error)
    }
    
    return TableVariable
}