//
//  Find Prospect Controller.swift
//  IFAMobile
//
//  Created by Ibrahim Aziz Tejokusumo on 6/9/16.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit
import CoreData


// CLASS

class FindProspectController: UIViewController// , UITableViewDelegate, UITableViewDataSource
{
    // INITIALIZATION
    
        // OUTLET
    
        @IBOutlet var labelHeaderTitle : UILabel!
        @IBOutlet var labelHeaderDescription : UILabel!
    
        @IBOutlet weak var tableProspect : UITableView!
    
        // VARIABLE
    
        var arrayNamePrefix : [String] = [String]()
        var rowProspect = [NSManagedObject]()
    
    
    // VIEW DID LOAD
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // LANGUAGE
        
        labelHeaderTitle.text = NSLocalizedString("HEADER_PROSPECT_TITLE", comment: "")
        labelHeaderDescription.text = NSLocalizedString("HEADER_PROSPECT_DESCRIPTION", comment: "")
        
        
        // LAYOUT SETTING
        
        
        
        
        // NAVIGATION
        
        var buttonNavigationProspect : UIButton? = UIButton()
        buttonNavigationProspect = self.view.viewWithTag(TAG_BUTTON_NAVIGATIONPROSPECT) as? UIButton
        buttonNavigationProspect!.addTarget(self, action: #selector(self.goToFindProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonAgentProfile : UIButton? = UIButton()
        buttonAgentProfile = self.view.viewWithTag(TAG_BUTTON_AGENTPROFILE) as? UIButton
        buttonAgentProfile!.addTarget(self, action: #selector(self.goToAgentProfile(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonAddProspect : UIButton? = UIButton()
        buttonAddProspect = self.view.viewWithTag(TAG_BUTTON_ADDPROSPECT) as? UIButton
        buttonAddProspect!.addTarget(self, action: #selector(self.goToAddProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonFindProspect : UIButton? = UIButton()
        buttonFindProspect = self.view.viewWithTag(TAG_BUTTON_FINDPROSPECT) as? UIButton
        buttonFindProspect!.addTarget(self, action: #selector(self.goToFindProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
    }
    
    
    // DID RECEIVE MEMORY WARNING
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // TABLE PROTOCOL
    
    /* func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return rowProspect.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let tableItemProspect : TableItemProspect = tableProspect.dequeueReusableCellWithIdentifier("TableItemProspect") as! TableItemProspect
        
        if indexPath.row % 2 == 0
        {
            tableItemProspect.backgroundColor = GeneratorUIColor(THEME_QUATERNARY_COLOR, Opacity: 1.0)
        }
        else
        {
            tableItemProspect.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity: 1.0)
        }
        
        tableItemProspect.labelName.text = String(rowProspect[indexPath.row].valueForKey(Coloumn_DestinationAccount_AccountHolder)!)
        TableItem.LabelCatagory.text = FinderBankName(String(DestinationAccountRow[indexPath.row].valueForKey(Coloumn_DestinationAccount_BankCode)!))
        TableItem.LabelSeparator.text = Character_DropDown_Separator
        TableItem.LabelValue.text = String(DestinationAccountRow[indexPath.row].valueForKey(Coloumn_DestinationAccount_AccountNumber)!)
        
        return TableItem
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        let AlertVariable : AlertSetting = AlertSetting.init()
        AlertVariable.SetAlertTitle(CapitalizedFrontLetter(NSLocalizedString("LABEL_DESTINATIONACCOUNT", comment: "")))
        
        AlertVariable.SetAlertMessage(
            CapitalizedFrontLetter(NSLocalizedString("LABEL_ACCOUNTHOLDER", comment: "")) + Character_Dash + Character_TwoDot + Character_Dash
                + String(DestinationAccountRow[indexPath.row].valueForKey(Coloumn_DestinationAccount_AccountHolder)!) + Character_NewLine +
                CapitalizedFrontLetter(NSLocalizedString("LABEL_BANKCODE", comment: "")) + Character_Dash + Character_TwoDot + Character_Dash
                + FinderBankName(String(DestinationAccountRow[indexPath.row].valueForKey(Coloumn_DestinationAccount_BankCode)!)) + Character_NewLine +
                CapitalizedFrontLetter(NSLocalizedString("LABEL_ACCOUNTNUMBER", comment: "")) + Character_Dash + Character_TwoDot + Character_Dash
                + String(DestinationAccountRow[indexPath.row].valueForKey(Coloumn_DestinationAccount_AccountNumber)!) + Character_NewLine)
        AlertVariable.SetPageClass(Entity_DestinationAccount)
        AlertVariable.SetPageIdentifier(Page_DestinationAccount_Detail)
        AlertVariable.SetID(Int(DestinationAccountRow[indexPath.row].valueForKey(Coloumn_DestinationAccount_ID)! as! NSNumber))
        AlertVariable.SetValue(String(DestinationAccountRow[indexPath.row].valueForKey(Coloumn_DestinationAccount_AccountNumber)!))
        AlertVariable.SetCatagory(String(DestinationAccountRow[indexPath.row].valueForKey(Coloumn_DestinationAccount_BankCode)!))
        AlertVariable.SetHolder(String(DestinationAccountRow[indexPath.row].valueForKey(Coloumn_DestinationAccount_AccountHolder)!))
        AlertVariable.SetDeleteEntity(Entity_DestinationAccount)
        AlertVariable.SetDeleteValue(AlertVariable.GetID())
        AlertVariable.SetDeleteColoumn(Coloumn_DestinationAccount_ID)
        SettingDetail.SharedInstance.SetSegueIdentifier("DestinationAccountListToDestinationAccountDetail")
        
        self.presentViewController(AlertTable(AlertVariable, Sender: self), animated: true, completion: nil)
    }
    
    override func callbackReloadData()
    {
        DestinationAccountRow = SelectDatabase(Entity_DestinationAccount)
        self.TableDestinationAccount.reloadData()
        print("CALLBACK")
        RefreshTableView(TableDestinationAccount,RowObject: DestinationAccountRow)
    } */
    
    
    // NAVIGATION
    
    func goToAddProspect(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageAddProspect") as! ProspectAddBasicController
        self.presentViewController(page, animated: true, completion: nil)
    }
    
    func goToAgentProfile(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageAgentProfile") as! HomeController
        self.presentViewController(page, animated: true, completion: nil)
    }
    
    func goToFindProspect(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageFindProspect") as! FindProspectController
        self.presentViewController(page, animated: true, completion: nil)
    }
}