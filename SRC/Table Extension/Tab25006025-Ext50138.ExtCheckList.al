tableextension 50138 "ExtCheckList" extends "Process Checklist Header" //25006025
{
    fields
    {
        field(50101; "Observations"; Text[200]) { }
        field(50102; "Fuel"; Option)
        {
            OptionMembers = " ","1/4","1/2","3/4","Full";
            CaptionML = ENU = 'Fuel', FRA = 'Carburant';
            OptionCaptionMl = FRA = ' ,1/4,1/2,3/4,Plein';
            Editable = true;
            FieldClass = FlowField;
            CalcFormula = lookup("Service Header EDMS"."DLT Fuel" where("No." = field("Source ID")));

        }
        field(50103; "Variable Field Run 2"; Decimal)
        {
            BlankZero = true;
            CaptionClass = '7,25006145,25006180';
            DecimalPlaces = 0 : 0;
            Editable = true;
            FieldClass = FlowField;
            CalcFormula = lookup("Service Header EDMS"."Variable Field Run 1" where("No." = field("Source ID")));
        }
        field(50104; "Description du travail"; Blob)
        {

        }
    }

}
