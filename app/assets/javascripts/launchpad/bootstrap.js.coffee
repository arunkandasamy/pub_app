$('#affix').affix()
$('#tooltip_bottom').tooltip(placement: "bottom")

jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
  $('.carousel').carousel()
  $('#subnav').scrollspy()
  $('#sidebar').affix()
  $('.dropdown-toggle').dropdown()
  $('#wallhanging').affix()
  $('.image-data').click ->   
    data_to_display = $(this).attr("data");      
    $('#image-data').html("<p>"+data_to_display + "</p>");
    $('#image-data-help').hide();
    return false;
  $('.image-data2').click ->   
    data_to_display = $(this).attr("data");      
    $('#image-data2').html("<p>"+data_to_display + "</p>");
    $('#image-data-help2').hide();
    return false;