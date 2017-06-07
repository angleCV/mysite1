with(document)with(body)with(insertBefore(createElement("script"),firstChild))setAttribute("exparams","category=&userid=&aplus&yunid=&asid=AQAAAADRtS9ZkHJkJwAAAADYzqQLCZm7/w==",id="tb-beacon-aplus",src=(location>"https"?"//s":"//a")+".tbcdn.cn/s/aplus_v2.js")


 window.onload = function() {
        var LoginConfig = {
            //登录url
            loginUrl : 'https://login.taobao.com/member/login.jhtml?f=top',
            logoutUrl : 'https://login.taobao.com/member/logout.jhtml?f=top',
            //是否登录
            isLogin: false
        };

        if(false==true){
            if(window.location.href){
                var Chref = window.location.href;
                Chref = encodeURIComponent(Chref);
                Chref = LoginConfig.logoutUrl.indexOf('?') > -1 ? LoginConfig.logoutUrl + '&sub=true&redirectURL=' + Chref :
                        LoginConfig.logoutUrl+ '?sub=true&redirectURL='+ Chref;
                document.getElementById('open-loginOut').href = Chref;   //登出地址改变
            }
        }else{
            if(window.location.href){
                var Chref = window.location.href;
                Chref = encodeURIComponent(Chref);
                Chref = LoginConfig.loginUrl.indexOf('?') > -1 ? LoginConfig.loginUrl + '&sub=true&redirectURL=' + Chref :
                        LoginConfig.loginUrl+ '?sub=true&redirectURL='+ Chref;
                document.getElementById('open-login').href = Chref;   //登录地址改变
            }
        }
    }
    
    $('.top-openplatform-nav ul li').hover(function(){
       $(this).find('.sub-nav ').slideDown();
    },function(){$(this).find('.sub-nav').slideUp();});
    
	
    $(function(){
        $(window).scroll(function(){
            if($('.has-background-1').offset().top-200 <= $(document).scrollTop()) {
                $('.has-background-1').addClass('active');
            }
            if($('.tech-area').offset().top-200 <= $(document).scrollTop()) {
                if($('.tech-area').find('.hover').length > 3) return;
                //random
                var random = Math.floor(Math.random()*10);
                if(random%2 == 1) {
                    $('.tech-area').find('.grid').eq(random).addClass('hover');
                    setTimeout(function(){
                        $('.tech-area').find('.grid').eq(random).removeClass('hover');
                    },1000)
                }
            }
        });
        //slider
        $('.J_Slider > li').hover(function(e){
            e.preventDefault();
            if($(this).hasClass('active')) return;

            var index = $(this).index();
            $('.has-background-1').removeClass('active');
            $(this).siblings().removeClass('active');
            $(this).addClass('active');
            $('.J_Slider-content').addClass('hidden').eq(index).removeClass('hidden');
            setTimeout(function(){
                $('.has-background-1').addClass('active');
            },100)
        });
        if($('.carousel-inner > li').length > 1) {
            $('.carousel-indicators').removeClass('hide');
        }
        //hover
        //$('img[data-hover]').hover(function(){
        //    this.src = $(this).data('hover');
        //});
    });