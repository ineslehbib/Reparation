pageextension 50145 "ProcessCheckListExt" extends "Process Checklist Setup"//25006041
{
    layout
    {
        addafter(ArchiveonDelete)
        {
            field("Bouton Terminer"; Rec."Bouton Terminer") { ApplicationArea = Basic; }
            field("Bouton supprimer"; Rec."Bouton supprimer") { ApplicationArea = Basic; }
            field("Bouton Fissure"; Rec."Bouton Fissure") { ApplicationArea = Basic; }
            field("Bouton Casse"; Rec."Bouton Casse") { ApplicationArea = Basic; }
            field("Bouton Enfoncement"; Rec."Bouton Enfoncement") { ApplicationArea = Basic; }
            field("Bouton Rayure"; Rec."Bouton Rayure") { ApplicationArea = Basic; }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}