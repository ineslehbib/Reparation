function Render(html) {
    HTMLContainer.innerHTML = "";
    HTMLContainer.insertAdjacentHTML('beforeend', html);
}

// Highlight Current Page link in the Navbar
document.addEventListener('DOMContentLoaded', () => {
    const $navLinks = Array.prototype.slice.call(document.querySelectorAll('.nav-link'), 0);
    const $withDropdown = Array.prototype.slice.call(document.querySelectorAll('.with-dropdown'), 0);
    const navDropdown = document.getElementById('nav-dropdown');
    // Highlight Current Page link in the Navbar
    if ($navLinks.length > 0) {
        $navLinks.forEach(el => {
            if (window.location.pathname == el.getAttribute("href")) {
                el.className += " current";
            }
        })
    }
    // End of Highlight Current Page link in the Navbar

    if ($withDropdown.length > 0) {
        $withDropdown.forEach(el => {
            el.addEventListener('click', () => {
                navDropdown.classList.toggle('is-active');
            });
        });
    };
});


const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);




// Add active class on another page linked
// ==========================================
// $(window).on('load',function () {
//     var current = location.pathname;
//     console.log(current);
//     $('#navbarSupportedContent ul li a').each(function(){
//         var $this = $(this);
//         // if the current path is like this link, make it active
//         if($this.attr('href').indexOf(current) !== -1){
//             $this.parent().addClass('active');
//             $this.parents('.menu-submenu').addClass('show-dropdown');
//             $this.parents('.menu-submenu').parent().addClass('active');
//         }else{
//             $this.parent().removeClass('active');
//         }
//     })
// });

function ChangeFace(id) {
    let text = id
    var aff = document.getElementById(text);
    var voi = document.getElementById('voiture');
    if (text.indexOf("face") == 0) {
        document.getElementById('voiture').src = "C:/Users/ILAHBIB/Documents/AL/Reparation/SRC/assets/face.png";
        document.getElementById('voiture').useMap = "#marquerface";
        console.log("ok");
        reset();

    }
    if (text.indexOf("arriere") == 0) {
        document.getElementById('voiture').src = "C:/Users/ILAHBIB/Documents/AL/Reparation/SRC/assets/arriere.png";
        document.getElementById('voiture').useMap = "#marquerarriere";
        reset();

    }
    if (text.indexOf("bas") == 0) {
        document.getElementById('voiture').src = "C:/Users/ILAHBIB/Documents/AL/Reparation/SRC/assets/bas.png";
        reset();
    }
    if (text.indexOf("gauche") == 0) {
        document.getElementById('voiture').src = "C:/Users/ILAHBIB/Documents/AL/Reparation/SRC/assets/gauche.png";
        reset();
    }
    if (text.indexOf("droite") == 0) {
        document.getElementById('voiture').src = "C:/Users/ILAHBIB/Documents/AL/Reparation/SRC/assets/droite.png";
        reset();
    }

    if (text.indexOf("haut") == 0) {
        document.getElementById('voiture').src = "SRC/assets/haut.png";
        reset();
    }
}
function message() {
    console.log('Retroviseur Gauche');
    document.getElementById('zone').innerHTML = ZoneB()
}
function message1() {
    console.log('Retroviseur Droite');
    document.getElementById('zone').innerHTML = ZoneC()
}
function message2() {
    console.log('ZoneA');
    document.getElementById('zone').innerHTML = ZoneA()
}
function message3() {
    console.log('ZoneCapo');
    document.getElementById('zone').innerHTML = ZoneD()
}
function message4() {
    console.log('feuGauche');
    document.getElementById('zone').innerHTML = ZoneE()
}
function message5() {
    console.log('feuDroite');
    document.getElementById('zone').innerHTML = ZoneF()
}
function message6() {
    console.log('Calandre');
    document.getElementById('zone').innerHTML = ZoneG()
}
function message7() {
    console.log('Calandre');
    document.getElementById('zone').innerHTML = ZoneH()
}
function message8() {
    console.log('Calandre');
    document.getElementById('zone').innerHTML = ZoneI()
}
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
// La partie en face de la voiture  
function ZoneA() {
    var output = "";
    output += '<div class ="selection" id="vitre" style="margin-left:150px " onClick="notification(id);">Pare-Brise</div > ';
    output += '<div class ="selection" id="Essuie_glace" onClick="notification(id);">Essuie-glace</div > ';
    output += '<div class ="selection" id="jointure" onClick="notification(id);">Jointure</div > ';
    return output;
}
function ZoneB() {
    var output = "";
    output += '<div class ="selection" id="retroviseur_Gauche" style="margin-left:150px " onClick="notification(id);">Rétroviseur extérieur Gauche</div > ';
    return output;
}
function ZoneC() {
    var output = "";
    output += '<div class ="selection" id="retroviseur_Droite" style="margin-left:150px " onClick="notification(id);">Retroviseur extérieur Droite</div > ';
    return output;
}
function ZoneD() {
    var output = "";
    output += '<div class ="selection" id="Capot" style="margin-left:150px " onClick="notification(id);">Capot</div > ';
    return output;
}
function ZoneE() {
    var output = "";
    output += '<div class ="selection" id="Phare_Gauche" style="margin-left:150px " onClick="notification(id);">Phare Gauche</div > ';
    return output;
}
function ZoneF() {
    var output = "";
    output += '<div class ="selection" id="Pahre_Droite" style="margin-left:150px " onClick="notification(id);">Phare Droite</div > ';
    return output;
}
function ZoneG() {
    var output = "";
    output += '<div class ="selection" id="Calendre" style="margin-left:150px " onClick="notification(id);">Calandre</div > ';
    return output;
}
function ZoneH() {
    var output = "";
    output += '<div class ="selection" id="Roue_Avant_Gauche" style="margin-left:150px " onClick="notification(id);">Roue Avant Gauche</div > ';
    output += '<div class ="selection" id="Enjoliveur_de_roue" style="margin-left:20px " onClick="notification(id);">Enjoliveur de roue</div > ';

    return output;
}
function ZoneI() {
    var output = "";
    output += '<div class ="selection" id="Roue_Avant_Droite" style="margin-left:150px " onClick="notification(id);">Roue Avant Droite</div > ';
    output += '<div class ="selection" id="Enjoliveur_de_roue" style="margin-left:20px " onClick="notification(id);">Enjoliveur de roue</div > ';

    return output;
}



// Add hover to selected area
function marquer(x_pos, y_pos) {

    let b = document.body;
    let newP = document.createElement('img');
    newP.src = "https://freepngimg.com/thumb/red_cross_mark/117880-cross-mark-free-clipart-hd-thumb.png";
    newP.width = "20";
    newP.height = "20";
    newP.className = "mark";
    newP.style.position = "absolute";
    newP.style.left = x_pos + 'px';
    newP.style.top = y_pos + 'px';

    b.prepend(newP);

    //Ajoute le texte créé comme dernier enfant de l'élément bod
}
