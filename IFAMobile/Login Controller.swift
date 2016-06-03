//
//  ViewController.swift
//  IFAMobile
//
//  Created by Ibrahim on 27/05/2016.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// CLASS

class LoginController: UIViewController
{
    // INITIALIZATION
    
    @IBOutlet var labelLoginTitle : UILabel!
    @IBOutlet var textFieldAgentCode : UITextField!
    @IBOutlet var textFieldAgentPassword : UITextField!
    @IBOutlet var buttonLogIn : UIButton!
    
    
    // VIEW DID LOAD
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // GeneratorFontName()
        
        
        // LANGUAGE
        
        labelLoginTitle.text = NSLocalizedString("TITLE_LOGIN_WELCOMEBACK", comment: "")
        textFieldAgentCode.placeholder = NSLocalizedString("PLACEHOLDER_AGENT_CODE", comment: "").lowercaseString
        textFieldAgentPassword.placeholder = NSLocalizedString("PLACEHOLDER_AGENT_PASSWORD", comment: "").lowercaseString
        buttonLogIn.setTitle(NSLocalizedString("BUTTON_LOGIN", comment: "").uppercaseString, forState: .Normal)
    }

    
    // DID RECEIVE MEMORY WARNING
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}