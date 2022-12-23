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
        document.getElementById('voiture').src = "https://github.com/ineslehbib/Reparation/blob/master/SRC/assets/face.png?raw=true";
        console.log("ok");
    }
    if (text.indexOf("arriere") == 0) {
        document.getElementById('voiture').src = "https://github.com/ineslehbib/Reparation/blob/master/SRC/assets/arriere.png?raw=true";
    }
    if (text.indexOf("arriere") == 0) {
        document.getElementById('voiture').src = "https://github.com/ineslehbib/Reparation/blob/master/SRC/assets/arriere.png?raw=true";
    }
    if (text.indexOf("gauche") == 0) {
        document.getElementById('voiture').src = "https://github.com/ineslehbib/Reparation/blob/master/SRC/assets/gauche.png?raw=true";
    }
    if (text.indexOf("droite") == 0) {
        document.getElementById('voiture').src = "https://github.com/ineslehbib/Reparation/blob/master/SRC/assets/droite.png?raw=true";

    }

    if (text.indexOf("haut") == 0) {
        document.getElementById('voiture').src = "https://github.com/ineslehbib/Reparation/blob/master/SRC/assets/haut.png?raw=true";

    }
}