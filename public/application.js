$(function() {
  document.onkeydown = checkKey;

  function checkKey(e) {

      e = e || window.event;

      if (e.keyCode == '39') {
          $.get('/right');
      }
      else if (e.keyCode == '37') {
          $.get('/left');
      }
  }
})