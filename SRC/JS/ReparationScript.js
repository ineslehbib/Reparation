
console.log("ok:1" + Microsoft.Dynamics.NAV.GetImageResource('SRC/Images/V3Final.png'));
//console.log("ok:2" + Microsoft.Dynamics.NAV.GetImageResource('SRC/Images/2-removebg-preview.png'));
//console.log("ok:3" + Microsoft.Dynamics.NAV.GetImageResource('SRC/Images/3-removebg-preview.png'));
//console.log("ok:4" + Microsoft.Dynamics.NAV.GetImageResource('SRC/Images/4-removebg-preview.png'));
// function getBase64FromImageUrl(url) {
//     var img = new Image();

//     img.setAttribute('crossOrigin', 'anonymous');


//     img.onload = function () {
//         var canvas = document.createElement("canvas");
//         canvas.width = this.width;
//         canvas.height = this.height;

//         var ctx = canvas.getContext("2d");
//         ctx.drawImage(this, 0, 0);

//         var dataURL = canvas.toDataURL("image/png");

//         // alert(dataURL.replace(/^data:image\/(png|jpg);base64,/, ""));
//     };

//     img.src = url;
// }
// const getBase64FromUrl = async (url) => {
//     const data = await fetch(url);
//     const blob = await data.blob();
//     return new Promise((resolve) => {
//         const reader = new FileReader();
//         reader.readAsDataURL(blob);
//         reader.onloadend = () => {
//             const base64data = reader.result;
//             resolve(base64data);
//         }
//     });
// }
// const url1 = getBase64FromUrl('https://lh3.googleusercontent.com/i7cTyGnCwLIJhT1t2YpLW-zHt8ZKalgQiqfrYnZQl975-ygD_0mOXaYZMzekfKW_ydHRutDbNzeqpWoLkFR4Yx2Z2bgNj2XskKJrfw8');

// const image1 = new Image();
// (async function () {
//     const response = await fetch(`https://placekitten.com/320/240`)
//     const blob = await response.blob()
//     const url = URL.createObjectURL(blob.slice(0, 4000));
//     image1.src = url;
//      //console.log(image1 + "ok ok ok ");
// })
// function toDataUrl(url, callback) {
//     var xhr = new XMLHttpRequest();
//     xhr.onload = function () {
//         var reader = new FileReader();
//         reader.onloadend = function () {
//             callback(reader.result);
//         }
//         reader.readAsDataURL(xhr.response);
//     };
//     xhr.open('GET', url);
//     xhr.responseType = 'blob';
//     xhr.send();
// }

// toDataUrl('https://github.com/ineslehbib/Reparation/blob/master/4-removebg-preview.png?raw=true', function (url1) {
//     console.log(url1); // myBase64 is the base64 string
// });
function Render(html) {
    HTMLContainer.innerHTML = "";
    HTMLContainer.insertAdjacentHTML('beforeend', html);
}
//Declaration des images
//pic 1 
window.onload = function () {
    document.getElementById("picture1").src = "ok";
}
// var voiture = Document.getElementById("voiture");
// var V3Final = new Image();
// voiture.src = Microsoft.Dynamics.NAV.GetImageResource("SRC/assets/V3Final.png"); _
// Highlight Current Page link in the Navbar

function notification(id) {
    alert('Succés : ' + id);
}

// Le bouton Reset
function Vider() {
    var output = "";
    output += '<div></div>';
    return output;
}

function reset() {
    document.getElementById('zone').innerHTML = Vider();
    //Effacer tout les marques rouges
    const marques = document.querySelectorAll('.mark');

    marques.forEach(marque => {
        marque.remove();
    });
}

var f, r, e, c;
function fissure() {
    f = true;
    r = e = c = false;
    document.addEventListener('click', printMousePos);
}
function rayure() {
    r = true;
    f = e = c = false;
    document.addEventListener('click', printMousePos);
}
function enfoncement() {
    e = true;
    f = r = c = false;
    document.addEventListener('click', printMousePos);
}
function casse() {
    c = true;
    e = r = f = false;
    document.addEventListener('click', printMousePos);
}

function marquer(x_pos, y_pos) {

    let b = document.body;
    let newP = document.createElement('img');
    if (f) {
        newP.src = Microsoft.Dynamics.NAV.GetImageResource('SRC/Images/4-removebg-preview.png');
    } else if (r) {
        //newP = img1;
        newP.src = Microsoft.Dynamics.NAV.GetImageResource('SRC/Images/1-removebg-preview.png');
    } else if (e) {
        newP.src = Microsoft.Dynamics.NAV.GetImageResource('SRC/Images/3-removebg-preview.png');
    } else if (c) {
        newP.src = Microsoft.Dynamics.NAV.GetImageResource('SRC/Images/2-removebg-preview.png');
    }
    newP.width = "20";
    newP.height = "20";
    newP.className = "mark";
    newP.style.position = "absolute";
    newP.style.left = x_pos + 'px';
    newP.style.top = y_pos + 'px';

    if (y_pos > 70) {
        b.prepend(newP);

        newP.addEventListener("mousedown", (event) => {
            event.target.remove();
        });



    }


}

function printMousePos(event) {
    var cursorX;
    var cursorY;
    cursorX = event.clientX;
    cursorY = event.clientY;
    //console.log(cursorX);
    marquer(cursorX, cursorY);
}

document.addEventListener("click", printMousePos);
// les captures
function takeshot() {
    let div = document.getElementById('to_save');


    // Use the html2canvas
    // function to take a screenshot
    // and append it
    // to the output div
    html2canvas(div).then(
        function (canvas) {
            document
                .getElementById('output')
                .appendChild(canvas);
        })
}
var i
// var shotit = function () {
//     var imgBlob;
//     var reader;
//     var outurl;
//     html2canvas(document.body, {
//         useCORS: true,
//         onrendered: function (canvas) {
//             document.body.appendChild(canvas);
//             leCanvas = document.getElementsByTagName("canvas")[0];
//             // img = leCanvas.toDataURL("image/png") + '';
//             img = leCanvas.toDataURL("image/png") + '';
//             Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('save', [leCanvas.toDataURL("image/png")]);
//             console.log("image1:" + img);
//             document.write('<img src="' + img + '"/>');
//             leCanvas.toBlob(function (blob) {
//                 saveAs(blob, "vehicule.png");
//                 var imageBlob = blob;
//                 outurl = URL.createObjectURL(blob);
//                 //   //console.log("OMG" + outurl);
//                 reader = new FileReader();

//                 // This fires after the blob has been read/loaded.
//                 reader.addEventListener('loadend', (e) => {
//                     const text = e.srcElement.result;
//                 });

//                 // Start reading the blob as text.
//                 reader.readAsText(blob);
//                 // //console.log("reader : " + reader);
//             });

//             // //console.log(reader);
//         },
//         width: 600,
//         height: 550
//     });
// }
html2canvas(document.querySelector("#capture")).then(canvas => {
    document.body.appendChild(canvas)
});

var shotit = function () {
    var imgBlob;
    var reader;
    var outurl;
    html2canvas(document.body, { allowTaint: true, useCORS: true }).then(canvas => {
        document.body.appendChild(canvas);
        var leCanvas = document.getElementsByTagName("canvas")[0];
        // img = leCanvas.toDataURL("image/png") + '';
        var img = leCanvas.toDataURL('image/png');

        img.width = 550;
        img.height = 550;
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('save', [leCanvas.toDataURL("image/png")]);
        console.log("image1:" + img);
        document.write('<img src="' + img + '" width="550" height="550"/>');
        canvas.toBlob(function (blob) {
            //saveAs(blob, "vehicule.png");
            var imageBlob = blob;
            outurl = URL.createObjectURL(blob);
            //   //console.log("OMG" + outurl);
            reader = new FileReader();

            // This fires after the blob has been read/loaded.
            reader.addEventListener('loadend', (e) => {
                const text = e.srcElement.result;
            });

            // Start reading the blob as text.
            reader.readAsText(blob);
            // //console.log("reader : " + reader);
        });
    });
}


