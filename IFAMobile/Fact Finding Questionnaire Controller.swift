//
//  Fact Finding Questionnaire.swift
//  IFAMobile
//
//  Created by Ibrahim Aziz Tejokusumo on 6/3/16.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit
import CoreData


// CLASS

class FactFindingQuestionnaireController : UIViewController
{
    // INITIALIZATION
    
    @IBOutlet var labelHeaderTitle : UILabel!
    @IBOutlet var labelHeaderDescription : UILabel!
    
    @IBOutlet var labelFactFindingQuestionnaireTitle : UILabel!
    @IBOutlet var labelDontKnowRiskProfileTitle : UILabel!
    @IBOutlet var labelConfirmationTitle : UILabel!
    @IBOutlet var labelDeclarationTitle : UILabel!
    
    @IBOutlet var stackViewQestionnaire : UIStackView!
    
    @IBOutlet var labelPlanningMeetChildrensEducationGoal : UILabel!
    @IBOutlet var labelMaximizeTaxAdvantages : UILabel!
    @IBOutlet var labelSolutionProtection : UILabel!
    @IBOutlet var labelProtectionReturn : UILabel!
    @IBOutlet var labelRiskProfile : UILabel!
    /* @IBOutlet var labelRiskProfileConservative : UILabel!
    @IBOutlet var labelRiskProfileModerate : UILabel!
    @IBOutlet var labelRiskProfileAggressive : UILabel! */
    @IBOutlet var labelAllocationPerMonth : UILabel!
    @IBOutlet var labelClientName : UILabel!
    @IBOutlet var labelClientNumber : UILabel!
    @IBOutlet var labelClientSignature : UILabel!
    @IBOutlet var labelClientStatement : UILabel!
    @IBOutlet var labelAssociateName : UILabel!
    @IBOutlet var labelAssociateSignature : UILabel!
    @IBOutlet var labelDeclarationDate : UILabel!
    
    @IBOutlet var switchPlanningMeetChildrensEducationGoal : UISwitch!
    @IBOutlet var switchMaximizeTaxAdvantages : UISwitch!
    @IBOutlet var switchSolutionProtection : UISwitch!
    @IBOutlet var switchProtectionReturn : UISwitch!
    @IBOutlet var textFieldAllocationPerMonth : UITextField!
    @IBOutlet var textFieldClientName : UITextField!
    @IBOutlet var textFieldClientNumber : UITextField!
    @IBOutlet var imageViewClientSignature : UIImageView!
    @IBOutlet var textFieldAssociateName : UITextField!
    @IBOutlet var imageViewAssociateSingature : UIImageView!
    @IBOutlet var textFieldDeclarationDate : UITextField!
    
    @IBOutlet var textViewDisclaimerClauseNote : UITextView!
    
    @IBOutlet var buttonSubmit : UIButton!
    @IBOutlet var buttonReset : UIButton!
    /* @IBOutlet var buttonClientSignature : UIButton!
    @IBOutlet var buttonAssociateSignature : UIButton! */
    
    
    // VIEW DID LOAD
    
    override func viewDidLoad()
    {
        // LANGUAGE
        
        labelHeaderTitle.text = NSLocalizedString("HEADER_PROSPECT_TITLE", comment: "")
        labelHeaderDescription.text = NSLocalizedString("HEADER_PROSPECT_DESCRIPTION", comment: "")
        
        labelFactFindingQuestionnaireTitle.text = NSLocalizedString("TITLE_FINANCIALPLAN_FACTFINDINGQUESTIONNAIRE", comment: "")
        labelDontKnowRiskProfileTitle.text = NSLocalizedString("TITLE_FINANCIALPLAN_DONTKNOWRISKPROFILE", comment: "")
        labelConfirmationTitle.text = NSLocalizedString("TITLE_FINANCIALPLAN_CONFIRMATION", comment: "")
        labelDeclarationTitle.text = NSLocalizedString("TITLE_FINANCIALPLAN_DECLARATION", comment: "")
        
        labelPlanningMeetChildrensEducationGoal.text = NSLocalizedString("FIELD_PLANNINGMEETCHILDRENSEDUCATIONGOAL", comment: "")
        labelMaximizeTaxAdvantages.text = NSLocalizedString("FIELD_MAXIMIZETAXADVANTAGES", comment: "")
        labelSolutionProtection.text = NSLocalizedString("FIELD_SOLUTIONPROTECTION", comment: "")
        labelProtectionReturn.text = NSLocalizedString("FIELD_PROTECTIONRETURN", comment: "")
        labelRiskProfile.text = NSLocalizedString("FIELD_RISKPROFILE", comment: "")
        
        labelAllocationPerMonth.text = NSLocalizedString("FIELD_ALLOCATIONPERMONTH", comment: "")
        labelDeclarationDate.text = NSLocalizedString("FIELD_DECLARATIONDATE", comment: "")
        labelClientName.text = NSLocalizedString("FIELD_CLIENTNAME", comment: "")
        labelClientNumber.text = NSLocalizedString("FIELD_CLIENTNUMBER", comment: "")
        labelClientStatement.text = NSLocalizedString("FIELD_CLIENTSTATEMENT", comment: "")
        labelClientSignature.text = NSLocalizedString("FIELD_CLIENTSIGNATURE", comment: "")
        labelAssociateName.text = NSLocalizedString("FIELD_ASSOCIATENAME", comment: "")
        labelAssociateSignature.text = NSLocalizedString("FIELD_ASSOCIATESIGNATURE", comment: "")
        
        textViewDisclaimerClauseNote.text = NSLocalizedString("INFORMATION_DISCLAIMERCLAUSE", comment: "")
        
        textFieldDeclarationDate.text = "Monday, 06 June 2016"
        
        buttonSubmit.setTitle(NSLocalizedString("BUTTON_SUBMIT", comment: ""), forState: .Normal)
        /* buttonClientSignature.setTitle(NSLocalizedString("BUTTON_SUBMIT", comment: ""), forState: .Normal)
        buttonAssociateSignature.setTitle(NSLocalizedString("BUTTON_SUBMIT", comment: ""), forState: .Normal) */
        
        
        // QUESTIONNAIRE
        
        var queryQuestionnaire = [NSManagedObject]()
        
        queryQuestionnaire = SelectDatabase(ENTITY_QUESTIONNAIRE)
        
        for i : Int in 0 ..< queryQuestionnaire.count
        {
            NSLog("Query " + ENTITY_QUESTIONNAIRE + ", questionnaire id = (\(String(queryQuestionnaire[i].valueForKey(COLUMN_QUESTIONNAIRE_ID) as! Int)))", queryQuestionnaire)
            
            // QUESTION
            
            var queryQuestion = [NSManagedObject]()
            
            let entityQuestionMultiSelect : EntityMultiSelect = EntityMultiSelect.init()
            entityQuestionMultiSelect.SetEntityName(ENTITY_QUESTION)
            entityQuestionMultiSelect.SetArrayCondition([COREDATA_CONDITION_EQUAL])
            entityQuestionMultiSelect.SetArrayColoumnName([COLUMN_QUESTION_QUESTIONNAIREID])
            entityQuestionMultiSelect.SetArrayColoumnValue([String(queryQuestionnaire[i].valueForKey(COLUMN_QUESTIONNAIRE_ID) as! Int)])
            
            queryQuestion = SelectMultiWhere(entityQuestionMultiSelect)
            
            if (queryQuestion.count > 0)
            {
                NSLog("Query " + ENTITY_QUESTION + ", question id = (\(String(queryQuestion[0].valueForKey(COLUMN_QUESTION_ID) as! Int))), question text = (\(String(queryQuestion[0].valueForKey(COLUMN_QUESTION_QUESTION) as! String)))", queryQuestion)
                
                let labelQuestion : UILabel = LabelQuestion()
                labelQuestion.text = String(i + 1) + ". " + String(queryQuestion[0].valueForKey(COLUMN_QUESTION_QUESTION) as! String)
                
                stackViewQestionnaire.addArrangedSubview(labelQuestion)
            }
            else
            {

            }
            
            // OPTION

            var queryOption = [NSManagedObject]()
            
            let entityOptionMultiSelect : EntityMultiSelect = EntityMultiSelect.init()
            entityOptionMultiSelect.SetEntityName(ENTITY_OPTION)
            entityOptionMultiSelect.SetArrayCondition([COREDATA_CONDITION_EQUAL])
            entityOptionMultiSelect.SetArrayColoumnName([COLUMN_OPTION_QUESTIONNAIREID])
            entityOptionMultiSelect.SetArrayColoumnValue([String(queryQuestionnaire[i].valueForKey(COLUMN_QUESTIONNAIRE_ID) as! Int)])
            
            queryOption = SelectMultiWhere(entityOptionMultiSelect)

            if (queryOption.count > 0)
            {
                for j : Int in 0 ..< queryOption.count
                {
                    NSLog("Query " + ENTITY_OPTION + ", option id = (\(String(queryOption[j].valueForKey(COLUMN_OPTION_ID) as! Int))), option text = (\(String(queryOption[j].valueForKey(COLUMN_OPTION_OPTION) as! String!)))", queryOption)
                    
                    let stackViewOption : UIStackView = UIStackView()
                    stackViewOption.distribution = .Fill
                    stackViewOption.alignment = .Leading
                    stackViewOption.axis = .Horizontal
                    stackViewOption.spacing = 10
                    let switchOption : UISwitch = UISwitch()
                    let labelOption : UILabel = LabelOption()
                    
                    labelOption.text = String(queryOption[j].valueForKey(COLUMN_OPTION_OPTION) as! String!)
                    stackViewOption.addArrangedSubview(switchOption)
                    stackViewOption.addArrangedSubview(labelOption)
                    
                    stackViewQestionnaire.addArrangedSubview(stackViewOption)
                }
            }
            else
            {

            }
        }
    }
    
    
    // DID RECEIVE MEMORY WARNING
    
    override func didReceiveMemoryWarning()
    {
        
    }
}