// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

//= require jquery3
//= require popper
//= require bootstrap-sprockets


  $(document).ready(function(){


    $('#a1').click(function(){
      $('#f1').submit();
    });
    $('#a2').click(function(){
      $('#f2').submit();
    });
    $('#a3').click(function(){
      $('#f3').submit();
    });
    $('#a4').click(function(){
      $('#f4').submit();
    });
    $('#a5').click(function(){
      $('#f5').submit();
    });
    $('#a6').click(function(){
      $('#f6').submit();
    });
  });
 
  $(document).ready(function(){ 
    if(error) {
      $("#setings-modal").modal();
    }
  });