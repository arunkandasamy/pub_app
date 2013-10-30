$(document).ready(function(){

  	$(document).on("click","span a",function(){
	    $("#loader-bar").show();
	    $.get(this.href, null, null, 'script');
	    return false;
       
    });

    $(document).on("click",".filter",function(){
	    $("#loader-bar").show();
	    $.get(this.href, null, null, 'script');
	    return false;
       
    });

    $(document).on("click",".tit a",function(){
	    $("#poster-bars").show();
	    $.get(this.href, null, null, 'script');
	    return false;
       
    });

});