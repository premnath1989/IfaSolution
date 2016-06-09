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


// CLASS

class EducationAnalysisController: UIViewController
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
        
        labelName.text = NSLocalizedString("FIELD_NAME", comment: "")
        labelAge.text = NSLocalizedString("FIELD_AGE", comment: "")
        labelPayorName.text = NSLocalizedString("FIELD_PAYORNAME", comment: "")
        labelDate.text = NSLocalizedString("FIELD_DATE", comment: "")
        
        labelTertiaryAge.text = NSLocalizedString("FIELD_AGE", comment: "")
        labelCourseDuration.text = NSLocalizedString("FIELD_COURSEDURATION", comment: "")
        labelCourseFee.text = NSLocalizedString("FIELD_COURSEFEE", comment: "")
        labelLivingExpenses.text = NSLocalizedString("FIELD_LIVINGEXPENSES", comment: "")
        labelTotalEducationFundNeededAtTertiaryAge.text = NSLocalizedString("FIELD_TOTALEDUCATIONFUNDNEEDED", comment: "")
        
        labelLumSumpSavings.text = NSLocalizedString("FIELD_LUMSUMPSAVINGS", comment: "")
        labelRegularMonthlySavings.text = NSLocalizedString("FIELD_REGULARMONTHLYSAVINGS", comment: "")
        labelReturnAtMaturityAge.text = NSLocalizedString("FIELD_RETURNATMATURITYAGE", comment: "")
        labelTotalEducationFundAvailableAtTertiaryAge.text = NSLocalizedString("FIELD_TOTALEDUCATIONFUNDAVAILABLE", comment: "")
        
        textFieldName.text = "Premnath Vijayakumar"
        textFieldAge.text = "26"
        textFieldPayorName.text = "Andy Phan"
        textFieldDate.text = "Tuesday, 06 June 2016"
        textFieldTertiaryAge.text = "29"
        textFieldCourseDuration.text = "2 years"
        textFieldCourseFee.text = "RM 50.000.000"
        textFieldLivingExpenses.text = "RM 20.000.000"
        textFieldTotalEducationFundNeededAtTertiaryAge.text = "RM 30.000.000"
        textFieldLumSumpSavings.text = "RM 10.000.000"
        textFieldRegularMonthlySavings.text = "RM 2.000.000"
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
            barChartView.xAxis.labelFont = UIFont(name :THEME_TERTIARY_FONT, size : FONTSIZE_LARGE)!
            barChartView.xAxis.labelTextColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity: 1.0)
            barChartView.rightYAxisRenderer.yAxis?.drawLabelsEnabled = false
            barChartView.leftAxis.labelFont = UIFont(name :THEME_TERTIARY_FONT, size : FONTSIZE_LARGE)!
            barChartView.leftAxis.labelTextColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity: 1.0)
            
            chartDataSet.colors =
            [
                GeneratorUIColor(THEME_PRIMARY_COLOR, Opacity: 1.0),
                GeneratorUIColor(THEME_SECONDARY_COLOR, Opacity: 1.0),
                GeneratorUIColor(THEME_TERTIARY_COLOR, Opacity: 1.0)
            ]
        }
        
        let arrayLabel = ["Fund Needed", "Fund Available", "Balance"]
        let arrayMoney = [20.0, 50.0, 30.0]
        
        setChart(arrayLabel, values: arrayMoney)
    }
    
    
    // DID RECEIVE MEMORY WARNING
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}