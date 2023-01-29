pageextension 50147 "RV Picture Card ext" extends "Picture Card"
{

    layout
    {
        modify(Blob)
        {
            Visible = false;
        }
        addafter(General)
        {
            group("Rapport d'état de véhicule")
            {

                usercontrol(PictureCard; "PictureCard Html")
                {
                    ApplicationArea = All;

                    trigger ControlReady()
                    var
                        Picture: Record "Picture";
                        CamerMgt: Codeunit "Camera Mgt";
                        ProcessChecklistHeader: Record "Process Checklist Header";
                        OutStr: OutStream;
                        InStr: InStream;
                        html: Text;
                        final: Text;
                        TempBlob: Record TempBlob temporary;

                    begin

                        Picture.SetRange("No.", rec."No.");
                        If Picture.FindFirst() then
                            Picture.CalcFields(Blob);
                        ClearLastError;

                        Picture.Blob.CreateOutstream(OutStr);
                        Picture.Blob.CreateInStream(InStr);
                        TempBlob.Blob := Picture.Blob;
                        final := TempBlob.ToBase64String();
                        //Message(final);

                        //   CamerMgt.CreatePictureBySource('descr', '', rec., rec."Source Subtype", rec."No.", 0, rec."Vehicle Serial No.", Picture);

                        html := '<img  src="data:image/png;base64,' + final + '"width="500" height="500">';
                        CurrPage.PictureCard.Render(html);
                    end;

                }
            }

        }
    }
}