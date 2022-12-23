controladdin "BC HTML"
{
    StartupScript = 'SRC/JS/ReparationStartup.js';
    Scripts = 'SRC/JS/ReparationScript.js';
    StyleSheets = 'SRC/CSS/ReparationCSS.css';
    HorizontalStretch = true;
    VerticalStretch = true;
    RequestedHeight = 500;

    event ControlReady();
    procedure Render(HTML: Text);


}