controladdin "PictureCard Html"
{
    StartupScript = 'SRC/JS/PictureStartup.js';
    Scripts = 'SRC/JS/PictureScript.js', 'https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.js', 'https://html2canvas.hertzen.com/dist/html2canvas.min.js', 'https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js', 'https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js', 'https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.0/FileSaver.min.js';
    StyleSheets = 'SRC/CSS/ReparationCSS.css';

    HorizontalStretch = true;
    VerticalStretch = true;
    RequestedHeight = 700;
    event ControlReady();
    procedure Render(HTML: Text);
}