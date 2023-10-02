

class MobileNavbar {
    constructor(mobileMenu, navList, navLinks, main) {
      this.mobileMenu = document.querySelector(mobileMenu);
      this.navList = document.querySelector(navList);
      this.navLinks = document.querySelectorAll(navLinks);
      this.main = document.getElementsByTagName(main);
      this.activeClass = "active";
  
      this.handleClick = this.handleClick.bind(this);
    }
  
    animateLinks() {
      this.navLinks.forEach((link, index) => {
        link.style.animation ?
          (link.style.animation = "") :
          (link.style.animation = `navLinkFade 0.5s ease forwards ${index / 7 + 0.3}s`);
      });
    }
  
    handleClick() {
      this.navList.classList.toggle(this.activeClass);
      this.mobileMenu.classList.toggle(this.activeClass);
      this.animateLinks();
    }
  
    addClickEvent() {
      this.mobileMenu.addEventListener("click", this.handleClick);
    }
    
    // Método que escuta o click na tag main
    mainClick() {
      this.main[0].addEventListener("click", this.handleClick)
    }
  
    init() {
      if (this.mobileMenu) {
        this.addClickEvent();
      }
    }
  }
  
  const mobileNavbar = new MobileNavbar(
    ".mobile-menu",
    ".nav-list",
    ".nav-list li",
    "main"  // novo parâmetro
  );
  
  mobileNavbar.init();
  mobileNavbar.mainClick();  // chama o método
// script.js

function ajustarTamanhoBarraPesquisa() {
  const barraPesquisa = document.getElementById('divBusca');
  const larguraJanela = window.innerWidth;

  if (larguraJanela <= 768) {
      // Reduzir a largura da barra de pesquisa para dispositivos menores
      barraPesquisa.style.maxWidth = '200px';
  } else {
      // Restaurar a largura máxima padrão
      barraPesquisa.style.maxWidth = '300px';
  }
}

// Chamar a função ao carregar a página e redimensionar a janela
window.addEventListener('load', ajustarTamanhoBarraPesquisa);


window.addEventListener('resize', ajustarTamanhoBarraPesquisa);
