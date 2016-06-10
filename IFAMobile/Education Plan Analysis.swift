//
//  Education Plan Analysis.swift
//  IFAMobile
//
//  Created by Ibrahim Aziz Tejokusumo on 6/6/16.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit
import Charts
import CoreGraphics
import QuartzCore
import ImageIO
import MessageUI


// CLASS

class EducationAnalysisController: UIViewController, ReaderViewControllerDelegate
{
    // INITIALIZATION
    
    @IBOutlet var labelHeaderTitle : UILabel!
    @IBOutlet var labelHeaderDescription : UILabel!
    
    @IBOutlet var labelBasicInformationTitle : UILabel!
    @IBOutlet var labelTotalEducationFundNeededAtTertiaryAgeTitle : UILabel!
    @IBOutlet var labelTotalEducationFundAvailableAtTertiaryAgeTitle : UILabel!
    @IBOutlet var labelBalanceTitle : UILabel!
    
    @IBOutlet var labelName : UILabel!
    @IBOutlet var labelAge : UILabel!
    @IBOutlet var labelPayorName : UILabel!
    @IBOutlet var labelDate : UILabel!
    @IBOutlet var labelTertiaryAge : UILabel!
    @IBOutlet var labelCourseDuration : UILabel!
    @IBOutlet var labelCourseFee : UILabel!
    @IBOutlet var labelLivingExpenses : UILabel!
    @IBOutlet var labelTotalEducationFundNeededAtTertiaryAge : UILabel!
    @IBOutlet var labelLumSumpSavings : UILabel!
    @IBOutlet var labelRegularMonthlySavings : UILabel!
    @IBOutlet var labelReturnAtMaturityAge : UILabel!
    @IBOutlet var labelTotalEducationFundAvailableAtTertiaryAge : UILabel!
    
    @IBOutlet var textFieldName : UITextField!
    @IBOutlet var textFieldAge : UITextField!
    @IBOutlet var textFieldPayorName : UITextField!
    @IBOutlet var textFieldDate : UITextField!
    @IBOutlet var textFieldTertiaryAge : UITextField!
    @IBOutlet var textFieldCourseDuration : UITextField!
    @IBOutlet var textFieldCourseFee : UITextField!
    @IBOutlet var textFieldLivingExpenses : UITextField!
    @IBOutlet var textFieldTotalEducationFundNeededAtTertiaryAge : UITextField!
    @IBOutlet var textFieldLumSumpSavings : UITextField!
    @IBOutlet var textFieldRegularMonthlySavings : UITextField!
    @IBOutlet var textFieldReturnAtMaturityAge : UITextField!
    @IBOutlet var textFieldTotalEducationFundAvailableAtTertiaryAge : UITextField!
    
    @IBOutlet weak var barChartView : BarChartView!
    
    @IBOutlet var buttonShare : UIButton!
    
    
    // VIEW DID LOAD
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // LANGUAGE
        
        labelHeaderTitle.text = NSLocalizedString("Financial Planning Analysis", comment: "")
        labelHeaderDescription.text = NSLocalizedString("Summary on the Financial Analysis", comment: "")
        
        labelBasicInformationTitle.text = NSLocalizedString("TITLE_EDUCATIONPLAN_BASICINFORMATION", comment: "").uppercaseString
        labelTotalEducationFundAvailableAtTertiaryAgeTitle.text = NSLocalizedString("TITLE_EDUCATIONPLAN_FUNDNEEDED", comment: "").uppercaseString
        labelTotalEducationFundNeededAtTertiaryAgeTitle.text = NSLocalizedString("TITLE_EDUCATIONPLAN_FUNDAVAILABLE", comment: "").uppercaseString
        labelBalanceTitle.text = NSLocalizedString("TITLE_EDUCATIONPLAN_BALANCE", comment: "").uppercaseString
        
        labelName.text = NSLocalizedString("Child Name", comment: "")
        labelAge.text = NSLocalizedString("Age", comment: "")
        labelPayorName.text = NSLocalizedString("Payor Name", comment: "")
        labelDate.text = NSLocalizedString("Date", comment: "")
        
        labelTertiaryAge.text = NSLocalizedString("Child Tertiary Education Age", comment: "")
        labelCourseDuration.text = NSLocalizedString("Course duration", comment: "")
        labelCourseFee.text = NSLocalizedString("Annual Tuition Fee", comment: "")
        labelLivingExpenses.text = NSLocalizedString("annual Living Expenses", comment: "")
        labelTotalEducationFundNeededAtTertiaryAge.text = NSLocalizedString("Total Education Fund Required", comment: "")
        
        labelLumSumpSavings.text = NSLocalizedString("Lump Sum Saving", comment: "")
        labelRegularMonthlySavings.text = NSLocalizedString("Regular Month Saving", comment: "")
        labelReturnAtMaturityAge.text = NSLocalizedString("Annual Return Rate", comment: "")
        labelTotalEducationFundAvailableAtTertiaryAge.text = NSLocalizedString("Total Education Fund Available at Child Tertiary Age ", comment: "")
        
        textFieldName.text = "Prem"
        textFieldAge.text = "5"
        textFieldPayorName.text = "Andy Phan"
        textFieldDate.text = "10 June 2016"
        textFieldTertiaryAge.text = "20"
        textFieldCourseDuration.text = "4"
        textFieldCourseFee.text = "RM 100000"
        textFieldLivingExpenses.text = "RM 50000"
        textFieldTotalEducationFundNeededAtTertiaryAge.text = "RM 60000"
        textFieldLumSumpSavings.text = "RM 30000"
        textFieldRegularMonthlySavings.text = "RM 500"
        textFieldReturnAtMaturityAge.text = "RM 10.000.000"
        textFieldTotalEducationFundAvailableAtTertiaryAge.text = "RM 30.000.000"
        
        buttonShare.setTitle(NSLocalizedString("BUTTON_SHARE", comment: ""), forState: .Normal)
        
        
        // CHART
        
        func setChart(dataPoints: [String], values: [Double])
        {
            barChartView.noDataText = "You need to provide data for the chart."
            
            var dataEntries: [BarChartDataEntry] = []
            
            for i in 0..<dataPoints.count
            {
                let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
                dataEntries.append(dataEntry)
            }
            
            let chartDataSet = BarChartDataSet(yVals: dataEntries, label: "Finance")
            let chartData = BarChartData(xVals: dataPoints, dataSet: chartDataSet)
            barChartView.data = chartData
            
            barChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .EaseInBounce)
            barChartView.xAxis.labelPosition = .Bottom
            barChartView.xAxis.labelFont = UIFont(name :THEME_TERTIARY_FONT, size : FONTSIZE_LARGE - 5)!
            barChartView.xAxis.labelTextColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity: 1.0)
            barChartView.rightYAxisRenderer.yAxis?.drawLabelsEnabled = false
            barChartView.leftAxis.labelFont = UIFont(name :THEME_TERTIARY_FONT, size : FONTSIZE_LARGE - 5)!
            barChartView.leftAxis.labelTextColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity: 1.0)
            barChartView.legend.enabled = false
            
            chartDataSet.colors =
            [
                GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity: 1.0),
                GeneratorUIColor(THEME_SECONDARY_COLOR, Opacity: 1.0),
                GeneratorUIColor(THEME_TERTIARY_COLOR, Opacity: 1.0)
            ]
        }
        
        let arrayLabel = ["Fund Needed", "Fund Available", "Balance"]
        let arrayMoney = [600.0, 200.0, 400.0]
        
        setChart(arrayLabel, values: arrayMoney)
        
        
        // PDF
        
        func createPDF()
        {
            let html = "<b>Hello <i>World!</i></b> <p>Generate PDF file from HTML in Swift</p>"
            let fmt = UIMarkupTextPrintFormatter(markupText: html)
            
            // 2. Assign print formatter to UIPrintPageRenderer
            
            let render = UIPrintPageRenderer()
            render.addPrintFormatter(fmt, startingAtPageAtIndex: 0)
            
            // 3. Assign paperRect and printableRect
            
            let page = CGRect(x: 0, y: 0, width: 595.2, height: 841.8) // A4, 72 dpi
            let printable = CGRectInset(page, 0, 0)
            
            render.setValue(NSValue(CGRect: page), forKey: "paperRect")
            render.setValue(NSValue(CGRect: printable), forKey: "printableRect")
            
            // 4. Create PDF context and draw
            
            let pdfData = NSMutableData()
            UIGraphicsBeginPDFContextToData(pdfData, CGRectZero, nil)
            
            for i in 1...render.numberOfPages() {
                
                UIGraphicsBeginPDFPage();
                let bounds = UIGraphicsGetPDFContextBounds()
                render.drawPageAtIndex(i - 1, inRect: bounds)
            }
            
            UIGraphicsEndPDFContext();
            
            // 5. Save PDF file
            
            let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]
            
            pdfData.writeToFile("\(documentsPath)/file.pdf", atomically: true)
        }
        
        createPDF()
        
        
        // PDF VIEWER
        
        let filename = "file"
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]
        let filePath = "\(documentsPath)/\(filename).pdf"
        let readerDocument : ReaderDocument = ReaderDocument.withDocumentFilePath(filePath, password: nil)
        let readerViewController : ReaderViewController = ReaderViewController.init(readerDocument: readerDocument)
        readerViewController.delegate = self
        readerViewController.modalTransitionStyle = .CrossDissolve
        readerViewController.modalPresentationStyle = .FullScreen
        
        
        // NAVIGATION
        
        var buttonNavigationProspect : UIButton? = UIButton()
        buttonNavigationProspect = self.view.viewWithTag(TAG_BUTTON_NAVIGATIONPROSPECT) as? UIButton
        buttonNavigationProspect!.addTarget(self, action: #selector(self.goToAddProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonAgentProfile : UIButton? = UIButton()
        buttonAgentProfile = self.view.viewWithTag(TAG_BUTTON_AGENTPROFILE) as? UIButton
        buttonAgentProfile!.addTarget(self, action: #selector(self.goToAgentProfile(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonAddProspect : UIButton? = UIButton()
        buttonAddProspect = self.view.viewWithTag(TAG_BUTTON_ADDPROSPECT) as? UIButton
        buttonAddProspect!.addTarget(self, action: #selector(self.goToAddProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonFindProspect : UIButton? = UIButton()
        buttonFindProspect = self.view.viewWithTag(TAG_BUTTON_FINDPROSPECT) as? UIButton
        buttonFindProspect?.backgroundColor = GeneratorUIColor(THEME_SECONDARY_COLOR, Opacity: 1.0)
        buttonFindProspect!.addTarget(self, action: #selector(self.goToFindProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        // GUIDE
        
        var buttonStep1 : UIButton? = ButtonGuideDone()
        buttonStep1 = self.view.viewWithTag(TAG_GUIDE_STEP1) as? UIButton
        buttonStep1!.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
        buttonStep1!.setTitleColor(GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0), forState: .Normal)
        buttonStep1!.addTarget(self, action: #selector(self.goToAddProspect(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonStep2 : UIButton? = ButtonGuideDone()
        buttonStep2 = self.view.viewWithTag(TAG_GUIDE_STEP2) as? UIButton
        buttonStep2!.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
        buttonStep2!.setTitleColor(GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0), forState: .Normal)
        buttonStep2!.addTarget(self, action: #selector(self.goToChooseFinancialPlan(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonStep3 : UIButton? = ButtonGuideDone()
        buttonStep3 = self.view.viewWithTag(TAG_GUIDE_STEP3) as? UIButton
        buttonStep3!.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
        buttonStep3!.setTitleColor(GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0), forState: .Normal)
        buttonStep3!.addTarget(self, action: #selector(self.goToEducationDetail(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonStep4 : UIButton? = ButtonGuideDone()
        buttonStep4 = self.view.viewWithTag(TAG_GUIDE_STEP4) as? UIButton
        buttonStep4!.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0)
        buttonStep4!.setTitleColor(GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity : 1.0), forState: .Normal)
        buttonStep4!.addTarget(self, action: #selector(self.goToFactFindingQuestionnaire(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
        
        var buttonStep5 : UIButton? = ButtonGuideInProgress()
        buttonStep5 = self.view.viewWithTag(TAG_GUIDE_STEP5) as? UIButton
        buttonStep5!.backgroundColor = GeneratorUIColor(THEME_SECONDARY_COLOR, Opacity : 1.0)
        buttonStep5!.setTitleColor(GeneratorUIColor(THEME_QUINARY_COLOR, Opacity : 1.0), forState: .Normal)
        buttonStep5!.addTarget(self, action: #selector(self.goToEducationAnalysis(_:)), forControlEvents: EVENT_BUTTON_NAVIGATION)
    }
    
    
    // DID RECEIVE MEMORY WARNING
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // EVENT
    
    @IBAction func goToPDF (Sender : UIButton)
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
    
    // GUIDE
    
    func goToChooseFinancialPlan(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageChooseFinancialPlan") as! ChooseFinancialPlanController
        self.presentViewController(page, animated: true, completion: nil)
    }
    
    func goToEducationDetail(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageEducationPlanDetail") as! EducationDetailController
        self.presentViewController(page, animated: true, completion: nil)
    }
    
    func goToFactFindingQuestionnaire(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageFactFindingQuestionnaire") as! FactFindingQuestionnaireController
        self.presentViewController(page, animated: true, completion: nil)
    }
    
    func goToEducationAnalysis(sender : UIButton)
    {
        let page = self.storyboard?.instantiateViewControllerWithIdentifier("PageEducationAnalysis") as! EducationAnalysisController
        self.presentViewController(page, animated: true, completion: nil)
    }
}