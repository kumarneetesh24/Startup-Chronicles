// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require ckeditor/init
//= require jquery
//= require bootstrap
//= require jquery_ujs
//= require jquery.validate
//= require validate.js
//= require turbolinks
//= require classie



$(document).ready(function(){

 //window.scroll(0,150);

});


function loadContent( id , title) {
	
    document.getElementById("action_destroy").href='/articles/destroy/'+id; 
    document.getElementById("mymodal_name").innerHTML=title; 
    return false;
  };

  function loadadmin( id , username) {
	
    document.getElementById("action_destroy").href='/adminusers/destroy/'+id; 
    document.getElementById("mymodal_name").innerHTML=username; 
    return false;
  };
