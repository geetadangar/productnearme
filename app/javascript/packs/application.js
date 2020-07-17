// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

 //= require jquery  
//= require bootstrap-sprockets

// require("@rails/ujs").start()
// require("turbolinks").start()
// require("@rails/activestorage").start()
// require("channels")

$(function() {
  $("#product th a, #product").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#product_search input").keyup(function() {
    $.get($("#product_search").attr("action"), $("#product_search").serialize(), null, "script");
    return false;
  });
});



$(document).ready( function() {

    var base_url = window.location.protocol + "//" + window.location.host;

    $('#SearchSearch').searchbox({
        url: base_url + '/search/',
        param: 'search',
        dom_id: '#livesearch',
        loading_css: '#livesearch_loading'
    })      
});
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
