if (typeof jQuery === "undefined") { throw new Error("Diperlukan jQuery") }

$(document).ready(function(){
    $(".team-box").hover(function(){
        $(this).addClass("hover");
        }, function(){
        $(this).removeClass("hover");
    });
});