//
//  Table.swift
//  IFAMobile
//
//  Created by Ibrahim Aziz Tejokusumo on 6/13/16.
//  Copyright © 2016 Ibrahim. All rights reserved.
//


// IMPORT

import Foundation
import UIKit


// STYLES

class TableProspect : UITableView
{
    override func awakeFromNib()
    {
        super.awakeFromNib()
        
        self.backgroundColor = GeneratorUIColor(THEME_QUINARY_COLOR, Opacity: 1.0)
        self.layer.masksToBounds = true
        self.separatorStyle = .SingleLine
        self.separatorColor = GeneratorUIColor(THEME_QUATERNARY_COLOR, Opacity: 1.0)
        self.separatorInset = UIEdgeInsets.init(top: 0, left: 80, bottom: 0, right: 80)
    }
}

class TableItemProspect : UITableViewCell
{
    // VARIABLE
    
    @IBOutlet weak var imageViewProspect : UIImageView!
    @IBOutlet weak var labelName : UILabel!
    @IBOutlet weak var imageViewGender : UIImageView!
    @IBOutlet weak var labelEmail : UILabel!
    @IBOutlet weak var imageViewCreatedOn : UIImageView!
    @IBOutlet weak var labelCreatedOn : UILabel!
    @IBOutlet weak var imageViewUpdatedOn : UIImageView!
    @IBOutlet weak var labelUpdatedOn : UILabel!
    @IBOutlet weak var imageViewTelephoneNumber : UIImageView!
    @IBOutlet weak var labelTelephoneNumber : UILabel!
    
    @IBOutlet weak var buttonDelete : UIButton!
    @IBOutlet weak var buttonEdit : UIButton!
    
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        
        labelName.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
        labelName.font = UIFont(name : THEME_SECONDARY_FONT, size : FONTSIZE_TABLE_HEADER)
        labelEmail.textColor = GeneratorUIColor(THEME_SEPTENARY_COLOR, Opacity : 1.0)
        labelEmail.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_TABLE_DETAIL)
        
        labelCreatedOn.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
        labelCreatedOn.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_TABLE_DETAIL)
        labelUpdatedOn.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
        labelUpdatedOn.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_TABLE_DETAIL)
        labelTelephoneNumber.textColor = GeneratorUIColor(THEME_SENARY_COLOR, Opacity : 1.0)
        labelTelephoneNumber.font = UIFont(name : THEME_TERTIARY_FONT, size : FONTSIZE_TABLE_DETAIL)
        
        imageViewGender.image = UIImage(named: "List Female Primary")
        imageViewProspect.image = UIImage(named: "Photo Profile Small")
        imageViewCreatedOn.image = UIImage(named: "List Created On Primary")
        imageViewUpdatedOn.image = UIImage(named: "List Updated On Primary")
        imageViewTelephoneNumber.image = UIImage(named: "List Telephone Number Primary")
    }
    
    override func setSelected(selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: selected)
    }
}