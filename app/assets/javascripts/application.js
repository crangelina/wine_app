// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require 'bootstrap.min.js'
//= require 'bootstrap-slider.js'
//= require_tree .
//= require 'jquery.js'

$(function() {

  $slider = $("#price-slider");

  // SLIDER
  $slider.slider({
    tooltip: "show",
    handle: "square"
  });

  // PICTURE PREVIEW

  function grabURL(input) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function(e) {
        $(".preview").attr("src", e.target.result);
        $(".column1").removeClass("col-sm-8 col-md-6 ");
        $(".column1").addClass("col-sm-7 col-md-5");
        $(".column2").addClass("col-sm-1");
        $(".picture-cache").hide();
        $(".picture-thumbnail").show();
      }
      reader.readAsDataURL(input.files[0]);
    }
  };

  $(".upload-field").on("change", function() {
    grabURL(this);
  });
  
  

})