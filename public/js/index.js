const slidesPutra = document.querySelectorAll(".asrama-putra-image-wrapper .asrama-putra-image");
let indexPutra = 0;

setInterval(() => {
    slidesPutra[indexPutra].classList.remove("active");
    indexPutra = (indexPutra + 1) % slidesPutra.length;
    slidesPutra[indexPutra].classList.add("active");
}, 3000);

const slidesPutri = document.querySelectorAll(".asrama-putri-image-wrapper .asrama-putri-image");
let indexPutri = 0;

setInterval(() => {
    slidesPutri[indexPutri].classList.remove("active");
    indexPutri = (indexPutri + 1) % slidesPutri.length;
    slidesPutri[indexPutri].classList.add("active");
}, 3000);


document.querySelectorAll('a[href="#pop-up-asrama-putra"]').forEach(btn => {
  btn.addEventListener('click', () => {
    document.body.classList.add('popup-open');
  });
});

document.querySelectorAll('a[href="#"]').forEach(btn => {
  btn.addEventListener('click', () => {
    document.body.classList.remove('popup-open');
  });
});