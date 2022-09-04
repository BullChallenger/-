$(document).ready(function(){
    $('#wleft').mouseover(function(){
    });
    $('#wright').mouseover(function(){
    });
    $('#wleft').one("click",function(){
        $.Animate('wright','fadeOutRightBig');
        $('#wleft').css({backgroundPositon: 'center center'});
        $('#wleft').css({'text-align': 'center center'});
        $('#wleft').css({'z-index': '3'});
        $('#wleft').animate({
            width: '100%',
            maxWidth: '100%'
        },500);
        


    });
    $('#wright').one("click",function(){
        $.Animate('wleft','fadeOutLeftBig');
        $('#wright').css({backgroundPositon: 'center center'});
        $('#wrigth').css({'text-align': 'center center'});
        $('#wright').css({'z-index': '3'});
        $('#wright').animate({
            left: 0,
            width: '100%',
            maxWidth: '100%'
        },500);
    });
});

    $.Animate = function(wid, ani){
        $('#'+wid).removeAttr('class').attr('class', '');
        $('#'+wid).addClass('animate');
        $('#'+wid).addClass(ani);
    };

    
