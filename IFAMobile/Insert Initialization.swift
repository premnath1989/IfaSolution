////
////  Insert Initialization.swift
////  MMBS Arowana
////
////  Created by Ibrahim Aziz Tejokusumo on 1/18/16.
////  Copyright © 2016 Ibrahim Aziz Tejokusumo. All rights reserved.
////
//
//
//// IMPORT
//
//import Foundation
//import CoreData
//
//
//// INITIALIZATION
//
//func InitializationUser() -> Void
//{
//    let UserRow = SelectDatabase(Entity_User)
////    let UserVariable : EntityUser = EntityUser.init()
////    
////    if UserRow.count == 0
////    {
////        UserVariable.SetConnectionType(Connection_Type_GPRS)
////        UserVariable.SetID(1)
////        UserVariable.SetPassword(User_Password_Default)
////        UserVariable.SetPasswordChanged(false)
////        InsertUser(UserVariable)
////    }
////    else
////    {
//    
//    }
//}
//
//func InitializationCatagory() -> Void
//{
//    var TableRow : [NSManagedObject] = [NSManagedObject]()
//    TableRow = SelectDatabase(Entity_Catagory)
//    let CatagoryVariable : EntityCatagory = EntityCatagory.init()
//    var ArrayCatagory : Array<String> =
//    [
//        "Inhouse bank transfer" + Character_Database_Separator + "Transfer",
//        "Interbank transfer" + Character_Database_Separator + "Transfer",
//        "Prepaid Telephone" + Character_Database_Separator + "Purchase",
//        "Postpaid Telephone" + Character_Database_Separator + "Payment",
//        "Utilities" + Character_Database_Separator + "Payment",
//    ]
//    
//    if TableRow.count == 0
//    {
//        for i : Int in 0..<ArrayCatagory.count
//        {
//            var ArrayCatagoryContent = ArrayCatagory[i].componentsSeparatedByString(Character_Database_Separator)
//            
//            CatagoryVariable.SetID(i)
//            CatagoryVariable.SetName(ArrayCatagoryContent[0])
//            CatagoryVariable.SetType(ArrayCatagoryContent[1])
//            InsertCatagory(CatagoryVariable)
//        }
//    }
//    else
//    {
//        
//    }
//}
//
//func InitializationBank() -> Void
//{
//    var TableRow : [NSManagedObject] = [NSManagedObject]()
//    TableRow = SelectDatabase(Entity_Bank)
//    let BankVariable : EntityBank = EntityBank.init()
//    var ArrayBank : Array<String> =
//    [
//        "008" + Character_Database_Separator + "Bank Mandiri" + Character_Database_Separator + "Interbank transfer",
//        "014" + Character_Database_Separator + "Bank Central Asia" + Character_Database_Separator + "Interbank transfer",
//        "022" + Character_Database_Separator + "Bank CIMB Niaga" + Character_Database_Separator + "Interbank transfer",
//        "117" + Character_Database_Separator + "Bank Sumatera Utara" + Character_Database_Separator + "Inhouse bank transfer",
//        "111" + Character_Database_Separator + "Bank DKI" + Character_Database_Separator + "Interbank transfer",
//        "121" + Character_Database_Separator + "Bank Lampung" + Character_Database_Separator + "Interbank transfer",
//        "126" + Character_Database_Separator + "Bank Sulawesi Selatan" + Character_Database_Separator + "Interbank transfer",
//        "096" + Character_Database_Separator + "Bank Mayapada" + Character_Database_Separator + "Interbank transfer",
//        
//        "046" + Character_Database_Separator + "BANK DBS" + Character_Database_Separator + "Interbank transfer",
//        "011" + Character_Database_Separator + "BANK DANAMON" + Character_Database_Separator + "Interbank transfer",
//        "110" + Character_Database_Separator + "BANK JABAR" + Character_Database_Separator + "Interbank transfer",
//        "112" + Character_Database_Separator + "BPD DIY" + Character_Database_Separator + "Interbank transfer",
//        "113" + Character_Database_Separator + "BANK JATENG" + Character_Database_Separator + "Interbank transfer",
//        "114" + Character_Database_Separator + "BANK JATIM" + Character_Database_Separator + "Interbank transfer",
//        "115" + Character_Database_Separator + "BPD JAMBI" + Character_Database_Separator + "Interbank transfer",
//        "116" + Character_Database_Separator + "BPD ACEH" + Character_Database_Separator + "Interbank transfer",
//        "118" + Character_Database_Separator + "BANK NAGARI" + Character_Database_Separator + "Interbank transfer",
//        "119" + Character_Database_Separator + "BANK RIAU" + Character_Database_Separator + "Interbank transfer",
//        "120" + Character_Database_Separator + "BANK SUMSEL BABEL" + Character_Database_Separator + "Interbank transfer",
//        "122" + Character_Database_Separator + "BPD KALSEL" + Character_Database_Separator + "Interbank transfer",
//        "123" + Character_Database_Separator + "BANK KALBAR" + Character_Database_Separator + "Interbank transfer",
//        "124" + Character_Database_Separator + "BPD KALTIM" + Character_Database_Separator + "Interbank transfer",
//        "125" + Character_Database_Separator + "BPD KALTENG" + Character_Database_Separator + "Interbank transfer",
//        "126" + Character_Database_Separator + "BPD SULSEL" + Character_Database_Separator + "Interbank transfer",
//        "127" + Character_Database_Separator + "BANK SULUT" + Character_Database_Separator + "Interbank transfer",
//        "128" + Character_Database_Separator + "BANK NTB" + Character_Database_Separator + "Interbank transfer",
//        "129" + Character_Database_Separator + "BPD BALI" + Character_Database_Separator + "Interbank transfer",
//        "013" + Character_Database_Separator + "BANK PERMATA" + Character_Database_Separator + "Interbank transfer",
//        "130" + Character_Database_Separator + "BANK NTT" + Character_Database_Separator + "Interbank transfer",
//        "131" + Character_Database_Separator + "BANK MALUKU" + Character_Database_Separator + "Interbank transfer",
//        "132" + Character_Database_Separator + "BANK PAPUA" + Character_Database_Separator + "Interbank transfer",
//        "133" + Character_Database_Separator + "BANK BENGKULU" + Character_Database_Separator + "Interbank transfer",
//        "134" + Character_Database_Separator + "BANK SULTENG" + Character_Database_Separator + "Interbank transfer",
//        "135" + Character_Database_Separator + "BANK BPD SULTRA" + Character_Database_Separator + "Interbank transfer",
//        "145" + Character_Database_Separator + "BANK NUSAPRN" + Character_Database_Separator + "Interbank transfer",
//        "146" + Character_Database_Separator + "BANK OF INDIA INDONESIA" + Character_Database_Separator + "Interbank transfer",
//        "147" + Character_Database_Separator + "BANK MUAMALAT" + Character_Database_Separator + "Interbank transfer",
//        "151" + Character_Database_Separator + "BANK MESTIKA" + Character_Database_Separator + "Interbank transfer",
//        "153" + Character_Database_Separator + "BANK SINARMAS" + Character_Database_Separator + "Interbank transfer",
//        "157" + Character_Database_Separator + "BANK MASPION" + Character_Database_Separator + "Interbank transfer",
//        "016" + Character_Database_Separator + "BII" + Character_Database_Separator + "Interbank transfer",
//        "161" + Character_Database_Separator + "BANK GANESHA" + Character_Database_Separator + "Interbank transfer",
//        "164" + Character_Database_Separator + "BANK ICBC INDONESIA" + Character_Database_Separator + "Interbank transfer",
//        "167" + Character_Database_Separator + "BANK QNB INDONESIA" + Character_Database_Separator + "Interbank transfer",
//        "019" + Character_Database_Separator + "BANK PANIN" + Character_Database_Separator + "Interbank transfer",
//        "002" + Character_Database_Separator + "BANK BRI" + Character_Database_Separator + "Interbank transfer",
//        "020" + Character_Database_Separator + "BANK ANK" + Character_Database_Separator + "Interbank transfer",
//        "200" + Character_Database_Separator + "BANK BTN" + Character_Database_Separator + "Interbank transfer",
//        "212" + Character_Database_Separator + "BANK WOORI SAUDARA" + Character_Database_Separator + "Interbank transfer",
//        "213" + Character_Database_Separator + "BANK BTPN" + Character_Database_Separator + "Interbank transfer",
//        "023" + Character_Database_Separator + "BANK UOB INDONESIA" + Character_Database_Separator + "Interbank transfer",
//        "027" + Character_Database_Separator + "PRIMA EXPRES" + Character_Database_Separator + "Interbank transfer",
//        "031" + Character_Database_Separator + "CITIBANK" + Character_Database_Separator + "Interbank transfer",
//        "036" + Character_Database_Separator + "BANK WINDU KENTJANA INTERNASIONAL" + Character_Database_Separator + "Interbank transfer",
//        "037" + Character_Database_Separator + "BANK ARTHA GRAHA" + Character_Database_Separator + "Interbank transfer",
//        "041" + Character_Database_Separator + "BANK HSBC" + Character_Database_Separator + "Interbank transfer",
//        "042" + Character_Database_Separator + "THE BANK OF TOKYO-MITSUBISHI UFJ" + Character_Database_Separator + "Interbank transfer",
//        "422" + Character_Database_Separator + "BANK BRI  SYARIAH" + Character_Database_Separator + "Interbank transfer",
//        "425" + Character_Database_Separator + "BANK JABAR BANTEN SYARIAH" + Character_Database_Separator + "Interbank transfer",
//        "426" + Character_Database_Separator + "BANK MEGA IND" + Character_Database_Separator + "Interbank transfer",
//        "441" + Character_Database_Separator + "BANK BUKOPIN" + Character_Database_Separator + "Interbank transfer",
//        "451" + Character_Database_Separator + "BSM" + Character_Database_Separator + "Interbank transfer",
//        "458" + Character_Database_Separator + "RHB BANK" + Character_Database_Separator + "Interbank transfer",
//        "472" + Character_Database_Separator + "BANK JASA JAKARTA" + Character_Database_Separator + "Interbank transfer",
//        "484" + Character_Database_Separator + "HANA BANK" + Character_Database_Separator + "Interbank transfer",
//        "485" + Character_Database_Separator + "PT. BANK MNC INTERNASIONAL, TBK" + Character_Database_Separator + "Interbank transfer",
//        "490" + Character_Database_Separator + "BANK YUDHA BHAKTI" + Character_Database_Separator + "Interbank transfer",
//        "494" + Character_Database_Separator + "PT. BRI AGRONIAGA" + Character_Database_Separator + "Interbank transfer",
//        "498" + Character_Database_Separator + "BANK SBI INDONESIA (INDOMONEX)" + Character_Database_Separator + "Interbank transfer",
//        "050" + Character_Database_Separator + "BANK STDCHARTER" + Character_Database_Separator + "Interbank transfer",
//        "501" + Character_Database_Separator + "BANK ROYAL" + Character_Database_Separator + "Interbank transfer",
//        "503" + Character_Database_Separator + "BANK NATIONALNOBU" + Character_Database_Separator + "Interbank transfer",
//        "506" + Character_Database_Separator + "BSMI" + Character_Database_Separator + "Interbank transfer",
//        "513" + Character_Database_Separator + "BANK INA" + Character_Database_Separator + "Interbank transfer",
//        "517" + Character_Database_Separator + "PANIN BANK SYARIAH" + Character_Database_Separator + "Interbank transfer",
//        "523" + Character_Database_Separator + "BANK SAHABAT SAMPOERNA" + Character_Database_Separator + "Interbank transfer",
//        "525" + Character_Database_Separator + "BANK BARCLAYS" + Character_Database_Separator + "Interbank transfer",
//        "526" + Character_Database_Separator + "BANK DINAR" + Character_Database_Separator + "Interbank transfer",
//        "535" + Character_Database_Separator + "BKE" + Character_Database_Separator + "Interbank transfer",
//        "536" + Character_Database_Separator + "BANK BCA SYARIAH" + Character_Database_Separator + "Interbank transfer",
//        "054" + Character_Database_Separator + "BANK CAPITAL" + Character_Database_Separator + "Interbank transfer",
//        "542" + Character_Database_Separator + "BANK ARTOS INDONESIA" + Character_Database_Separator + "Interbank transfer",
//        "553" + Character_Database_Separator + "BANK MAYORA" + Character_Database_Separator + "Interbank transfer",
//        "555" + Character_Database_Separator + "BANK INDEX" + Character_Database_Separator + "Interbank transfer",
//        "558" + Character_Database_Separator + "BANK PUNDI" + Character_Database_Separator + "Interbank transfer",
//        "559" + Character_Database_Separator + "CNB" + Character_Database_Separator + "Interbank transfer",
//        "566" + Character_Database_Separator + "BANK VICTORIA INTERNATIONAL" + Character_Database_Separator + "Interbank transfer",
//        "567" + Character_Database_Separator + "HARDA" + Character_Database_Separator + "Interbank transfer",
//        "600" + Character_Database_Separator + "ATMB LSB" + Character_Database_Separator + "Interbank transfer",
//        "061" + Character_Database_Separator + "BANK ANZ INDONESIA" + Character_Database_Separator + "Interbank transfer",
//        "688" + Character_Database_Separator + "BANK BPR KS" + Character_Database_Separator + "Interbank transfer",
//        "069" + Character_Database_Separator + "BANK BOC" + Character_Database_Separator + "Interbank transfer",
//        "699" + Character_Database_Separator + "BPR EKA BUMI ARTHA" + Character_Database_Separator + "Interbank transfer",
//        "076" + Character_Database_Separator + "BANK BUMI ARTA" + Character_Database_Separator + "Interbank transfer",
//        "789" + Character_Database_Separator + "DOMPETKU" + Character_Database_Separator + "Interbank transfer",
//        "087" + Character_Database_Separator + "BANK EKONOMI RAHARJA" + Character_Database_Separator + "Interbank transfer",
//        "088" + Character_Database_Separator + "BANK ANTAR DAERAH" + Character_Database_Separator + "Interbank transfer",
//        "089" + Character_Database_Separator + "RABOBANK" + Character_Database_Separator + "Interbank transfer",
//        "009" + Character_Database_Separator + "BANK BNI" + Character_Database_Separator + "Interbank transfer",
//        "093" + Character_Database_Separator + "BANK IFI" + Character_Database_Separator + "Interbank transfer",
//        "945" + Character_Database_Separator + "BANK AGRIS" + Character_Database_Separator + "Interbank transfer",
//        "095" + Character_Database_Separator + "BANK MUTIARA" + Character_Database_Separator + "Interbank transfer",
//        "950" + Character_Database_Separator + "BANK CMWEALTH" + Character_Database_Separator + "Interbank transfer",
//        "097" + Character_Database_Separator + "BANK MAYAPADA" + Character_Database_Separator + "Interbank transfer",
//        "987"  + Character_Database_Separator + "ATMBPLUS" + Character_Database_Separator + "Interbank transfer"
//    ]
//    
//    if TableRow.count == 0
//    {
//        for i : Int in 0 ..< ArrayBank.count
//        {
//            var ArrayBankContent : Array<String> = ArrayBank[i].componentsSeparatedByString(Character_Database_Separator)
//            
//            BankVariable.SetID(i)
//            BankVariable.SetBankCode(ArrayBankContent[0])
//            BankVariable.SetBankName(ArrayBankContent[1])
//            BankVariable.SetCatagory(ArrayBankContent[2])
//            BankVariable.SetState(true)
//            BankVariable.SetIndex(i)
//            InsertBank(BankVariable)
//        }
//    }
//    else
//    {
//        
//    }
//}
//
//func InitializationBiller() -> Void
//{
//    var TableRow : [NSManagedObject] = [NSManagedObject]()
//    TableRow = SelectDatabase(Entity_Biller)
//    let BillerVariable : EntityBiller = EntityBiller.init()
//    var ArrayBiller : Array<String> =
//    [
//        "Telkomsel" + Character_Database_Separator + "1111" +  Character_Database_Separator + "Prepaid Telephone",
//        "XL" + Character_Database_Separator + "1112" +  Character_Database_Separator + "Prepaid Telephone",
//        "Indosat" + Character_Database_Separator + "1113" +  Character_Database_Separator + "Prepaid Telephone",
//        "Smartfren" + Character_Database_Separator + "1114" +  Character_Database_Separator + "Prepaid Telephone",
//        "Flexi" + Character_Database_Separator + "1115" +  Character_Database_Separator + "Prepaid Telephone",
//        "Three" + Character_Database_Separator + "1116" +  Character_Database_Separator + "Prepaid Telephone",
//        "Telkomsel" + Character_Database_Separator + "0001" +  Character_Database_Separator + "Postpaid Telephone",
//        "XL" + Character_Database_Separator + "0003" +  Character_Database_Separator + "Postpaid Telephone",
//        "Speedy" + Character_Database_Separator + "0004" + Character_Database_Separator + "Utilities",
//        "PSTN" + Character_Database_Separator + "0005" + Character_Database_Separator + "Utilities",
//        "PDAM Tirtanadi" + Character_Database_Separator + "0002" + Character_Database_Separator + "Utilities",
//        "Transvision" + Character_Database_Separator + "0006" + Character_Database_Separator + "Utilities",
//        "Indovision" + Character_Database_Separator + "0007" + Character_Database_Separator + "Utilities",
//        "Aora TV" + Character_Database_Separator + "0008" + Character_Database_Separator + "Utilities"
//    ]
//    
//    if TableRow.count == 0
//    {
//        for i : Int in 0 ..< ArrayBiller.count
//        {
//            var ArrayBillerContent : Array<String> = ArrayBiller[i].componentsSeparatedByString(Character_Database_Separator)
//            
//            BillerVariable.SetID(i)
//            BillerVariable.SetBillerName(ArrayBillerContent[0])
//            BillerVariable.SetBillerCode(ArrayBillerContent[1])
//            BillerVariable.SetCatagory(ArrayBillerContent[2])
//            BillerVariable.SetState(true)
//            BillerVariable.SetIndex(i)
//            InsertBiller(BillerVariable)
//        }
//    }
//    else
//    {
//        
//    }
//}
////comment latest pull
//
//func InitializationNominal() -> Void
//{
//    var TableRow : [NSManagedObject] = [NSManagedObject]()
//    TableRow = SelectDatabase(Entity_Nominal)
//    let NominalVariable : EntityNominal = EntityNominal.init()
//    var ArrayNominal : Array<String> =
//    [
//        "25000" + Character_Database_Separator + "1111",
//        "50000" + Character_Database_Separator + "1111",
//        "100000" + Character_Database_Separator + "1111",
//        "150000" + Character_Database_Separator + "1111",
//        "200000" + Character_Database_Separator + "1111",
//        "300000" + Character_Database_Separator + "1111",
//        "500000" + Character_Database_Separator + "1111",
//        "1000000" + Character_Database_Separator + "1111"
//        /*"10000" + Character_Database_Separator + "1112",
//        "50000" + Character_Database_Separator + "1112",
//        "100000" + Character_Database_Separator + "1112",
//        "15000" + Character_Database_Separator + "1113",
//        "25000" + Character_Database_Separator + "1113",
//        "50000" + Character_Database_Separator + "1113",
//        "25000" + Character_Database_Separator + "1114",
//        "50000" + Character_Database_Separator + "1114",
//        "75000" + Character_Database_Separator + "1114",
//        "50000" + Character_Database_Separator + "1115",
//        "100000" + Character_Database_Separator + "1115",
//        "25000" + Character_Database_Separator + "1116",
//        "50000" + Character_Database_Separator + "1116",*/
//    ]
//    
//    if TableRow.count == 0
//    {
//        for i : Int in 0 ..< ArrayNominal.count
//        {
//            var ArrayNominalContent : Array<String> = ArrayNominal[i].componentsSeparatedByString(Character_Database_Separator)
//            
//            NominalVariable.SetID(i)
//            NominalVariable.SetNominal(Int(ArrayNominalContent[0])!)
//            NominalVariable.SetBillerCode(ArrayNominalContent[1])
//            NominalVariable.SetState(true)
//            NominalVariable.SetIndex(i)
//            InsertNominal(NominalVariable)
//        }
//    }
//    else
//    {
//        
//    }
//}
//
//func InitializationMenu() -> Void
//{
//    var TableRow : [NSManagedObject] = [NSManagedObject]()
//    TableRow = SelectDatabase(Entity_Menu)
//    let MenuVariable : EntityMenu = EntityMenu.init()
//    var ArrayMenu : Array<String> =
//    [
//        "ButtonAccountInformation" + Character_Database_Separator + "1",
//        "ButtonCheckBalance" + Character_Database_Separator + "1",
//        "ButtonCheckMutation" + Character_Database_Separator + "1",
//        "ButtonTransfer" + Character_Database_Separator + "1",
//        "ButtonPurchase" + Character_Database_Separator + "1",
//        "ButtonPayment" + Character_Database_Separator + "1",
//        "ButtonSetting" + Character_Database_Separator + "1",
//        "ButtonChangePassword" + Character_Database_Separator + "1",
//        "ButtonSourceAccount" + Character_Database_Separator + "1",
//        "ButtonDestinationAccount" + Character_Database_Separator + "1",
//        "ButtonPurchaseSetting" + Character_Database_Separator + "1",
//        "ButtonPaymentSetting" + Character_Database_Separator + "1",
//        "ButtonOtherServices" + Character_Database_Separator + "1",
//        "ButtonInterestRate" + Character_Database_Separator + "1",
//        "ButtonExchangeRate" + Character_Database_Separator + "1",
//        "ButtonAbout" + Character_Database_Separator + "1",
//        "ButtonHelp" + Character_Database_Separator + "1"
//    ]
//    
//    if TableRow.count == 0
//    {
//        for i : Int in 0 ..< ArrayMenu.count
//        {
//            var ArrayMenuContent : Array<String> = ArrayMenu[i].componentsSeparatedByString(Character_Database_Separator)
//            
//            MenuVariable.SetID(i)
//            MenuVariable.SetName(ArrayMenuContent[0])
//            
//            if(Int(ArrayMenuContent[1]) == 1)
//            {
//               MenuVariable.SetState(true)
//            }
//            else
//            {
//                MenuVariable.SetState(false)
//            }
//            
//            InsertMenu(MenuVariable)
//        }
//    }
//    else
//    {
//        
//    }
//}