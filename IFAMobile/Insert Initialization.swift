//
//  Insert Initialization.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 1/18/16.
//  Copyright © 2016 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

import Foundation
import CoreData


// INITIALIZATION

/* func InitializationUser() -> Void
{
    let UserRow = SelectDatabase(Entity_User)
    let UserVariable : EntityUser = EntityUser.init()
    
    if UserRow.count == 0
    {
        UserVariable.SetConnectionType(Connection_Type_GPRS)
        UserVariable.SetID(1)
        UserVariable.SetPassword(User_Password_Default)
        UserVariable.SetPasswordChanged(false)
        InsertUser(UserVariable)
    }
    else
    {
    
    }
} */

func initializationQuestionnaire() -> Void
{
    var tableRow : [NSManagedObject] = [NSManagedObject]()
    tableRow = SelectDatabase(ENTITY_QUESTIONNAIRE)
    let entityQuestionnaire : EntityQuestionnaire = EntityQuestionnaire.init()
    let arrayQuestionnaire : Array<Int> =
    [
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    ]
    
    if tableRow.count == 0
    {
        for i : Int in 0..<arrayQuestionnaire.count
        {
            entityQuestionnaire.SetIntID(i)
            InsertQuestionnaire(entityQuestionnaire)
        }
    }
    else
    {
        
    }
}

func initializationQuestion() -> Void
{
    var tableRow : [NSManagedObject] = [NSManagedObject]()
    tableRow = SelectDatabase(ENTITY_QUESTION)
    let entityQuestion : EntityQuestion = EntityQuestion.init()
    
    let arrayQuestion : Array<String> =
    [
        "1" + CHARACTER_DATABASE_SEPARATOR + "How do you describe your attitude towards money ?",
        "2" + CHARACTER_DATABASE_SEPARATOR + "If your retirement fund has a ten year time horizon,   what average annual return would you like be expected ?",
        "3" + CHARACTER_DATABASE_SEPARATOR + "How would you describe your attitude towards your retirement fund ?",
        "4" + CHARACTER_DATABASE_SEPARATOR + "What is the maximum loss of value you can tolerate in any one year duration on your investments ?",
        "5" + CHARACTER_DATABASE_SEPARATOR + "How would you best describe your investment savings goal in relation to inflation ?",
        "6" + CHARACTER_DATABASE_SEPARATOR + "How long can your current savings last in case of  an emergency ?",
        "7" + CHARACTER_DATABASE_SEPARATOR + "What would you do if a stock that you have bought 3 months ago declines by 25% in value ?",
        "8" + CHARACTER_DATABASE_SEPARATOR + "What would you do if a stock that you have bought 3 months ago rises by 25% in value ?",
        "9" + CHARACTER_DATABASE_SEPARATOR + "What would you do when you hear unexpected, adverse or bad financial or economic news ?",
        "10" + CHARACTER_DATABASE_SEPARATOR + "What is your projected investment time horizon ?"
    ]
    
    if tableRow.count == 0
    {
        for i : Int in 0..<arrayQuestion.count
        {
            var arrayQuestionContent = arrayQuestion[i].componentsSeparatedByString(CHARACTER_DATABASE_SEPARATOR)
            
            entityQuestion.SetIntID(i)
            entityQuestion.SetStringQuestionnaireID(arrayQuestionContent[0])
            entityQuestion.SetQuestion(arrayQuestionContent[1])
            InsertQuestion(entityQuestion)
        }
    }
    else
    {
        
    }
}

func initializationOption() -> Void
{
    var tableRow : [NSManagedObject] = [NSManagedObject]()
    tableRow = SelectDatabase(ENTITY_OPTION)
    let entityOption : EntityOption = EntityOption.init()
    
    let arrayOption : Array<String> =
    [
        "1" + CHARACTER_DATABASE_SEPARATOR + "Cash and carry only.",
        "1" + CHARACTER_DATABASE_SEPARATOR + "Dollar saved is a dollar earned.",
        "1" + CHARACTER_DATABASE_SEPARATOR + "You have to spend money in order to make money.",
        "2" + CHARACTER_DATABASE_SEPARATOR + "6 % or less.",
        "2" + CHARACTER_DATABASE_SEPARATOR + "6 to 10 %.",
        "2" + CHARACTER_DATABASE_SEPARATOR + "10% & above.",
        "3" + CHARACTER_DATABASE_SEPARATOR + "I'm nervous if my retirement fund go down and up in value.",
        "3" + CHARACTER_DATABASE_SEPARATOR + "I can allocate as high as 40% of my retirement fund to high risk investments.",
        "3" + CHARACTER_DATABASE_SEPARATOR + "I can allocate as high as 60% of my retirement fund to high risk investments.",
        "4" + CHARACTER_DATABASE_SEPARATOR + "0 %.",
        "4" + CHARACTER_DATABASE_SEPARATOR + "10 %.",
        "4" + CHARACTER_DATABASE_SEPARATOR + "25 %.",
        "5" + CHARACTER_DATABASE_SEPARATOR + "My savings should be safe, although my investments returns is not inflation protected.",
        "5" + CHARACTER_DATABASE_SEPARATOR + "My investments should grow at the same rate as inflation.",
        "5" + CHARACTER_DATABASE_SEPARATOR + "My investments should grow faster than inflation.",
        "6" + CHARACTER_DATABASE_SEPARATOR + "Less than 3 months.",
        "6" + CHARACTER_DATABASE_SEPARATOR + "3 to 6 months.",
        "6" + CHARACTER_DATABASE_SEPARATOR + "More than 6 months.",
        "7" + CHARACTER_DATABASE_SEPARATOR + "Sell all your shares.",
        "7" + CHARACTER_DATABASE_SEPARATOR + "Sell some shares.",
        "7" + CHARACTER_DATABASE_SEPARATOR + "Buy more shares or do nothing.",
        "8" + CHARACTER_DATABASE_SEPARATOR + "Buy more shares or do nothing.",
        "8" + CHARACTER_DATABASE_SEPARATOR + "Sell some of my shares.",
        "8" + CHARACTER_DATABASE_SEPARATOR + "Sell all of my shares.",
        "9" + CHARACTER_DATABASE_SEPARATOR + "I'll always react.",
        "9" + CHARACTER_DATABASE_SEPARATOR + "I'll rarely react.",
        "9" + CHARACTER_DATABASE_SEPARATOR + "I'll never react.",
        "10" + CHARACTER_DATABASE_SEPARATOR + "I will hold my investments for the next two years.",
        "10" + CHARACTER_DATABASE_SEPARATOR + "I will hold my investment for the next 5 years.",
        "10" + CHARACTER_DATABASE_SEPARATOR + "I will leave my investment for ten years or more.",
    ]
    
    if tableRow.count == 0
    {
        for i : Int in 0..<arrayOption.count
        {
            var arrayOptionContent = arrayOption[i].componentsSeparatedByString(CHARACTER_DATABASE_SEPARATOR)
            
            entityOption.SetIntID(i)
            entityOption.SetStringQuestionnaireID(arrayOptionContent[0])
            entityOption.SetOption(arrayOptionContent[1])
            InsertOption(entityOption)
        }
    }
    else
    {
        
    }
}

func initializationProspect() -> Void
{
    var tableRow : [NSManagedObject] = [NSManagedObject]()
    tableRow = SelectDatabase(ENTITY_PROSPECT)
    let entityProspect : EntityProspect = EntityProspect.init()
    
    let arrayProspect : Array<String> =
        [
            "1" + CHARACTER_DATABASE_SEPARATOR + "Cash and carry only.",
            "1" + CHARACTER_DATABASE_SEPARATOR + "Dollar saved is a dollar earned.",
            "1" + CHARACTER_DATABASE_SEPARATOR + "You have to spend money in order to make money.",
            "2" + CHARACTER_DATABASE_SEPARATOR + "6 % or less.",
            "2" + CHARACTER_DATABASE_SEPARATOR + "6 to 10 %.",
            "2" + CHARACTER_DATABASE_SEPARATOR + "10% & above.",
            "3" + CHARACTER_DATABASE_SEPARATOR + "I'm nervous if my retirement fund go down and up in value.",
            "3" + CHARACTER_DATABASE_SEPARATOR + "I can allocate as high as 40% of my retirement fund to high risk investments.",
            "3" + CHARACTER_DATABASE_SEPARATOR + "I can allocate as high as 60% of my retirement fund to high risk investments.",
            "4" + CHARACTER_DATABASE_SEPARATOR + "0 %.",
            "4" + CHARACTER_DATABASE_SEPARATOR + "10 %.",
            "4" + CHARACTER_DATABASE_SEPARATOR + "25 %.",
            "5" + CHARACTER_DATABASE_SEPARATOR + "My savings should be safe, although my investments returns is not inflation protected.",
            "5" + CHARACTER_DATABASE_SEPARATOR + "My investments should grow at the same rate as inflation.",
            "5" + CHARACTER_DATABASE_SEPARATOR + "My investments should grow faster than inflation.",
            "6" + CHARACTER_DATABASE_SEPARATOR + "Less than 3 months.",
            "6" + CHARACTER_DATABASE_SEPARATOR + "3 to 6 months.",
            "6" + CHARACTER_DATABASE_SEPARATOR + "More than 6 months.",
            "7" + CHARACTER_DATABASE_SEPARATOR + "Sell all your shares.",
            "7" + CHARACTER_DATABASE_SEPARATOR + "Sell some shares.",
            "7" + CHARACTER_DATABASE_SEPARATOR + "Buy more shares or do nothing.",
            "8" + CHARACTER_DATABASE_SEPARATOR + "Buy more shares or do nothing.",
            "8" + CHARACTER_DATABASE_SEPARATOR + "Sell some of my shares.",
            "8" + CHARACTER_DATABASE_SEPARATOR + "Sell all of my shares.",
            "9" + CHARACTER_DATABASE_SEPARATOR + "I'll always react.",
            "9" + CHARACTER_DATABASE_SEPARATOR + "I'll rarely react.",
            "9" + CHARACTER_DATABASE_SEPARATOR + "I'll never react.",
            "10" + CHARACTER_DATABASE_SEPARATOR + "I will hold my investments for the next two years.",
            "10" + CHARACTER_DATABASE_SEPARATOR + "I will hold my investment for the next 5 years.",
            "10" + CHARACTER_DATABASE_SEPARATOR + "I will leave my investment for ten years or more.",
            ]
    
    if tableRow.count == 0
    {
        for i : Int in 0..<arrayProspect.count
        {
            var arrayProspectContent = arrayProspect[i].componentsSeparatedByString(CHARACTER_DATABASE_SEPARATOR)
            
            entityProspect.SetID(i)
            /* entityProspect.SetName(arrayProspectContent[0])
            entityProspect.SetTitle(arrayProspectContent[1])
            entityProspect.SetBirthday(arrayProspectContent[2])
            entityProspect.SetGender(arrayProspectContent[3])
            entityProspect.SetAddress(arrayProspectContent[4])
            entityProspect.SetTelephoneNumber(arrayProspectContent[5])
            entityProspect.SetEmail(arrayProspectContent[6])
            entityProspect.SetAddress(arrayProspectContent[7])
            entityProspect.SetCreatedOn(arrayProspectContent[8])
            entityProspect.SetCreatedBy(arrayProspectContent[9])
            entityProspect.SetUpdatedOn(arrayProspectContent[10])
            entityProspect.SetUpdatedBy(arrayProspectContent[11])
            entityProspect.SetState(arrayProspectContent[12]) */
            InsertProspect(entityProspect)
        }
    }
    else
    {
        
    }
}