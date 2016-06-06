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