page 50149 "Reparation"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    layout
    {
        area(Content)
        {
            usercontrol(html; "BC HTML")
            {
                ApplicationArea = all;
                trigger ControlReady()
                begin
                    CurrPage.html.Render(Login());
                end;
            }
        }

    }
    procedure Login(): Text
    var
        out: Text;
    begin
        out := '<!DOCTYPE html> ';
        out += '<html lang="en"> ';
        out += '<head> ';
        out += '<meta charset="UTF-8"> ';
        out += '<meta name="viewport" content="width=device-width, initial-scale=1.0"> ';
        out += '<meta http-equiv="X-UA-Compatible" content="ie=edge"> ';
        out += '<title>Réparation</title> ';
        out += '</head> ';
        out += '<body> ';
        out += '<nav class="nav"> ';
        out += '<a  OnClick="ChangeFace(id)" id="face"  class="nav-link">En Face</a> ';
        out += '<a  OnClick="ChangeFace(id)" id="arriere" class="nav-link">En arriére</a> ';
        out += '<a  OnClick="ChangeFace(id)" id="haut"class="nav-link">Haut</a> ';
        out += '<a  class="nav-link with-dropdown"> ';
        out += 'Autres ';
        out += '</a> ';
        out += '<div class="nav-dropdown" id="nav-dropdown"> ';
        out += '<a  class="nav-link">Bas</a> ';
        out += '<a  class="nav-link" OnClick="ChangeFace(id)" id="gauche">Gauche</a> ';
        out += '<a  class="nav-link" OnClick="ChangeFace(id)" id="droite">Droite</a> ';
        out += '</div> ';
        out += '</nav> ';
        out += '<div style="text-align:center;">';
        out += '<img  height="auto" width="auto" src="https://github.com/ineslehbib/Reparation/blob/master/SRC/assets/face.png?raw=true" id="voiture" >';
        out += '</div>';
        out += '</body> ';
        out += '</html> ';
        exit(out);
    end;
}