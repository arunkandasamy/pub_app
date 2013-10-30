$(document).ready(function(){

    // scroll to top
    $("#scroll-topper").hide();
    $("#scroll-topper").click(function(){
	$("html, body").animate({ scrollTop: 0 }, 600);
    });

    // load all the sparklines
    $(".sparkline-holder").each(function(i, e){
	var data = $(e).attr("data-csv").split(",");
	var graph = $(e).attr("data-graph");
	var color = $(e).attr("data-color");

	if(color === "false"){
	    $(e).sparkline(data, {
		type: graph,
		barColor: '#2d2d2d',
		negBarColor: '#2d2d2d',
		zeroColor: '#2d2d2d',

		lineColor: '#2d2d2d',
		fillColor: '#eee',
		spotColor: '#2d2d2d',
		minSpotColor: '#2d2d2d',
		maxSpotColor: '#2d2d2d',
		highlightSpotColor: '#2d2d2d',
		highlightLineColor: '#2d2d2d',

		sliceColors: ["#000","#222","#444","#666","#888","#aaa"],

		tooltipOffsetX: 10,
		tooltipOffsetY: 10,
	    });
	}else{
	    $(e).sparkline(data, {
		type: graph,
		tooltipOffsetX: 10,
		tooltipOffsetY: 10,
	    });
	}
    });


});


// show scroller
$(window).scroll(function(){
    if ($(this).scrollTop() > 100) {
        $("#scroll-topper").fadeIn();
    } else {
        $("#scroll-topper").fadeOut();
    }
});
