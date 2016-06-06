//
//  Database Action.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 12/13/15.
//  Copyright © 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//

import Foundation

class EntityUpdate
{
    var Condition : String
    var ColoumnName : String
    var StringColoumnValue : String
    var StringUpdateValue : String
    var IntColoumnValue : Int
    var IntUpdateValue : Int
    
    init()
    {
        Condition = COREDATA_CONDITION_EQUAL
        ColoumnName = ""
        StringColoumnValue = ""
        StringUpdateValue = ""
        IntColoumnValue = 0
        IntUpdateValue = 0
    }
    
    func SetCondition(Condition : String)
    {
        self.Condition = Condition
    }
    
    func GetCondition() -> String
    {
        return self.Condition
    }
    
    func SetColoumnName(ColoumnName : String)
    {
        self.ColoumnName = ColoumnName
    }
    
    func GetColoumnName() -> String
    {
        return self.ColoumnName
    }
    
    func SetStringColoumnValue(StringColoumnValue : String)
    {
        self.StringColoumnValue = StringColoumnValue
    }
    
    func GetStringColoumnValue() -> String
    {
        return self.StringColoumnValue
    }
    
    func SetStringUpdateValue(StringUpdateValue : String)
    {
        self.StringUpdateValue = StringUpdateValue
    }
    
    func GetStringUpdateValue() -> String
    {
        return self.StringUpdateValue
    }
    
    func SetIntColoumnValue(IntColoumnValue : Int)
    {
        self.IntColoumnValue = IntColoumnValue
    }
    
    func GetIntColoumnValue() -> Int
    {
        return self.IntColoumnValue
    }
    
    func SetIntUpdateValue(IntUpdateValue : Int)
    {
        self.IntUpdateValue = IntUpdateValue
    }
    
    func GetIntUpdateValue() -> Int
    {
        return self.IntUpdateValue
    }
}

class EntityDelete
{
    var EntityName : String
    var Condition : String
    var ColoumnName : String
    var StringColoumnValue : String
    var IntColoumnValue : Int
    
    init()
    {
        EntityName = ""
        Condition = COREDATA_CONDITION_EQUAL
        ColoumnName = ""
        StringColoumnValue = ""
        IntColoumnValue = 0
    }
    
    func SetCondition(Condition : String)
    {
        self.Condition = Condition
    }
    
    func GetCondition() -> String
    {
        return self.Condition
    }
    
    func SetColoumnName(ColoumnName : String)
    {
        self.ColoumnName = ColoumnName
    }
    
    func GetColoumnName() -> String
    {
        return self.ColoumnName
    }
    
    func SetStringColoumnValue(StringColoumnValue : String)
    {
        self.StringColoumnValue = StringColoumnValue
    }
    
    func GetStringColoumnValue() -> String
    {
        return self.StringColoumnValue
    }
        
    func SetIntColoumnValue(IntColoumnValue : Int)
    {
        self.IntColoumnValue = IntColoumnValue
    }
    
    func GetIntColoumnValue() -> Int
    {
        return self.IntColoumnValue
    }
    
    func SetEntityName(EntityName : String)
    {
        self.EntityName = EntityName
    }
    
    func GetEntityName() -> String
    {
        return self.EntityName
    }
}

class EntitySingleSelect
{
    var EntityName : String
    var Condition : String
    var ColoumnName : String
    var StringColoumnValue : String
    var IntColoumnValue : Int
    var SortColoumnName : String
    var BoolSortAscending : Bool
    var ShowColoumnName1 : String
    var ShowColoumnName2 : String
    var ShowColoumnName3 : String
    var ShowColoumnName4 : String
    
    init()
    {
        EntityName = ""
        Condition = COREDATA_CONDITION_EQUAL
        ColoumnName = ""
        StringColoumnValue = ""
        IntColoumnValue = 0
        SortColoumnName = "id"
        BoolSortAscending = true
        ShowColoumnName1 = ""
        ShowColoumnName2 = ""
        ShowColoumnName3 = ""
        ShowColoumnName4 = ""
    }
    
    func SetEntityName(EntityName : String)
    {
        self.EntityName = EntityName
    }
    
    func GetEntityName() -> String
    {
        return self.EntityName
    }
    
    func SetCondition(Condition : String)
    {
        self.Condition = Condition
    }
    
    func GetCondition() -> String
    {
        return self.Condition
    }
    
    func SetColoumnName(ColoumnName : String)
    {
        self.ColoumnName = ColoumnName
    }
    
    func GetColoumnName() -> String
    {
        return self.ColoumnName
    }
    
    func SetStringColoumnValue(StringColoumnValue : String)
    {
        self.StringColoumnValue = StringColoumnValue
    }
    
    func GetStringColoumnValue() -> String
    {
        return self.StringColoumnValue
    }
    
    func SetIntColoumnValue(IntColoumnValue : Int)
    {
        self.IntColoumnValue = IntColoumnValue
    }
    
    func GetIntColoumnValue() -> Int
    {
        return self.IntColoumnValue
    }
    
    func SetSortColoumnName(SortColoumnName : String)
    {
        self.SortColoumnName = SortColoumnName
    }
    
    func GetSortColoumnName() -> String
    {
        return self.SortColoumnName
    }
    
    func SetBoolSortAscending(BoolSortAscending : Bool)
    {
        self.BoolSortAscending = BoolSortAscending
    }
    
    func GetBoolSortAscending() -> Bool
    {
        return self.BoolSortAscending
    }
    
    func SetShowColoumnName1(ShowColoumnName1 : String)
    {
        self.ShowColoumnName1 = ShowColoumnName1
    }
    
    func GetShowColoumnName1() -> String
    {
        return self.ShowColoumnName1
    }
    
    func SetShowColoumnName2(ShowColoumnName2 : String)
    {
        self.ShowColoumnName2 = ShowColoumnName2
    }
    
    func GetShowColoumnName2() -> String
    {
        return self.ShowColoumnName2
    }
    
    func SetShowColoumnName3(ShowColoumnName3 : String)
    {
        self.ShowColoumnName3 = ShowColoumnName3
    }
    
    func GetShowColoumnName3() -> String
    {
        return self.ShowColoumnName3
    }
    
    func SetShowColoumnName4(ShowColoumnName4 : String)
    {
        self.ShowColoumnName4 = ShowColoumnName4
    }
    
    func GetShowColoumnName4() -> String
    {
        return self.ShowColoumnName4
    }
}

class EntityMultiSelect
{
    var EntityName : String
    var ArrayColoumnName : Array<String>
    var ArrayCondition : Array<String>
    var ArrayColoumnValue : Array<String>
    var BoolSortAscending : Bool
    
    init()
    {
        EntityName = ""
        ArrayColoumnName = []
        ArrayCondition = []
        ArrayColoumnValue = []
        BoolSortAscending = true
    }
    
    func SetEntityName(EntityName : String)
    {
        self.EntityName = EntityName
    }
    
    func GetEntityName() -> String
    {
        return self.EntityName
    }
    
    func SetArrayColoumnName(ArrayColoumnName : Array<String>)
    {
        self.ArrayColoumnName = ArrayColoumnName
    }
    
    func GetArrayColoumnName() -> Array<String>
    {
        return self.ArrayColoumnName
    }
    
    func SetArrayCondition(ArrayCondition : Array<String>)
    {
        self.ArrayCondition = ArrayCondition
    }
    
    func GetArrayCondition() -> Array<String>
    {
        return self.ArrayCondition
    }
    
    func SetArrayColoumnValue(ArrayColoumnValue : Array<String>)
    {
        self.ArrayColoumnValue = ArrayColoumnValue
    }
    
    func GetArrayColoumnValue() -> Array<String>
    {
        return self.ArrayColoumnValue
    }
    
    func SetBoolSortAscending(BoolSortAscending : Bool)
    {
        self.BoolSortAscending = BoolSortAscending
    }
    
    func GetBoolSortAscending() -> Bool
    {
        return self.BoolSortAscending
    }
}