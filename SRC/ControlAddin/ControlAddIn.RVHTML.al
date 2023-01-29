controladdin "RV HTML" // RV : Reparation Vehicule
{
    StartupScript = 'SRC/JS/ReparationStartup.js';
    Scripts = 'SRC/JS/ReparationScript.js', 'https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.js', 'https://html2canvas.hertzen.com/dist/html2canvas.min.js', 'https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js', 'https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js', 'https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.0/FileSaver.min.js';
    StyleSheets = 'SRC/CSS/ReparationCSS.css';
    Images = 'SRC/Images/V3Final.png', 'SRC/Images/1-removebg-preview.png', 'SRC/Images/2-removebg-preview.png', 'SRC/Images/3-removebg-preview.png', 'SRC/Images/4-removebg-preview.png';
    RequestedHeight = 620;
    RequestedWidth = 600;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    MaximumWidth = 600;
    event ControlReady();
    event save(image: Text);
    procedure Render(HTML: Text);
}