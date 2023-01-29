pageextension 50148 "CheckListExt" extends "Checklist Card"  //25006104
{

    layout
    {
        addbefore(Details)
        {
            field(Observations; Rec.Observations)
            {
                MultiLine = true;
                Width = 200;
            }
        }

        addafter(CheckList)
        {
            group("Rapport d'état de véhicule")
            {
                usercontrol(RV; "RV HTML")
                {
                    ApplicationArea = All;
                    trigger ControlReady()
                    var
                        Picture: Record "Picture";
                        CamerMgt: Codeunit "Camera Mgt";
                    begin
                        CurrPage.RV.Render(Html());
                        //   CamerMgt.CreatePictureBySource('descr', '', rec., rec."Source Subtype", rec."No.", 0, rec."Vehicle Serial No.", Picture);
                    end;

                    trigger save(image: Text)
                    var
                        Picture: Record "Picture";
                        CamerMgt: Codeunit "Camera Mgt";
                        image1: Text;

                    begin


                        Picture.SetRange("Source ID", rec."No.");
                        Picture.SetRange("Source TYPE", database::"Process Checklist Header");
                        Picture.SetRange("Vehicle Check List ", true);
                        Picture.DeleteAll();

                        Picture.Init();
                        Picture.Reset();

                        CamerMgt.CreatePictureBySource('descr', '', 25006025, rec."Source Subtype", rec."No.", 0, rec."Vehicle Serial No.", Picture);
                        Picture."Vehicle Check List " := true;
                        rec.Modify();
                        BLOBImport(Picture, '', image);


                    end;



                }
            }
        }
        // Add changes to page layout here
    }

    actions
    {
        modify("Print CheckList")
        {
            Visible = false;
        }
        modify(EmailSign)
        {
            Visible = false;
        }

        addbefore("Take a Picture")
        {
            action("Imprimer Checklist")
            {
                ApplicationArea = Basic;
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    PrintCheckList: Report "Print Checklist Dynamique";
                    GHCheckListBuffer: Record "Checklist Buffer" temporary;
                begin
                    GHCheckListAddInManagement.FillCheckList(Rec, GHCheckListBuffer);
                    PrintCheckList.FillItemCheckList(GHCheckListBuffer);
                    PrintCheckList.SetCheckListHeader(Rec);
                    PrintCheckList.Run;
                end;
            }

            action("Prendre photo")
            {
                ApplicationArea = Basic;
                Image = Camera;
                Promoted = true;
                PromotedCategory = New;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    CameraOptions: dotnet CameraOptions;
                begin
                    CameraOptions := CameraOptions.CameraOptions();
                    CameraOptions.Quality := 50;
                    Camera.RequestPictureAsync(CameraOptions);

                end;
            }

            action("Test photo")
            {
                ApplicationArea = Basic;
                Image = Camera;
                Promoted = true;
                PromotedCategory = New;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    TestCamera: Page "TestCamera";
                begin
                    TestCamera.run();
                end;
            }


        }



        modify("Upload Picture")
        {
            Visible = false;
        }

        modify(PrintSign)
        {
            Promoted = false;
        }
        moveafter(EmailSign; PrintSign)



        addafter(ArchiveDocument)
        {
            action(ImprimerEtSigner)
            {
                Promoted = true;
                PromotedCategory = New;
                PromotedOnly = true;
                ApplicationArea = Basic;
                Caption = 'Imprimer Et Signer';
                Image = Signature;


                PromotedIsBig = true;

                trigger OnAction()

                begin
                    CallSignAndPrintPageChecklistDynamique(Rec);
                end;
            }

        }


    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        if Camera.IsAvailable then begin
            Camera := Camera.Create;
            CameraAvailable := true;
        end;
    end;

    local procedure GetTimeStampForFileName(): Text
    begin
        exit(Format(CurrentDatetime, 0, '<Year,2><Month,2><Day,2><Hours24,2><Minutes,2><Seconds,2><Thousands,3>'));
    end;

    local procedure SaveToFile(ServerFilePath: Text; ClientFileName: Text) ClientFilePath: Text
    var
        FileManagement: Codeunit "File Management";
        UserSetup: Record "User Setup";
    begin
        UserSetup.Get(UserId);
        if UserSetup."Signed Document Path" <> '' then begin
            ClientFilePath := UserSetup."Signed Document Path" + ClientFileName;
            //FileManagement.DownloadToFile(ServerFilePath,ClientFilePath);
            FileManagement.CopyServerFile(ServerFilePath, ClientFilePath, true);
        end;
    end;

    [Scope('OnPrem')]
    procedure CallSignAndPrintPageChecklistDynamique(var Rec: Record "Process Checklist Header")
    var
        DocMgt: Codeunit DocumentManagementDMS;
        DocReport: Record "Document Report";
        CustomReportSelection: Record "Custom Report Selection";
        AttachmentFilePath: Text[250];
        AttachmentFileName: Text[150];
        DocumentMailing: Codeunit "Document-Mailing";
        FileManagement: Codeunit "File Management";
        PreviewAndSign: Page "Preview And Sign";
        ChecklistHeader: Record "Process Checklist Header";
        RepSelect: Record "Document Report";
        RepCount: Integer;
        TimeStampForFileName: Text;
        CompanyInfo: Record "Company Information";
    begin
        Rec.SetRange("No.", Rec."No.");
        //RepSelect.RESET;
        //DocMgt.PrintCurrentDoc(3, 3, 14, RepSelect);
        //RepSelect.SETRANGE("Customer Signature",TRUE);
        //RepCount := RepSelect.COUNT;
        //IF RepCount = 0 THEN
        //  EXIT;

        //IF RepCount > 1 THEN BEGIN
        //  IF PAGE.RUNMODAL(PAGE::"Document Reports-Selection",RepSelect) <> ACTION::LookupOK THEN
        //    EXIT;
        //END ELSE
        //  RepSelect.FINDFIRST;

        TimeStampForFileName := GetTimeStampForFileName;
        AttachmentFilePath := SaveChecklistHeaderReportAsPdf(Rec);
        AttachmentFileName := StrSubstNo('File.pdf', 'Checklist', Rec."No.", TimeStampForFileName);
        Commit;

        PreviewAndSign.SetValues('Checklist', Rec."No.", AttachmentFilePath, AttachmentFileName, 'OrdreDeRepa.pdf', 'OrdreDeRepa.pdf', 'CUSTOMER');
        if PreviewAndSign.RunModal = Action::OK then begin
            if ChecklistHeader.Get(Rec."No.") then begin
                ChecklistHeader."Customer Signature Text" := PreviewAndSign.GetName();
                ChecklistHeader.Modify;
                Commit;
            end;
        end;
        //IF RepSelect."Employee Signature" THEN BEGIN
        Clear(PreviewAndSign);
        PreviewAndSign.SetValues('Checklist', Rec."No.", AttachmentFilePath, AttachmentFileName, 'OrdreDeRepa.pdf', 'OrdreDeRepa.pdf', 'EMPLOYEE');
        if PreviewAndSign.RunModal = Action::OK then begin
            if ChecklistHeader.Get(Rec."No.") then begin
                ChecklistHeader."Employee Signature Text" := PreviewAndSign.GetName();
                ChecklistHeader.Modify;
                Commit;
            end;
        end;
        //END;

        Rec.Get(Rec."No.");

        AttachmentFilePath := SaveChecklistHeaderReportAsPdf(Rec);
        AttachmentFileName := StrSubstNo('OrdreDeRepa.pdf', 'OrdreDeRepa.pdf', Rec."No.", TimeStampForFileName);
        ChecklistHeader.AddLink(SaveToFile(AttachmentFilePath, AttachmentFileName), AttachmentFileName);//SignedDocLinkLbl
        FileManagement.DownloadHandler(AttachmentFilePath, 'OrdreDeRepa.pdf', '', 'OrdreDeRepa.pdf', AttachmentFileName);


        if ChecklistHeader.Get(Rec."No.") then begin
            Clear(ChecklistHeader."Customer Signature Image");
            Clear(ChecklistHeader."Customer Signature Text");
            Clear(ChecklistHeader."Employee Signature Image");
            Clear(ChecklistHeader."Employee Signature Text");
            ChecklistHeader.Modify;
        end;
    end;

    procedure SaveChecklistHeaderReportAsPdf(var ChecklistHeader: Record "Process Checklist Header"): Text[250]
    var
        FileManagement: Codeunit "File Management";
        ServerAttachmentFilePath: Text;
        PrintChecklist: Report "Print Checklist Dynamique";
        GHCheckListBuffer: Record "Checklist Buffer" temporary;
        GHCheckListAddInManagement: Codeunit "Checklist AddIn Management";
    begin
        ServerAttachmentFilePath := FileManagement.ServerTempFileName('pdf');
        //REPORT.SAVEASPDF(ReportId,ServerAttachmentFilePath,ChecklistHeader);

        GHCheckListAddInManagement.FillCheckList(ChecklistHeader, GHCheckListBuffer);
        PrintChecklist.FillItemCheckList(GHCheckListBuffer);
        PrintChecklist.SetCheckListHeader(ChecklistHeader);
        PrintChecklist.SaveAsPdf(ServerAttachmentFilePath);

        if not Exists(ServerAttachmentFilePath) then
            Error(ServerSaveAsPdfFailedErr);

        exit(ServerAttachmentFilePath);
    end;

    procedure Html(): Text
    var
        out: Text;
    begin

        out := '<!DOCTYPE html>   ';
        out += '<html lang="en">    ';
        out += '<head>    ';
        out += '<meta charset="UTF-8">    ';
        out += '<meta name="viewport" content="width=device-width, initial-scale=1.0">    ';
        out += '<meta http-equiv="X-UA-Compatible" content="ie=edge">    ';
        out += '<title>Réparation</title>   ';
        out += '</head>    ';
        out += '<body style="width: 550px;" id="capture" > ';
        out += '<center><table> ';
        out += '<tr> ';
        out += '<td> ';

        out += '  ';
        out += '<button  onClick="reset();" style="cursor:pointor;" class="button-19"><img  height="40" width="30" src="http://www.clker.com/cliparts/4/7/F/F/w/I/trash-red.svg.hi.png" > </button>';
        out += '<button id="fissure" onClick="fissure();" style="margin-left: 10px !important;width:80px;display:inline-block;" class="button-19"class="button-19">Fissure<br><img height="20" width="20" id="picture1" src="https://github.com/ineslehbib/Reparation/blob/master/4-removebg-preview.png?raw=true"> </button>';
        out += '<button id="rayure" onClick="rayure();" style="margin-left: 10px !important;width:80px;display:inline-block;" onClick=""  class="button-19">Rayure<br><img  height="20" width="20" src="https://github.com/ineslehbib/Reparation/blob/master/1-removebg-preview.png?raw=true" > </button> ';
        out += '<button id="rayure"onClick="enfoncement();" style="margin-left: 10px !important;width:100px;display:inline-block;" onClick=""  class="button-19">Enfoncement <br><img  height="20" width="20" src="https://github.com/ineslehbib/Reparation/blob/master/3-removebg-preview.png?raw=true" > </button> ';
        out += '<button id="rayure" onClick="casse();" style="margin-left: 10px !important;width:80px;display:inline-block;" onClick=""  class="button-19">Casse<br><img  height="20" width="20" src="https://github.com/ineslehbib/Reparation/blob/master/2-removebg-preview.png?raw=true" > </button>';
        out += '<button  onClick="shotit();" style="cursor:pointor;margin-left: 10px !important;" class="button-19"><img  height="40" width="30" src="http://assets.stickpng.com/thumbs/5aa78e267603fc558cffbf1a.png" > </button>';
        out += '';
        out += '</td> </tr><tr>';
        out += '<td> ';
        out += '<div style="text-align:center;margin-top:5px;float: center;" class="image-map-container" >   ';
        out += '<img  height="500" width="350"  src="https://github.com/ineslehbib/Reparation/blob/master/V3Final.png?raw=true" id="voiture" >';
        out += '</div>  ';
        out += '  ';
        out += '</td> </tr>';
        out += '</tr> ';
        out += '<tr> ';
        out += '<td colspan="2"> ';
        out += '<center> ';
        out += '<div  style="margin-left:30px;margin-top:0px;cursor: pointer;width: 150px !important; "id ="zone">   ';
        out += '</div> ';
        out += '</center> ';
        out += '</td> ';
        out += '</tr> ';
        out += '</table> </center>';

        out += '</body>    ';
        out += '</html>    ';
        exit(out);
    end;

    procedure BLOBImport(var PictureRef: Record Picture temporary; Name: Text; image: Text): Boolean
    var
        NVInStream: InStream;
        NVOutStream1: OutStream;
        NVOutStream2: OutStream;
        UploadResult: Boolean;
        ErrorMessage: Text;
        Bitmap: dotnet Bitmap;
        ImageFormat: dotnet ImageFormat;
        AspectRatio: Decimal;
        Width: Integer;
        Height: Integer;
        MaintainAspectRatio: Boolean;
        PictureMgtSetup: Record "Picture Mgt. Setup";
        imgtoken: JsonToken;

        OutStream: OutStream;
        InsTream: InStream;
        TempBlob: Record TempBlob temporary;
    begin
        ClearLastError;
        // There is no way to check if NVInStream is null before using it after calling the
        // UPLOADINTOSTREAM therefore if result is false this is the only way we can throw the error.
        // UploadResult := UploadIntoStream(Text007,'',Text009,Name,NVInStream);
        //NVOutStream1.WriteText(image);
        TempBlob.FromBase64String(image.Remove(1, 22));
        TempBlob.Insert;
        TempBlob.Blob.CreateInStream(InsTream);

        // BufferImage.Picture.CreateOutStream(OutStream);
        // CopyStream(OutStream, InsTream);

        PictureRef.Blob.CreateOutstream(NVOutStream1);
        PictureRef.Thumbnail.CreateOutstream(NVOutStream2);
        CopyStream(NVOutStream1, InsTream);

        Width := PictureMgtSetup."Thumbnail Width";
        Height := PictureMgtSetup."Thumbnail Height";
        if (Width = 0) or (Height = 0) then begin
            Width := 300;
            Height := 300;
        end;
        MaintainAspectRatio := true;
        Bitmap := Bitmap.Bitmap(InsTream);

        if (Width >= Bitmap.Width) or (Height >= Bitmap.Height) then
            Error(LargerImageErr);

        if Bitmap.Width / Width < Bitmap.Height / Height then
            AspectRatio := Bitmap.Width / Width
        else
            AspectRatio := Bitmap.Height / Height;

        if MaintainAspectRatio then begin
            Height := ROUND(Bitmap.Height / AspectRatio, 1);
            Width := ROUND(Bitmap.Width / AspectRatio, 1);
        end;
        Bitmap := Bitmap.Bitmap(Bitmap, Width, Height);
        Bitmap.Save(NVOutStream2, ImageFormat.Jpeg);

        PictureRef.Description := CopyStr(Name, 1, MaxStrLen(PictureRef.Description));

        PictureRef.Modify(true);
        //EXIT(Name)

        ErrorMessage := GetLastErrorText;
        if ErrorMessage <> '' then
            Error(ErrorMessage);

        exit(UploadResult);
    end;

    var
        GHCheckListAddInManagement: Codeunit "Checklist AddIn Management";

        Text007: label 'Import';

        Camera: dotnet CameraProvider;
        CameraAvailable: Boolean;
        Text009: label 'Image files|*.bmp;*.emf;*.gif;*.ico;*.jpg;*.jpeg;*.png;*.tiff;*.wmf';
        NoLinkEntityFoundErr: label 'No data Entity found to link pictures to.';
        LargerImageErr: label 'Can''t make image larger than it is.';
        ServerSaveAsPdfFailedErr: label 'Cannot open the document because it is empty or cannot be created.';



}

