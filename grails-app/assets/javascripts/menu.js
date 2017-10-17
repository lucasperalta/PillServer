/* Simple VanillaJS to toggle class */

document.getElementById('menuInicio').addEventListener('click', function () {
  [].map.call(document.querySelectorAll('.menu'), function(el) {
    el.classList.toggle('menu--open');
  });
});