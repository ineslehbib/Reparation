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
        out := '<!DOCTYPE html>   ';
        out += '<html lang="en">   ';
        out += '<head>   ';
        out += '<meta charset="UTF-8">   ';
        out += '<meta name="viewport" content="width=device-width, initial-scale=1.0">   ';
        out += '<meta http-equiv="X-UA-Compatible" content="ie=edge">   ';
        out += '<title>Réparation</title>  ';
        out += '</head>   ';
        out += '<body style="width: 800px;">   ';
        out += '<nav class="nav">   ';
        out += '<a  OnClick="ChangeFace(id);" id="face"  class="nav-link">En Face</a>   ';
        out += '<a  OnClick="ChangeFace(id);" id="arriere" class="nav-link">En arriére</a>   ';
        out += '<a  OnClick="ChangeFace(id);" id="haut"class="nav-link">Haut</a>   ';
        out += '<a  class="nav-link with-dropdown">   ';
        out += 'Autres   ';
        out += '</a>   ';
        out += '<div class="nav-dropdown" id="nav-dropdown">   ';
        out += '<a OnClick="ChangeFace(id);" id="bas"  class="nav-link">Bas</a>   ';
        out += '<a  class="nav-link" OnClick="ChangeFace(id);" id="gauche">Gauche</a>   ';
        out += '<a  class="nav-link" OnClick="ChangeFace(id);" id="droite">Droite</a>   ';
        out += '</div>   ';
        out += '</nav>   ';
        out += '<div style="text-align:center;" class="image-map-container">  ';
        out += '<img  height="auto" width="auto" src="C:/Users/ILAHBIB/Documents/AL/Reparation/SRC/assets/face.png" id="voiture" usemap="#marquerface" > ';
        out += '<map name="marquerface" id="marquerface">  ';
        out += '<area shape="circle" coords="36,76,10"  onClick="message();marquer(295,150); " />  ';
        out += '<area shape="circle" coords="217,76,10"  onClick="message1();marquer(475,150);  " />  ';
        out += '<area shape="poly" coords="67,39,108,40,195,77,54,77"  onClick="message2();marquer(390,132); " />  ';
        out += '<area shape="rect" coords="71,78,177,100"  onClick="message3(); marquer(390,165); " /> ';
        out += '<area shape="poly" coords="47,105,46,90,72,95,81,115"  onClick="message4();marquer(320,180); " /> ';
        out += '<area shape="poly" coords="179,97,204,90,203,107,172,115"  onClick="message5();marquer(450,180); " /> ';
        out += '<area shape="poly" coords="78,139,171,140,175,153,75,152"  onClick="message6();marquer(390,225); " /> ';
        out += '<area shape="rect" coords="39,163,64,176"  onClick="message7(); marquer(310,245); " /> ';
        out += '<area shape="rect" coords="187,162,211,176"  onClick="message8(); marquer(460,245); " /> ';
        out += '</map>  ';
        out += '</div> ';
        out += '<div style="text-align:center;cursor: pointer;" onClick="reset();">  ';
        out += '<img  height="20" width="20" src="https://st3.depositphotos.com/1216158/15829/v/450/depositphotos_158291398-stock-illustration-circular-arrow-icon.jpg" id="reset" >  ';
        out += '</div>  ';
        out += '<div style="text-align:center;" id ="zone">  ';
        out += '</div>  ';
        out += '</body>   ';
        out += '</html>   ';
        exit(out);
    end;
}