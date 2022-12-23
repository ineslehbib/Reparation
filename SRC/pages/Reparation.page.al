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
        out += '<a  class="nav-link">En Face</a> ';
        out += '<a  class="nav-link">En arriére</a> ';
        out += '<a  class="nav-link">Haut</a> ';
        out += '<a  class="nav-link with-dropdown"> ';
        out += 'Autres ';
        out += '</a> ';
        out += '<div class="nav-dropdown" id="nav-dropdown"> ';
        out += '<a  class="nav-link">Bas</a> ';
        out += '<a  class="nav-link">Gauche</a> ';
        out += '<a  class="nav-link">Droite</a> ';
        out += '</div> ';
        out += '</nav> ';
        out += '<div>';
        out += '<img  height="auto" width="auto" src="C:\Users\ILAHBIB\Documents\AL\Reparation\SRC\assets\face.png" id="voiture" >';
        out += '</div>';
        out += '</body> ';
        out += '</html> ';
        exit(out);
    end;
}