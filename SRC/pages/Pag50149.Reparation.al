page 50149 "Reparation" //RV : Reparation vehicule
{

    ApplicationArea = All;
    UsageCategory = Administration;
    layout
    {
        area(Content)
        {
            usercontrol(html; "RV HTML")
            {
                ApplicationArea = all;
                trigger ControlReady()
                begin
                    CurrPage.html.Render(Html());
                end;
            }
        }

    }

    procedure Html(): Text
    var
        out: Text;
    begin
        out := '<!DOCTYPE html>   ';
        out += '<html lang="en">    ';
        out += '<head>    ';
        out += '<meta charset="UTF-8">    ';
        out += '<meta name="viewport" content="width=device-width, initial-scale=1.0">    ';
        out += '<meta http-equiv="X-UA-Compatible" content="ie=edge">    ';
        out += '<title>Réparation</title>   ';
        out += '</head>    ';
        out += '<body style="width=600px;" id="to_save"> ';
        out += '';
        out += '';
        out += '<a href="#" onClick="shotit()">shoot it</a> ';
        out += '<center><table> ';
        out += '<tr> ';
        out += '<td> ';
        out += '';

        out += '<div style="margin-left:65px;margin-top:15px;cursor: pointer;" onClick="reset();">   ';
        out += '<img  height="40" width="40" src="https://github.com/ineslehbib/Reparation/blob/ines/no.jpg?raw=true" id="reset" >   ';
        out += '</div>  ';
        out += '';
        out += '<button id="fissure" onClick="fissure();" style="margin-left:15px !important;width:120px;" class="button-19">Fissure<br><img  height="20" width="20"src=""  id="picture1" > </button> ';
        out += '<button id="rayure" onClick="rayure();" style="margin-left: 15px !important;width:120px;" onClick=""  class="button-19">Rayure<br><img  height="20" width="20" src="https://github.com/ineslehbib/Reparation/blob/master/1-removebg-preview.png?raw=true" > </button>  ';
        out += '<button id="rayure"onClick="enfoncement();" style="margin-left: 15px !important;width:120px;" onClick=""  class="button-19">Enfoncement <br><img  height="20" width="20" src="https://github.com/ineslehbib/Reparation/blob/master/3-removebg-preview.png?raw=true" > </button> ';
        out += '<button id="rayure" onClick="casse();" style="margin-left: 15px !important;width:120px;" onClick=""  class="button-19">Casse<br><img  height="20" width="20" src="https://github.com/ineslehbib/Reparation/blob/master/2-removebg-preview.png?raw=true" > </button>';
        out += '  ';
        out += '<div style="margin-left:65px;margin-top:15px;cursor: pointer;" onClick="takeshot();">   ';
        out += '<img  height="40" width="40" src="https://github.com/ineslehbib/Reparation/blob/ines/Yes.jpg?raw=true" id="reset" >   ';
        out += '</div>  ';
        out += '    ';
        out += '</td></tr><tr> ';
        out += '<td> ';
        out += '<div style="text-align:center;margin-top:5px;float: right;" class="image-map-container" >   ';
        out += '<img  height="420" width="350"  src="http://localhost:8080/BC160/Resources/ExtractedResources/667FF7A9/SRC/Images/V3Final.png?_v=16.0.12630.12758" id="voiture" >  ';

        out += '</div>  ';
        out += '  ';
        out += '</td><tr> ';
        out += '</tr> ';
        out += '<tr> ';
        out += '<td colspan="2"> ';
        out += '<center> ';
        out += '<div  style="margin-left:30px;margin-top:0px;cursor: pointer;width: 150px !important; "id ="zone">   ';
        out += '</div> ';
        out += '</center> ';
        out += '</td> ';
        out += '</tr> ';
        out += '</table> </center>';
        out += '<div id="output"></div>';
        out += '</body>    ';
        out += '</html>    ';
        exit(out);
    end;
}