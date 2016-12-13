// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .


document.addEventListener('DOMContentLoaded', function() {

  var dataBars = document.querySelectorAll('[data-percent]');

  // dataBars.onchange(setBars(dataBars));

  setBars(dataBars);

}, false);

function setBars(dataBars) {
  for (var i = 0; i < dataBars.length; i++) {
    var bar = dataBars[i];
    var percent = bar.dataset.percent;
    bar.innerHTML = percent;
    if (bar.classList.contains('horiz-bar')) {
      bar.style.width = percent;
    }
  }
}