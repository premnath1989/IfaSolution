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
import CoreGraphics
import QuartzCore
import ImageIO
import MessageUI


// CLASS

class PDFController : UIViewController, ReaderViewControllerDelegate
{
    // INITIALIZATION
    
    //@IBOutlet var webViewPDF : UIWebView!
    @IBOutlet var buttonTest : UIButton!
    
    
    // VIEW DID LOAD
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        /* func loadPDF(filename: String)
        {
            let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]
            let filePath = "\(documentsPath)/\(filename).pdf"
            let url = NSURL(fileURLWithPath: filePath)
            let urlRequest = NSURLRequest(URL: url)
            webViewPDF.loadRequest(urlRequest)
        }
        
        loadPDF("file") */
        
        let filename = "file"
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]
        let filePath = "\(documentsPath)/\(filename).pdf"
        let readerDocument : ReaderDocument = ReaderDocument.withDocumentFilePath(filePath, password: nil)
        let readerViewController : ReaderViewController = ReaderViewController.init(readerDocument: readerDocument)
        readerViewController.delegate = self
        readerViewController.modalTransitionStyle = .CrossDissolve
        readerViewController.modalPresentationStyle = .FullScreen
    }
    
    
    // DID RECEIVE MEMORY WARNING
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func test (Sender : UIButton)
    {
        let filename = "file"
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]
        let filePath = "\(documentsPath)/\(filename).pdf"
        let readerDocument : ReaderDocument = ReaderDocument.withDocumentFilePath(filePath, password: nil)
        let readerViewController : ReaderViewController = ReaderViewController.init(readerDocument: readerDocument)
        readerViewController.delegate = self
        readerViewController.modalTransitionStyle = .CrossDissolve
        readerViewController.modalPresentationStyle = .FullScreen
        self.presentViewController(readerViewController, animated: true, completion: nil)
    }
    
    func dismissReaderViewController(viewController: ReaderViewController!)
    {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}