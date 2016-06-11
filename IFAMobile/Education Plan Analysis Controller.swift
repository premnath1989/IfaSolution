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
    @IBOutlet var labelAdditionalEducationFund : UILabel!
    @IBOutlet var labelNumberOfYears : UILabel!
    @IBOutlet var labelAdditionalRegularSavings : UILabel!
    
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
    @IBOutlet var textFieldAdditionalEducationFund : UITextField!
    @IBOutlet var textFieldNumberOfYears : UITextField!
    @IBOutlet var textFieldAdditionalRegularSavings : UITextField!
    
    @IBOutlet var labelTableTitle : UILabel!
    @IBOutlet var stackViewTable : UIStackView!
    @IBOutlet var viewHighlight : UIView!
    
    @IBOutlet weak var barChartView : BarChartView!
    
    @IBOutlet var buttonShare : UIButton!
    
    
    // VIEW DID LOAD
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewHighlight.backgroundColor = GeneratorUIColor(THEME_SECONDARY_COLOR, Opacity: 1.0)
        textFieldAdditionalEducationFund.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity: 1.0)
        textFieldNumberOfYears.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity: 1.0)
        textFieldAdditionalRegularSavings.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity: 1.0)
        labelAdditionalRegularSavings.textColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity: 1.0)
        labelNumberOfYears.textColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity: 1.0)
        labelAdditionalEducationFund.textColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity: 1.0)
        
        // LANGUAGE
        
        labelHeaderTitle.text = NSLocalizedString("Education Planning Analysis", comment: "")
        labelHeaderDescription.text = NSLocalizedString("Summary on the Education Analysis", comment: "")
        
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
        
        labelAdditionalEducationFund.text = NSLocalizedString("FIELD_", comment: "")
        labelNumberOfYears.text = NSLocalizedString("FIELD_", comment: "")
        labelAdditionalRegularSavings.text = NSLocalizedString("FIELD_", comment: "")
        
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
        
        textFieldAdditionalEducationFund.text = NSLocalizedString("PLACEHOLDER_ACTUALTOTALEDUCATION", comment: "")
        textFieldNumberOfYears.text = NSLocalizedString("PLACEHOLDER_INFLATIONRATE", comment: "")
        textFieldAdditionalRegularSavings.text = NSLocalizedString("PLACEHOLDER_EXPECTEDRATEOFRETURN", comment: "")
        
        buttonShare.setTitle(NSLocalizedString("BUTTON_SHARE", comment: ""), forState: .Normal)
        
        labelTableTitle.text = "Investment table".uppercaseString
        
        
        // TABLE
        
        var arrayTable : Array<String> =
        [
            "%" + CHARACTER_DATABASE_SEPARATOR + "Lum sump investment" + CHARACTER_DATABASE_SEPARATOR + "%" + CHARACTER_DATABASE_SEPARATOR + "Savings",
            "2 %" + CHARACTER_DATABASE_SEPARATOR + "RM 100" + CHARACTER_DATABASE_SEPARATOR + "2 %" + CHARACTER_DATABASE_SEPARATOR + "RM 50",
            "4 %" + CHARACTER_DATABASE_SEPARATOR + "RM 200" + CHARACTER_DATABASE_SEPARATOR + "4 %" + CHARACTER_DATABASE_SEPARATOR + "RM 100",
            "6 %" + CHARACTER_DATABASE_SEPARATOR + "RM 300" + CHARACTER_DATABASE_SEPARATOR + "6 %" + CHARACTER_DATABASE_SEPARATOR + "RM 150",
            "8 %" + CHARACTER_DATABASE_SEPARATOR + "RM 400" + CHARACTER_DATABASE_SEPARATOR + "8 %" + CHARACTER_DATABASE_SEPARATOR + "RM 200",
            "10 %" + CHARACTER_DATABASE_SEPARATOR + "RM 500" + CHARACTER_DATABASE_SEPARATOR + "10 %" + CHARACTER_DATABASE_SEPARATOR + "RM 250"
        ]
        
        for i : Int in 0 ..< arrayTable.count
        {
            var arrayTableContent = arrayTable[i].componentsSeparatedByString(CHARACTER_DATABASE_SEPARATOR)
            
            if (i == 0)
            {
                var labelTableHeader1 : UILabel = LabelTableHeader()
                var labelTableHeader2 : UILabel = LabelTableHeader()
                var labelTableHeader3 : UILabel = LabelTableHeader()
                var labelTableHeader4 : UILabel = LabelTableHeader()
                labelTableHeader1.text = arrayTableContent[0]
                labelTableHeader2.text = arrayTableContent[1]
                labelTableHeader3.text = arrayTableContent[2]
                labelTableHeader4.text = arrayTableContent[3]
                
                var stackViewTableHeader : UIStackView = UIStackView()
                stackViewTableHeader.widthAnchor.constraintEqualToConstant(self.view.frame.width).active = true
                stackViewTableHeader.heightAnchor.constraintEqualToConstant(INPUT_LOGIN_HEIGHT).active = true
                stackViewTableHeader.alignment = .Center
                stackViewTableHeader.axis = .Horizontal
                stackViewTableHeader.distribution = .FillEqually
                stackViewTableHeader.spacing = 0
                stackViewTableHeader.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity: 1.0)
                
                stackViewTableHeader.addArrangedSubview(labelTableHeader1)
                stackViewTableHeader.addArrangedSubview(labelTableHeader2)
                stackViewTableHeader.addArrangedSubview(labelTableHeader3)
                stackViewTableHeader.addArrangedSubview(labelTableHeader4)
                
                stackViewTable.addArrangedSubview(stackViewTableHeader)
            }
            else
            {
                var j = i
                
                if (j % 2 == 0)
                {
                    var labelTableRow1 : UILabel = LabelTableRowEven()
                    var labelTableRow2 : UILabel = LabelTableRowEven()
                    var labelTableRow3 : UILabel = LabelTableRowEven()
                    var labelTableRow4 : UILabel = LabelTableRowEven()
                    labelTableRow1.text = arrayTableContent[0]
                    labelTableRow2.text = arrayTableContent[1]
                    labelTableRow3.text = arrayTableContent[2]
                    labelTableRow4.text = arrayTableContent[3]
                    
                    var stackViewTableOdd : UIStackView = UIStackView()
                    stackViewTableOdd.alignment = .Center
                    stackViewTableOdd.axis = .Horizontal
                    stackViewTableOdd.distribution = .FillEqually
                    stackViewTableOdd.spacing = 0
                    stackViewTableOdd.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity: 1.0)
                    stackViewTableOdd.widthAnchor.constraintEqualToConstant(self.view.frame.width).active = true
                    stackViewTableOdd.heightAnchor.constraintEqualToConstant(INPUT_LOGIN_HEIGHT).active = true

                    stackViewTableOdd.addArrangedSubview(labelTableRow1)
                    stackViewTableOdd.addArrangedSubview(labelTableRow2)
                    stackViewTableOdd.addArrangedSubview(labelTableRow3)
                    stackViewTableOdd.addArrangedSubview(labelTableRow4)
                    
                    stackViewTable.addArrangedSubview(stackViewTableOdd)
                }
                else
                {
                    var labelTableRow1 : UILabel = LabelTableRowOdd()
                    var labelTableRow2 : UILabel = LabelTableRowOdd()
                    var labelTableRow3 : UILabel = LabelTableRowOdd()
                    var labelTableRow4 : UILabel = LabelTableRowOdd()
                    labelTableRow1.text = arrayTableContent[0]
                    labelTableRow2.text = arrayTableContent[1]
                    labelTableRow3.text = arrayTableContent[2]
                    labelTableRow4.text = arrayTableContent[3]
                    
                    var stackViewTableEven : UIStackView = UIStackView()
                    
                    stackViewTableEven.addArrangedSubview(labelTableRow1)
                    stackViewTableEven.addArrangedSubview(labelTableRow2)
                    stackViewTableEven.addArrangedSubview(labelTableRow3)
                    stackViewTableEven.addArrangedSubview(labelTableRow4)
                    stackViewTableEven.alignment = .Center
                    stackViewTableEven.axis = .Horizontal
                    stackViewTableEven.distribution = .FillEqually
                    stackViewTableEven.spacing = 0
                    stackViewTableEven.backgroundColor = GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity: 1.0)
                    stackViewTableEven.widthAnchor.constraintEqualToConstant(self.view.frame.width).active = true
                    stackViewTableEven.heightAnchor.constraintEqualToConstant(INPUT_LOGIN_HEIGHT).active = true
                    
                    stackViewTable.addArrangedSubview(stackViewTableEven)
                }
            }
        }
        
        
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
        
//        let filename = "file"
//        // let filename = "Planning"
//        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]
//        let filePath = "\(documentsPath)/\(filename).pdf"
        
        
        if let pdf = NSBundle.mainBundle().URLForResource("Planning", withExtension: "pdf", subdirectory: nil, localization: nil)  {
//            let filePath = NSURLRequest(URL: pdf)
//            NSLog(filePath.path, "filePath")
            let filePath = pdf.path
            
            let readerDocument : ReaderDocument = ReaderDocument.withDocumentFilePath(filePath, password: nil)
            let readerViewController : ReaderViewController = ReaderViewController.init(readerDocument: readerDocument)
            readerViewController.delegate = self
            readerViewController.modalTransitionStyle = .CrossDissolve
            readerViewController.modalPresentationStyle = .FullScreen
        }
        
        
        
        
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
        if let pdf = NSBundle.mainBundle().URLForResource("Planning", withExtension: "pdf", subdirectory: nil, localization: nil)  {
            //            let filePath = NSURLRequest(URL: pdf)
            //            NSLog(filePath.path, "filePath")
            let filePath = pdf.path
            
            let readerDocument : ReaderDocument = ReaderDocument.withDocumentFilePath(filePath, password: nil)
            let readerViewController : ReaderViewController = ReaderViewController.init(readerDocument: readerDocument)
            readerViewController.delegate = self
            readerViewController.modalTransitionStyle = .CrossDissolve
            readerViewController.modalPresentationStyle = .FullScreen
            self.presentViewController(readerViewController, animated: true, completion: nil)
        }
        
        /* let filename = "file"
        let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0]
        let filePath = "\(documentsPath)/\(filename).pdf"
        let readerDocument : ReaderDocument = ReaderDocument.withDocumentFilePath(filePath, password: nil)
        let readerViewController : ReaderViewController = ReaderViewController.init(readerDocument: readerDocument)
        readerViewController.delegate = self
        readerViewController.modalTransitionStyle = .CrossDissolve
        readerViewController.modalPresentationStyle = .FullScreen
        self.presentViewController(readerViewController, animated: true, completion: nil) */
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