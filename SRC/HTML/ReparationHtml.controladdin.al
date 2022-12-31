controladdin "BC HTML"
{
    StartupScript = 'SRC/JS/ReparationStartup.js';
    Scripts = 'SRC/JS/ReparationScript.js';
    StyleSheets = 'SRC/CSS/ReparationCSS.css';
    Images = 'C:/Users/ILAHBIB/Documents/AL/Reparation/SRC/assets/face.png', 'C:/Users/ILAHBIB/Documents/AL/Reparation/SRC/assets/arriere.png', 'C:/Users/ILAHBIB/Documents/AL/Reparation/SRC/assets/bas.png', 'C:/Users/ILAHBIB/Documents/AL/Reparation/SRC/assets/droite.png', 'C:/Users/ILAHBIB/Documents/AL/Reparation/SRC/assets/gauche.png', 'C:/Users/ILAHBIB/Documents/AL/Reparation/SRC/assets/haut.png';
    HorizontalStretch = true;
    VerticalStretch = true;
    RequestedHeight = 500;

    event ControlReady();
    procedure Render(HTML: Text);


}