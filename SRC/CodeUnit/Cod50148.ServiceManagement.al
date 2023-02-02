codeunit 50148 "Service Management"
{

    [EventSubscriber(ObjectType::Table, Database::"Service Header EDMS", 'OnafterValidateEvent', 'DLT Fuel', False, false)]
    local procedure OnafterValidateEventfuel(var Rec: Record "Service Header EDMS")
    var

    begin
        UpdateOhechlist(rec, false, true, false);
    end;

    [EventSubscriber(ObjectType::Table, Database::"Service Header EDMS", 'OnafterValidateEvent', 'Variable Field Run 1', False, false)]
    local procedure OnafterValidateEventKilometrage(var Rec: Record "Service Header EDMS")
    var

    begin
        UpdateOhechlist(rec, false, false, true);
    end;

    [EventSubscriber(ObjectType::Page, Page::"Service Order EDMS", 'OnafterValidateEvent', 'Control25006019', False, false)]
    local procedure OnafterValidateEventDescription(var Rec: Record "Service Header EDMS")
    var

    begin
        UpdateOhechlist(rec, true, false, false);
    end;


    Procedure UpdateOhechlist(var PServiceHeaderEDMS: Record "Service Header EDMS"; ExistChangeDes: Boolean; ExistChangeFuel: Boolean; ExistChangeKM: Boolean)
    var
        lProcessChecklist: Record "Process Checklist Header";
        Tdes: text;
    begin

        if not (ExistChangeFuel or ExistChangeKM or ExistChangeDes) then
            exit;

        Tdes := '';

        clear(lProcessChecklist);
        lProcessChecklist.Reset();
        lProcessChecklist.setrange("Source Subtype", PServiceHeaderEDMS."Document Type");
        lProcessChecklist.setrange("Source ID", PServiceHeaderEDMS."No.");
        lProcessChecklist.SetFilter("process status", '<>%1', lProcessChecklist."process status"::Completed);
        if lProcessChecklist.FindFirst() then
            repeat
                if ExistChangeFuel then
                    lProcessChecklist.validate("Fuel", PServiceHeaderEDMS."DLT Fuel");
                if ExistChangeKM then
                    lProcessChecklist.Validate("Kilometrage", PServiceHeaderEDMS."Variable Field Run 1");
                if ExistChangeDes then begin
                    Tdes := PServiceHeaderEDMS.GetWorkDescription;
                    lProcessChecklist.SetWorkDescription(Tdes);
                end;
                if (ExistChangeFuel or ExistChangeKM or ExistChangeDes) then
                    lProcessChecklist.Modify();
            until (lProcessChecklist.Next() = 0);
    end;

}