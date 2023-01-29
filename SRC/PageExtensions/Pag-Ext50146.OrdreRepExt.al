pageextension 50146 OrdreRéparationExt extends "Service Order EDMS"
{
    layout
    {


    }

    actions
    {

        addafter(Comments)
        {

            action(ProcessChecklist)
            {
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                ApplicationArea = Basic;
                Caption = 'Process Checklists';
                Image = CheckList;
                RunObject = Page "Process Checklist List";
                RunPageLink = "Source Type" = const(25006145),
                                  "Source Subtype" = field("Document Type"),
                                  "Source ID" = field("No.");
            }

        }
    }

    var
        myInt: Integer;
}