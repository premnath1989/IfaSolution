//
//  PDF Controller.swift
//  IFAMobile
//
//  Created by Ibrahim Aziz Tejokusumo on 6/9/16.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// CLASS

class PDFController : UIViewController
{
    // INITIALIZATION
    
    @IBOutlet var webViewPDF : UIWebView!
    
    
    // VIEW DID LOAD
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        func loadPDF(filename: String)
        {
            let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]
            let filePath = "\(documentsPath)/\(filename).pdf"
            let url = NSURL(fileURLWithPath: filePath)
            let urlRequest = NSURLRequest(URL: url)
            webViewPDF.loadRequest(urlRequest)
        }
        
        loadPDF("file")
    }
    
    
    // DID RECEIVE MEMORY WARNING
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}