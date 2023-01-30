Report 50111 "Print Checklist Dynamique"//25006028
{
    DefaultLayout = RDLC;
    RDLCLayout = '.\SRC\report\rdlc\ChecklistDynamique.rdl';
    Caption = 'Checklist dynamique';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = ALL;
    dataset
    {
        dataitem("Service Header EDMS"; "Service Header EDMS")
        {
            column("Kilométrage"; ServiceHeaderEDMS1."Variable Field Run 1")
            {
            }
            column(ImagePDI; ServiceMgtSetupEDMS."DLT Picture PDI")
            {
            }
            column(LWorkDescription; LWorkDescription)
            {
            }
            column(captionCheckNo; captionCheckNo)
            {
            }
            column(CaptionFinalCheck; CaptionFinalCheck)
            {
            }
            column(caption1; caption1)
            {
            }
            column(Service_Advisor; "Service Advisor")
            {
            }

            column(Arrival_Date; "Arrival Date")
            {
            }
            column(Requested_Finishing_Date; "Requested Finishing Date")
            {
            }
            column(caption2; caption2)
            {
            }
            column(caption3; caption3)
            {
            }
            column(caption4; caption4)
            {
            }
            column(caption5; caption5)
            {
            }
            column(caption6; caption6)
            {
            }
            column(caption7; caption7)
            {
            }
            column(Vehicle_Status_Code; "Vehicle Status Code")
            {
            }
            column(caption8; caption8)
            {
            }
            column(caption9; caption9)
            {
            }
            column(captionKPSN; captionKPSN)
            {
            }
            column(CaptionKeepParts; CaptionKeepParts)
            {
            }
            column(CaptionYesNo; CaptionYesNo)
            {
            }
            column(CAptionActualDElTime; CAptionActualDElTime)
            {
            }
            column(CaptionEstJobTime; CaptionEstJobTime)
            {
            }
            column(CaptionTimeReq; CaptionTimeReq)
            {
            }
            column(CaptionLatestStartTime; CaptionLatestStartTime)
            {
            }
            column(CaptionRevisedTime; CaptionRevisedTime)
            {
            }
            column(DocNo; ServiceHeaderEDMS1."No.")
            {
            }
            column(CaptionTime; CaptionTime)
            {
            }
            column(CaptionJCQC; CaptionJCQC)
            {
            }
            column(CaptionIssueDate; CaptionIssueDate)
            {
            }
            column(CapRegNo; CapRegNo)
            {
            }
            column(CaptionModel; CaptionModel)
            {
            }
            column(CaptionFirstRegDate; CaptionFirstRegDate)
            {
            }
            column(CaptionEstmate; CaptionEstmate)
            {
            }
            column(CaptionRevEstimate; CaptionRevEstimate)
            {
            }
            column(CaptionAuthoBy; CaptionAuthoBy)
            {
            }
            column(CaptionComment; CaptionComment)
            {
            }
            column(CaptionEngineN; CaptionEngineN)
            {
            }
            column(CaptionKm; CaptionKm)
            {
            }
            column(CaptionCustSIgn; CaptionCustSIgn)
            {
            }
            column(CaptionSubCond; CaptionSubCond)
            {
            }
            column(CaptionAddItems; CaptionAddItems)
            {
            }
            column(CaptionSquare1; CaptionSquare1)
            {
            }
            column(CaptionSquareCheckN; CaptionSquareCheckN)
            {
            }
            column(CaptionSquareFCheck; CaptionSquareFCheck)
            {
            }
            column(CaptionInspected; CaptionInspected)
            {
            }
            column(CaptionOther; CaptionOther)
            {
            }
            column(CaptionWAC1; CaptionWAC1)
            {
            }
            column(CaptionWAC2; CaptionWAC2)
            {
            }
            column(CaptionWAC3; CaptionWAC3)
            {
            }
            column(CaptionWAC4; CaptionWAC4)
            {
            }
            column(CaptionWAC5; CaptionWAC5)
            {
            }
            column(CaptionWAC6; CaptionWAC6)
            {
            }
            column(CaptionWAC7; CaptionWAC7)
            {
            }
            column(CaptionPaymentMethod; CaptionPaymentMethod)
            {
            }
            column(CaptionCK1; CaptionCK1)
            {
            }
            column(CaptionCK2; CaptionCK2)
            {
            }
            column(CaptionCK3; CaptionCK3)
            {
            }
            column(CaptionCK4; CaptionCK4)
            {
            }
            column(CaptionFMC1; CaptionFMC1)
            {
            }
            column(CaptionFMC2; CaptionFMC2)
            {
            }
            column(CaptionFMC3; CaptionFMC3)
            {
            }
            column(CaptionFMC4; CaptionFMC4)
            {
            }
            column(Caption_CustInfo; Caption_CustInfo)
            {
            }
            column(Caption_Name; Caption_Name)
            {
            }
            column(Caption_adr; Caption_adr)
            {
            }
            column(Caption_tel; Caption_tel)
            {
            }
            column(Caption_CustrRq; Caption_CustrRq)
            {
            }
            column(Caption_PIIR; Caption_PIIR)
            {
            }
            column(Caption_techRep; Caption_techRep)
            {
            }
            column(CaptionCheck1; CaptionCheck1)
            {
            }
            column(CaptionCheck2; CaptionCheck2)
            {
            }
            column(CaptionCheck3; CaptionCheck3)
            {
            }
            column(CaptionCheck4; CaptionCheck4)
            {
            }

            column(DLT_Fuel; ServiceHeaderEDMS1."DLT Fuel")
            {
            }
            column(CaptionCheck6; CaptionCheck6)
            {
            }
            column(CaptionCheck7; CaptionCheck7)
            {
            }
            column(CaptionCheck8; CaptionCheck8)
            {
            }
            column(Caption_SAname; Caption_SAname)
            {
            }
            column(Caption_ROno; Caption_ROno)
            {
            }
            column(DLT_Type_Booking; "DLT Type Booking")
            {
            }

            column(Caption_Reception_Time; Caption_ReceptionTime)
            {
            }
            column(Caption_DelivTime; Caption_DelivTime)
            {
            }
            column(Caption_residence; Caption_residence)
            {
            }
            column(CompName; CompanyInformation.Name)
            {
            }
            column(Logo; CompanyInformation."Invoice Header Picture")
            {
            }
            column(Footer; CompanyInformation."Invoice Footer Picture")
            {
            }
            column(AdresseCompagny; CompanyInformation.Address)
            {
            }
            column(NomReceptionnaire; NomReceptionnaire)
            {
            }
            column(TimeRequired; ServiceHeaderEDMS1."Total Work (Hours)")
            {
            }
            column(DocumentType_ServiceHeaderEDMS; ServiceHeaderEDMS1."Document Type")
            {
            }
            column(SelltoCustomerNo_ServiceHeaderEDMS; ServiceHeaderEDMS1."Sell-to Customer No.")
            {
            }
            column(No_ServiceHeaderEDMS; ServiceHeaderEDMS1."No.")
            {
            }
            column(BilltoCustomerNo_ServiceHeaderEDMS; ServiceHeaderEDMS1."Bill-to Customer No.")
            {
            }
            column(BilltoName_ServiceHeaderEDMS; ServiceHeaderEDMS1."Bill-to Name")
            {
            }
            column(BilltoName2_ServiceHeaderEDMS; ServiceHeaderEDMS1."Bill-to Name 2")
            {
            }
            column(Address_Customer; ServiceHeaderEDMS1."Bill-to Address")
            {
            }
            column(BilltoAddress2_ServiceHeaderEDMS; ServiceHeaderEDMS1."Bill-to Address 2")
            {
            }
            column(BilltoCity_ServiceHeaderEDMS; ServiceHeaderEDMS1."Bill-to City")
            {
            }
            column(BilltoContact_ServiceHeaderEDMS; ServiceHeaderEDMS1."Bill-to Contact")
            {
            }
            column(YourReference_ServiceHeaderEDMS; ServiceHeaderEDMS1."Your Reference")
            {
            }
            column(OrderDate_ServiceHeaderEDMS; ServiceHeaderEDMS1."Order Date")
            {
            }
            column(PostingDate_ServiceHeaderEDMS; ServiceHeaderEDMS1."Posting Date")
            {
            }
            column(ShipmentDate_ServiceHeaderEDMS; ServiceHeaderEDMS1."Shipment Date")
            {
            }
            column(PostingDescription_ServiceHeaderEDMS; ServiceHeaderEDMS1."Posting Description")
            {
            }
            column(PaymentTermsCode_ServiceHeaderEDMS; ServiceHeaderEDMS1."Payment Terms Code")
            {
            }
            column(RequestedStartingDate_ServiceHeaderEDMS; ServiceHeaderEDMS1."Requested Starting Date")
            {
            }
            column(RequestedStartingTime_ServiceHeaderEDMS; ServiceHeaderEDMS1."Requested Starting Time")
            {
            }
            column(RequestedFinishingDate_ServiceHeaderEDMS; ServiceHeaderEDMS1."Requested Finishing Date")
            {
            }
            column(RequestedFinishingTime_ServiceHeaderEDMS; ServiceHeaderEDMS1."Requested Finishing Time")
            {
            }
            column(DueDate_ServiceHeaderEDMS; ServiceHeaderEDMS1."Due Date")
            {
            }
            column(PaymentDiscount_ServiceHeaderEDMS; ServiceHeaderEDMS1."Payment Discount %")
            {
            }
            column(LocationCode_ServiceHeaderEDMS; ServiceHeaderEDMS1."Location Code")
            {
            }
            column(DocumentDate_ServiceHeaderEDMS; ServiceHeaderEDMS1."Document Date")
            {
            }
            column(SerialNo_Vehicle; Vehicle."Serial No.")
            {
            }
            column(VIN_Vehicle; Vehicle.VIN)
            {
            }
            column(MakeCode_Vehicle; Vehicle."Make Code")
            {
            }
            column(ModelCode_Vehicle; Vehicle."Model Code")
            {
            }
            column(ModelVersionNo_Vehicle; Vehicle."Model Version No.")
            {
            }
            column(ModelCommercialName_Vehicle; Vehicle."Model Commercial Name")
            {
            }
            column(Comment_Vehicle; Vehicle.Comment)
            {
            }
            column(ProductionYear_Vehicle; Vehicle."Production Year")
            {
            }
            column(RegistrationNo_Vehicle; Vehicle."Registration No.")
            {
            }
            column(firstregDateVeh; Vehicle."First Registration Date")
            {
            }
            //  column(EngineNum_Vehicle; Vehicle."Engine Num")
            // {
            // }
            column(Name_Customer; Customer.Name)
            {
            }
            column(Address_Customerc; Customer.Address)
            {
            }
            column(City_Customer; Customer.City)
            {
            }
            column(PhoneNo_Customer; Customer."Phone No.")
            {
            }
            column(TelexNo_Customer; Customer."Telex No.")
            {
            }
            column(EMail_Customer; Customer."E-Mail")
            {
            }
            column(Ville; ServiceHeaderEDMS1."Bill-to City")
            {
            }
            column(afficherPiedsPage; afficherPiedsPage)
            {
            }
            column(Picture1; Picture1.Blob)
            {

            }
            column(pictureno; Picture1."No.")
            {

            }

            trigger OnAfterGetRecord()
            begin
                IF ServiceHeaderEDMS1."Service Advisor" <> '' THEN BEGIN
                    IF SalespersonPurchaser.GET(ServiceHeaderEDMS1."Service Advisor") THEN
                        NomReceptionnaire := SalespersonPurchaser.Name;
                END;

                //read blob
                CALCFIELDS("Work Description");
                "Work Description".CREATEINSTREAM(CommentStream);
                CommentStream.READTEXT(CommentText);
                LWorkDescription := ServiceHeaderEDMS1.GetWorkDescription;
                ProcessChecklistHeader.Reset();
                ProcessChecklistHeader.SetRange("Source ID", "No.");
                ProcessChecklistHeader.SetRange("Source TYPE", database::"Service Header EDMS");
                ProcessChecklistHeader.SetRange("Source Subtype", 1);
                If ProcessChecklistHeader.FindFirst() then begin
                    // Picture.Reset();
                    // Picture.SetRange("Source ID", ProcessChecklistHeader."No.");
                    // Picture.SetRange("Source TYPE", database::"Process Checklist Header");
                    // Picture.SetRange("Vehicle Check List ", True);
                    // If Picture.FindFirst() then
                    //     Picture.CalcFields(Blob);
                end;


            end;

            trigger OnPreDataItem()
            begin

            end;
        }
        dataitem(ItemGHCheckListBuffer; "Checklist Buffer")
        {
            UseTemporary = true;
            column(ReportForNavId_1000000000; 1000000000)
            {
            }
            column(Item_LineNo; ItemGHCheckListBuffer."Line No.")
            {
            }
            column(Item_Type; ItemGHCheckListBuffer.Type)
            {
            }
            column(Item_Caption; ItemGHCheckListBuffer.Caption)
            {
            }
            dataitem(ControlGHCheckListBuffer; "Checklist Buffer")
            {
                DataItemLink = "Parent Line No." = field("Line No.");
                UseTemporary = true;
                column(ReportForNavId_1000000004; 1000000004)
                {
                }
                column(Control_ParentLineNo; ControlGHCheckListBuffer."Parent Line No.")
                {
                }
                column(Control_Value; ControlGHCheckListBuffer.Value)
                {
                }
                column(Control_Color; ControlGHCheckListBuffer.Color)
                {
                }
                column(Control_Caption; ControlGHCheckListBuffer.Caption)
                {
                }
                column(Control_SubType; ControlGHCheckListBuffer."Sub Type")
                {
                }
                column(Control_Selected; ControlGHCheckListBuffer.Selected)
                {
                }
                column(Control_AssistEdit; ControlGHCheckListBuffer."Assist Edit")
                {
                }
                column(Control_Filter; 'True')
                {
                }
            }
        }
        dataitem(ChecklistHeader; "Process Checklist Header")
        {
            UseTemporary = true;
            column(Observations;
            ChecklistHeader.Observations)
            {

            }
            column(ReportForNavId_1000000006; 1000000006)
            {
            }
            column(CH_No; ChecklistHeader."No.")
            {
                IncludeCaption = true;
            }
            column(CH_TemplateCode; ChecklistHeader."Template Code")
            {
                IncludeCaption = true;
            }
            column(CH_VehicleRegNo; ChecklistHeader."Vehicle Registration No.")
            {
                IncludeCaption = true;
            }
            column(CH_LocationCode; ChecklistHeader."Location Code")
            {
                IncludeCaption = true;
            }
            column(CH_ProcessStatus; ChecklistHeader."Process Status")
            {
                IncludeCaption = true;
            }
            column(CH_ConfirmedByAdvisor; ChecklistHeader."Confirmed by Advisor")
            {
                IncludeCaption = true;
            }
            column(CH_Filter; 'True')
            {
            }
            column(CH_VehicleDescription; ChecklistHeader.VehicleDescription)
            {
            }
            column(CustomerSignatureImage; "Customer Signature Image")
            {
            }
            column(CustomerSignatureName; "Customer Signature Text")
            {
            }
            column(EmployeeSignatureImage; "Employee Signature Image")
            {
            }
            column(EmployeeSignatureName; "Employee Signature Text")
            {
            }
            column(ServicePersonNameCaption; ServicePesronNameLbl)
            {
            }
            column(ServicePersonSignatureCaption; ServicePersonSignatureLbl)
            {
            }
            column(CustomerNameCaption; CustomerNameLbl)
            {
            }
            column(CustomerSignatureCaption; CustomerSignatureLbl)
            {
            }
            // column(id; checklistheader."Source ID")
            // {
            // }
            dataitem(Picture; Picture)
            {
                DataItemLink = "Source ID" = field("No.");
                DataItemTableView = where("Source Type" = const(25006025), "Source Subtype" = const("1"), "Source Ref. No." = const(0));
                column(ReportForNavId_1000000028; 1000000028)
                {
                }
                column(Image; Picture.Blob)
                {
                }
                column(PIC_Filter; 'True')
                {
                }
            }
        }
        dataitem(CompanyInformation; "Company Information")
        {
            CalcFields = Picture, "Invoice Header Picture", "Invoice Footer Picture", "Invoice Disclaimer Picture";
            column(ReportForNavId_1000000022; 1000000022)
            {
            }
            column(CI_Picture; Picture)
            {
            }
            column(CI_InvoiceHeaderPicture; "Invoice Header Picture")
            {
            }
            column(CI_InvoiceFooterPicture; "Invoice Footer Picture")
            {
            }
            column(CI_InvoiceDisclaimerPicture; "Invoice Disclaimer Picture")
            {
            }
            column(CI_Filter; 'True')
            {
            }
            column(Setup_CheckBoxChecked; ProcessChecklistSetup."CheckBox Checked")
            {
            }
            column(Setup_CheckBoxUnchecked; ProcessChecklistSetup."CheckBox Unchecked")
            {
            }
            column(Setup_PrintPictures; PrintPictures)
            {
            }
            column(picture2; Pict.Blob)
            {

            }



            trigger OnAfterGetRecord()
            begin

                ProcessChecklistSetup.Get;
                ProcessChecklistSetup.CalcFields("CheckBox Checked", "CheckBox Unchecked");

                Pict.Reset();
                Pict.SetRange("Source ID", ChecklistHeader."No.");
                Pict.SetRange("Source TYPE", 25006025);
                Pict.SetRange("Vehicle Check List ", true);
                If Pict.FindFirst() then
                    Pict.CalcFields(Blob);


            end;


        }


    }


    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(PrintPictures; PrintPictures)
                    {
                        ApplicationArea = Basic;
                        Caption = 'Print Pictures';
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }
    trigger OnPreReport()
    begin
        CompanyInformation.GET;
        CompanyInformation.CALCFIELDS(CompanyInformation.Picture, CompanyInformation."Invoice Footer Picture");
        CompanyInformation.CALCFIELDS(CompanyInformation."Invoice Header Picture");
        ServiceMgtSetupEDMS.GET;
        ServiceMgtSetupEDMS.CALCFIELDS(ServiceMgtSetupEDMS."DLT Picture PDI");
    end;


    var
        ServiceHeaderEDMS1: Record "Service Header EDMS";
        ServiceHeaderEDMS: Record "Service Header EDMS";
        ProcessChecklistSetup: Record "Process Checklist Setup";
        PrintPictures: Boolean;
        Pict: Record Picture;
        ServicePesronNameLbl: label 'Service Person Name, Surname';
        ServicePersonSignatureLbl: label 'Service Person Signature';
        CustomerNameLbl: label 'Customer Name, Surname';
        CustomerSignatureLbl: label 'Customer Person Signature';

        CompanyInformation1: Record 79;
        Caption_CustInfo: Label 'Customer Information';
        Caption_Name: Label 'Name';
        Caption_adr: Label 'Address';
        Caption_tel: Label 'Tel No';
        Caption_CustrRq: Label 'Customer''s Request';
        Caption_PIIR: Label '(Prime item if required)';
        Caption_techRep: Label 'Technician''s report';
        language: Record 8;
        [InDataSet]
        UseCustomerLanguage: Boolean;
        lCustomer: Record 18;
        Picture1: Record Picture;
        DisplayLanguage: Code[10];
        CaptionCheck1: Label 'Repeat Visit';
        CaptionCheck2: Label 'While you Wait';
        CaptionCheck3: Label 'Internal';
        CaptionCheck4: Label 'Walk-In';
        CaptionCheck5: Label 'Maintenance';
        CaptionCheck6: Label 'Repair';
        CaptionCheck7: Label 'Warranty';
        CaptionCheck8: Label 'Appointment';
        Caption_SAname: Label 'S.A. Name';
        Caption_ROno: Label 'R/O No';
        Caption_ReceptionTime: Label 'Reception Time';
        Caption_DelivTime: Label 'Delivery Time';
        Caption_residence: Label 'Residence';
        CaptionPaymentMethod: Label 'Payment Method';
        CaptionCK1: Label 'Credit Card VISA';
        CaptionCK2: Label 'Cash';
        CaptionCK3: Label 'Account';
        CaptionCK4: Label 'Others';
        CaptionWAC1: Label 'Spare Wheel';
        CaptionWAC2: Label 'Jack & Handle';
        CaptionWAC3: Label 'Tools';
        CaptionWAC4: Label 'Spot Light';
        CaptionWAC5: Label 'Mats';
        CaptionWAC6: Label 'Keys';
        CaptionWAC7: Label 'Radio & Cassette';
        CaptionFMC1: Label 'Good';
        CaptionFMC2: Label 'Non-Geninue';
        CaptionFMC3: Label 'No Good';
        CaptionFMC4: Label 'Double Mats';
        CaptionOther: Label 'Other';
        CaptionCustSIgn: Label 'Customer''s Signature';
        CaptionSubCond: Label 'subject to conditions';
        CaptionAddItems: Label 'Additional Items found during the Work';
        CaptionSquare1: Label 'Job Card Quality Check';
        CaptionSquareCheckN: Label 'Check No.';
        CaptionSquareFCheck: Label 'Final Check';
        CaptionInspected: Label 'Inspected By';
        CaptionEstmate: Label 'Estimate';
        CaptionRevEstimate: Label 'Revised Estimate';
        CaptionAuthoBy: Label 'Authorized By';
        CaptionComment: Label 'Comment';
        CaptionEngineN: Label 'Engine Number';
        CaptionKm: Label 'Mileage (Kms)';
        CaptionFirstRegDate: Label 'First Registration Date';
        CaptionModel: Label 'Model Code';
        CapRegNo: Label 'Registration Number';
        CaptionIssueDate: Label 'R/O Issue Date';
        CaptionJCQC: Label 'Job Card Quality Check';
        CaptionTime: Label 'Time';
        Customer: Record 18;
        Vehicle: Record 25006005;
        CaptionRevisedTime: Label 'Revised Deliver Time';
        CaptionTimeReq: Label 'Time Required';
        CaptionEstJobTime: Label 'Estimated Job Time';
        CaptionLatestStartTime: Label 'Latest Start Time';
        NomReceptionnaire: Text;
        SalespersonPurchaser: Record 13;
        CAptionActualDElTime: Label 'Actual Delivery Time';
        CaptionYesNo: Label 'Yes / No';
        CaptionKeepParts: Label 'Kepp Parts';
        captionKPSN: Label 'Key/Parking Stall Number';
        caption1: Label 'Diagnosis';
        caption2: Label 'Start Time';
        caption3: Label 'Finish Date';
        caption4: Label 'Nom Dig./Tec.';
        caption5: Label 'Dig./Report No';
        caption6: Label 'Pre-Delivery';
        caption8: Label 'Post-Service Follow - up Preferense';
        caption7: Label 'Final Inspection Done BY';
        caption9: Label 'Job Resl. Expl.Done BY';
        captionCheckNo: Label 'Check No';
        CaptionFinalCheck: Label ' Final Check';
        LWorkDescription: Text;
        CommentStream: InStream;
        CommentText: Text;
        Item1: Record 27;
        ServiceMgtSetupEDMS: Record 25006120;
        afficherPiedsPage: Boolean;
        ProcessChecklistHeader: Record "Process Checklist Header";


    [Scope('OnPrem')]
    procedure FillItemCheckList(var GHCheckList: Record "Checklist Buffer")
    begin
        GHCheckList.Reset;
        GHCheckList.SetFilter(Type, '%1|%2', GHCheckList.Type::Group, GHCheckList.Type::Item);
        if GHCheckList.FindFirst then
            repeat
                ItemGHCheckListBuffer.Init;
                ItemGHCheckListBuffer := GHCheckList;
                ItemGHCheckListBuffer.Insert;
            until GHCheckList.Next = 0;

        GHCheckList.Reset;
        GHCheckList.SetFilter(Type, '<>%1', GHCheckList.Type::Group);
        GHCheckList.SetFilter(Type, '<>%1', GHCheckList.Type::Item);
        if GHCheckList.FindFirst then
            repeat
                ControlGHCheckListBuffer.Init;
                ControlGHCheckListBuffer := GHCheckList;
                ControlGHCheckListBuffer.Insert;
            until GHCheckList.Next = 0;
    end;

    [Scope('OnPrem')]
    procedure SetCheckListHeader(ProcessChecklistHeaderToSet: Record "Process Checklist Header")
    begin
        ChecklistHeader.DeleteAll;
        ChecklistHeader.Init;
        ProcessChecklistHeaderToSet.CalcFields("Employee Signature Image", "Customer Signature Image");
        ChecklistHeader := ProcessChecklistHeaderToSet;
        ChecklistHeader.Insert;
        ServiceHeaderEDMS1.Init;
        ServiceHeaderEDMS1.SetRange("No.", ChecklistHeader."Source ID");
        ServiceHeaderEDMS1.SetRange("Document Type", 1);
        If (ServiceHeaderEDMS1.FindFirst()) then;
        IF ServiceHeaderEDMS1."Service Advisor" <> '' THEN BEGIN
            IF SalespersonPurchaser.GET(ServiceHeaderEDMS1."Service Advisor") THEN
                NomReceptionnaire := SalespersonPurchaser.Name;
        END;
        IF Vehicle.GET(ServiceHeaderEDMS1."Vehicle Serial No.") THEN;
        IF Customer.GET(ServiceHeaderEDMS1."Sell-to Customer No.") THEN;

    end;


}

