// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
//
 $(document).ready(function(){
    $("a[rel^='prettyPhoto']").prettyPhoto({
      theme: 'light_rounded', /* light_rounded / / light_square / dark_square / facebook */
    });
    $(".search_button a").click(function(e) {
      e.preventDefault();
      $(".search").toggle();

    });

 });
