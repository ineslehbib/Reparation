tableextension 50140 "ChecklistExt" extends "Process Checklist Setup"//25006009
{
    fields
    {
        field(150; "Bouton supprimer"; Blob)
        {
            Caption = 'Bouton Supprimer';
            DataClassification = ToBeClassified;
            SubType = Bitmap;
        }
        field(210; "Bouton Terminer"; Blob)
        {
            Caption = 'Bouton Valider';
            DataClassification = ToBeClassified;
            SubType = Bitmap;
        }
        field(170; "Bouton Fissure"; Blob)
        {
            Caption = 'Bouton Fissure';
            DataClassification = ToBeClassified;
            SubType = Bitmap;
        }
        field(180; "Bouton Rayure"; Blob)
        {
            Caption = 'Bouton Rayure';
            DataClassification = ToBeClassified;
            SubType = Bitmap;
        }
        field(190; "Bouton Enfoncement"; Blob)
        {
            Caption = 'Bouton Enfoncement';
            DataClassification = ToBeClassified;
            SubType = Bitmap;
        }
        field(200; "Bouton Casse"; Blob)
        {
            Caption = 'Bouton Casse';
            DataClassification = ToBeClassified;
            SubType = Bitmap;
        }

    }

    var
        myInt: Integer;
}