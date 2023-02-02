tableextension 50138 "ExtCheckList" extends "Process Checklist Header" //25006025
{
    fields
    {
        field(50101; "Observations"; Text[200])
        {

        }
        field(50102; "Fuel"; Option)
        {
            OptionMembers = " ","1/4","1/2","3/4","Full";
            CaptionML = ENU = 'Fuel', FRA = 'Carburant';
            OptionCaptionMl = FRA = ' ,1/4,1/2,3/4,Plein';
            Editable = true;
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
            begin

            end;
        }
        field(50103; "Kilometrage"; Decimal)
        {
            BlankZero = true;
            CaptionClass = '7,25006145,25006180';
            DecimalPlaces = 0 : 0;
            Editable = true;
            DataClassification = ToBeClassified;
            trigger OnValidate()

            begin

            end;
        }
        field(50104; "DescriptionDuTravail"; Blob)
        {
            trigger OnValidate()

            begin

            end;
        }

    }
    [Scope('OnPrem')]
    procedure SetWorkDescription(NewWorkDescription: Text)
    var
        OutStreamData: OutStream;
    begin
        Clear("DescriptionDuTravail");
        if NewWorkDescription = '' then
            exit;

        "DescriptionDuTravail".CreateOutStream(OutStreamData, TextEncoding::UTF8);
        OutStreamData.WriteText(NewWorkDescription);
        Modify;
    end;

    [Scope('OnPrem')]
    procedure GetWorkDescription(): Text
    var
        //TempBlob: Record TempBlob temporary;
        InStreamData: InStream;
        Description: Text;
        TypeHelper: Codeunit "Type Helper";
    begin
        CalcFields("DescriptionDuTravail");
        "DescriptionDuTravail".CreateInstream(InStreamData, Textencoding::UTF8);
        exit(TypeHelper.ReadAsTextWithSeparator(InStreamData, TypeHelper.LFSeparator));

    end;

    trigger OnAfterInsert()

    begin
        UpdateChecklistFromOr();
    end;


    trigger OnAfterModify()
    begin
        UpdateOrFromChechlist;
    end;

    Procedure UpdateOrFromChechlist()
    var
        lServiceHeaderEDMS: Record "Service Header EDMS";
        lProcessChecklist: Record "Process Checklist Header";
        Processcheck: Record "Process Checklist Header";
        ExistChangeFuel: Boolean;
        ExistChangeKM: Boolean;
        ExistChangeDes: Boolean;
        Tdes: text;
        Tdesold: text;
    begin
        Tdes := '';
        Clear(lServiceHeaderEDMS);
        clear(lProcessChecklist);

        if not lServiceHeaderEDMS.get(rec."Source Subtype", rec."Source ID") then
            exit;
        if (rec.Fuel <> xrec.Fuel) then begin
            ExistChangeFuel := true;
            lServiceHeaderEDMS.Validate("DLT Fuel", Rec.Fuel);
        end;

        if (rec.Kilometrage <> xrec.Kilometrage) then begin
            ExistChangeKM := true;
            lServiceHeaderEDMS.Validate("Variable Field Run 1", Rec.Kilometrage);
        end;

        Tdes := rec.GetWorkDescription;

        if (Tdes <> '') then begin
            ExistChangeDes := true;
            lServiceHeaderEDMS.SetWorkDescription(Tdes);
        end;

        if (ExistChangeFuel or ExistChangeKM or ExistChangeDes) then
            lServiceHeaderEDMS.Modify(true);

        lProcessChecklist.Reset();
        lProcessChecklist.setrange("Source Subtype", rec."Source Subtype");
        lProcessChecklist.setrange("Source ID", rec."Source ID");
        lProcessChecklist.SetFilter("No.", '<>%1', rec."No.");
        lProcessChecklist.SetFilter("process status", '<>%1', lProcessChecklist."process status"::Completed);
        if lProcessChecklist.FindFirst() then
            repeat
                if ExistChangeFuel then
                    lProcessChecklist.validate("Fuel", Rec.Fuel);
                if ExistChangeKM then
                    lProcessChecklist.Validate("Kilometrage", Rec.Kilometrage);
                if ExistChangeDes then
                    lProcessChecklist.SetWorkDescription(Tdes);
                if (ExistChangeFuel or ExistChangeKM or ExistChangeDes) then
                    lProcessChecklist.Modify();
            until (lProcessChecklist.Next() = 0);
    end;

    Procedure UpdateChecklistFromOr()
    var
        lServiceHeaderEDMS: Record "Service Header EDMS";
        t: Text;
    begin
        Clear(lServiceHeaderEDMS);
        if not lServiceHeaderEDMS.get(rec."Source Subtype", rec."Source ID") then
            exit;
        rec.Fuel := lServiceHeaderEDMS."DLT Fuel";
        rec.Kilometrage := lServiceHeaderEDMS."Variable Field Run 1";
        t := lServiceHeaderEDMS.GetWorkDescription();
        rec.SetWorkDescription(t);
        modify;
    end;

    var
        ServiceHeaderEDMS: Record "Service Header EDMS";
}
