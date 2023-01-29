page 50140 "TestCamera"
{
    Caption = 'Caption';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Sales Header";

    layout
    {

    }

    actions
    {
        area(Processing)
        {
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

    var
        [RunOnClient]
        [WithEvents]
        Camera: dotnet CameraProvider;
        CameraAvailable: Boolean;

}