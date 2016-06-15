//
//  Strings.swift
//  MMBS Arowana
//
//  Created by Ibrahim Aziz Tejokusumo on 10/13/15.
//  Copyright © 2015 Ibrahim Aziz Tejokusumo. All rights reserved.
//


// IMPORT

import Foundation


// CHARACTER

public let CHARACTER_DASH : String = " "
public let CHARACTER_KRES : String = "#"
public let CHARACTER_STAR : String = "*"
public let CHARACTER_TWODOT : String = ":"
public let CHARACTER_NEWLINE : String = "\n"
public let CHARACTER_DATABASE_SEPARATOR = " \\ "


// SOURCE

public let PHOTO_PROFILE_SMALL : String = "Photo Profile Small"
public let PHOTO_PROFILE_LARGE : String = "Photo Profile Large"
public let TAG_BUTTON_AGENTPROFILE : Int = 5
public let TAG_BUTTON_NAVIGATIONPROSPECT : Int = 1
public let TAG_BUTTON_ADDPROSPECT : Int = 3
public let TAG_BUTTON_FINDPROSPECT : Int = 4
public let EVENT_BUTTON_NAVIGATION : UIControlEvents = UIControlEvents.TouchDown
public let TAG_GUIDE_STEP1 : Int = 10 + 0
public let TAG_GUIDE_STEP2 : Int = 10 + 1
public let TAG_GUIDE_STEP3 : Int = 10 + 2
public let TAG_GUIDE_STEP4 : Int = 10 + 3
public let TAG_GUIDE_STEP5 : Int = 10 + 4
public let FORMAT_DATE_BIRTHDAY : String = "dd/M/yyyy"
public let FORMAT_STRING_TRUNCATED : Int = 30


// DATABASE

    // SYNTAX

    public let COREDATA_CONDITION_EQUAL : String = "== %@"

    // TABLE

    public let ENTITY_AGENT : String = "User"
    public let COLUMN_AGENT_ID : String = "id"
    public let COLUMN_AGENT_NAME : String = "name"
    public let COLUMN_AGENT_PASSWORD : String = "password"
    public let COLUMN_AGENT_ADDRESS : String = "address"
    public let COLUMN_AGENT_TELEPHONENUMBER : String = "telephonenumber"
    public let COLUMN_AGENT_EMAIL : String = "email"

    public let ENTITY_QUESTIONNAIRE : String = "Questionnaire"
    public let COLUMN_QUESTIONNAIRE_ID : String = "id"
    public let COLUMN_QUESTIONNAIRE_STATE : String = "state"

    public let ENTITY_QUESTION : String = "Question"
    public let COLUMN_QUESTION_ID : String = "id"
    public let COLUMN_QUESTION_QUESTIONNAIREID : String = "questionnaireid"
    public let COLUMN_QUESTION_QUESTION : String = "question"
    public let COLUMN_QUESTION_STATE : String = "state"

    public let ENTITY_OPTION : String = "Option"
    public let COLUMN_OPTION_ID : String = "id"
    public let COLUMN_OPTION_QUESTIONNAIREID : String = "questionnaireid"
    public let COLUMN_OPTION_OPTION : String = "option"
    public let COLUMN_OPTION_STATE : String = "state"

public let ENTITY_PROSPECT : String = "Prospect"
public let COLUMN_PROSPECT_ID : String = "id"
public let COLUMN_PROSPECT_NAME : String = "name"
public let COLUMN_PROSPECT_TITLE : String = "title"
public let COLUMN_PROSPECT_BIRTHDAY : String = "birthday"
public let COLUMN_PROSPECT_GENDER : String = "gender"
public let COLUMN_PROSPECT_STATE : String = "state"
public let COLUMN_PROSPECT_ADDRESS : String = "address"
public let COLUMN_PROSPECT_TELEPHONENUMBER : String = "telephonenumber"
public let COLUMN_PROSPECT_EMAIL : String = "email"
public let COLUMN_PROSPECT_CREATEDON : String = "createdon"
public let COLUMN_PROSPECT_CREATEDBY : String = "createdby"
public let COLUMN_PROSPECT_UPDATEDON : String = "updatedon"
public let COLUMN_PROSPECT_UPDATEDBY : String = "updatedby"