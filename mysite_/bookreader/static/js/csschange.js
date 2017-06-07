
			(function(){
			    'use strict'
			    var Util = (function(){
			        var prefix = 'html5_reader_';
			        var StorageGetter = function(key){
			            return localStorage.getItem(prefix + key);
			        }
			        var StorageSetter = function(key,val){
			            return localStorage.setItem(prefix + key, val);
			        }
			        var getBSONP = function(url, callback){
			            return $.jsonp({
			                url: url,
			                cache: true,
			                callback: 'duokan_fiction_chapter',
			                success: function(result){
			                    var data = $.base64.decode(result);
			                    var json = decodeURIComponent(escape(data));;
			                    callback(json); 
			                }
			            });
			        }
			        return {
			            getBSONP: getBSONP,
			            StorageGetter: StorageGetter,
			            StorageSetter: StorageSetter
			        }
			    })();
			    
			    var Dom = {
			        top_nav: $('#top_nav'),
			        bottom_nav: $('#foot_nav'),
			        night_day_switch_button: $('.night_day'),
			        font_container: $('.font_container'),
			        font_button: $('.tab-2'),
			    };
			    var Win = $(window);
			    var Doc = $(document);
			    var RootContainer = $('#fiction_contailner');
			    var readerModel;
			    var readerUI;
			    var NightMode = false;
			    
			    var initFontSize = Util.StorageGetter('font-size');
			    initFontSize = parseInt(initFontSize);
			    if (!initFontSize) {
			        initFontSize = 14;
			    }
			    RootContainer.css('font-size', initFontSize);
			    
			    var initChapter = Util.StorageGetter('initChapter');
			    initChapter = parseInt(initChapter);
			    if (!initChapter) {
			        initChapter = 1;
			    }
			    
                //从缓存中读取的信息进行展示
				var ModuleFontSwitch = (function() {
					//字体和背景的颜色表
					var colorArr = [{
						value : '#f7eee5',
						name : '米白',
						font : '#000'
					}, {
						value : '#e9dfc7',
						name : '纸张',
						font : '#000',
						id : "font_normal"
					}, {
						value : '#a4a4a4',
						name : '浅灰',
						font : '#000'
					}, {
						value : '#cdefce',
						name : '护眼',
						font : '#000'
					}, {
						value : '#283548',
						name : '灰蓝',
						font : '#7685a2',
						bottomcolor : '#fff'
					}, {
						value : '#0f1410',
						name : '夜间',
						font : '#4e534f',
						bottomcolor : 'rgba(255,255,255,0.7)',
						id : "font_night"
					}];

					var initBackground = Util.StorageGetter('background');
					var font       = Util.StorageGetter('font_color');
					var bkCurColor = Util.StorageGetter('background');
					var fontColor  = Util.StorageGetter('font_color');
                        
                    var html = '';
					for (var i = 0; i < colorArr.length; i++) {
						var display = false;
						if (bkCurColor == colorArr[i].value) {
							display = true;
						}
						html += '<div class="bk-container" id="' + colorArr[i].id + '" data-font="' + colorArr[i].font + '" data-color="' + colorArr[i].value + '" style="background-color:' + colorArr[i].value + ';">';
						html += '<div class="' + (display ? 'bk-container-current' : '') + '"></div>';
						html += '</div>';
					}
					$('.bk-container-wrap').append(html);

					if (!initBackground) {
					    initBackground = '#f7eee5';
					}
					$('body').css('background', initBackground);

					if (font) {
						$('.m-read-content').css('color', font);
					}

					//夜间模式
					if (fontColor == '#4e534f') {
					    turnNight();
					}
				})();
			    
			    function main(){
			        //todo 整个项目的入口函数
			        readerModel = ReaderModel();
			        readerUI    = ReaderBaseFrame(RootContainer);
			        /*
			        readerModel.init(function(data){
			            readerUI(data);
			        });
			        */
			        readerModel.initPromise().then(function(data){
			            readerUI(data);
			        });
			        EventHanlder();
			    }
			    
			    function ReaderModel(){
			        //todo 实现和阅读器相关的数据交互的方法
			        var Chapter_id = initChapter;
			        var ChapterTotal;
			        var init = function(UIcallback){
			            /*
			            getFictionInfo(function(){
			                getCurChaoterContent(Chapter_id, function(data){
			                    //todo
			                    UIcallback && UIcallback(data);
			                })
			            });
			            */
			            getFictionInfoPromise().then(function(d){
			                return getCurChaoterContentPromise();
			            }).then(function(data){
			                UIcallback && UIcallback(data);
			            });
			        }
			        var initPromise = function(){
			            return new Promise(function(resole, reject){
			                getFictionInfoPromise().then(function(d){
    			                return getCurChaoterContentPromise();
    			            }).then(function(data){
    			                resole(data);
    			            });
			            });
			        }
			        var getFictionInfo = function(callback){
			            $.get('data/chapter.json', function(data){
			               //todo 获得章节信息之后的回调 
			               ChapterTotal = data.chapters.length;
			               callback && callback();
			            }, 'json');
			        }
			        var getFictionInfoPromise = function(){
			            return new Promise(function(resole, reject){
    		                $.get('data/chapter.json', function(data){
        			            //todo 获得章节信息之后的回调 
    		                    if (data.result == 0) {
        			                ChapterTotal = data.chapters.length;
        			                resole();
    		                    } else {
    			                    reject();
    			                }
    			            }, 'json');
    			        });
			        }
			        var getCurChaoterContent = function(chapter_id, callback){
			            $.get('data/data' + chapter_id + '.json', function(data){
			                if (data.result == 0) {
			                    var url = data.jsonp;
			                    Util.getBSONP(url, function(data){
			                        callback && callback(data);
			                    });
			                }
			            }, 'json');
			        }
			        var getCurChaoterContentPromise = function(){
			            return new Promise(function(resole, reject){
    			            $.get('data/data' + Chapter_id + '.json', function(data){
    			                if (data.result == 0) {
    			                    var url = data.jsonp;
    			                    Util.getBSONP(url, function(data){
    			                        resole(data);
    			                    });
    			                } else {
    			                    reject({msg:fail});
    			                }
    			            }, 'json');
    			        });
			        }
			        var prevChapter = function(UIcallback){
			            Chapter_id = parseInt(Chapter_id, 10);
			            if (Chapter_id < 2) {
			                return;
			            }
			            Chapter_id--;
			            getCurChaoterContent(Chapter_id, UIcallback);
			        }
			        var nextChapter = function(UIcallback){
			            Chapter_id = parseInt(Chapter_id, 10);
			            if (Chapter_id > ChapterTotal - 1) {
			                return;
			            }
			            Chapter_id++;
			            getCurChaoterContent(Chapter_id, UIcallback);
			        }
			        var getChapterId = function(){
			            return Chapter_id;
			        }
			        return {
			            init: init,
			            initPromise: initPromise,
			            prevChapter: prevChapter,
			            nextChapter: nextChapter,
			            getChapterId: getChapterId
			        }
			    }
			    
			    function ReaderBaseFrame(container){
			        //todo 渲染基本的UI结构
			        function parseChapterData(jsonData){
			            var jsonObj = JSON.parse(jsonData);
			            var html = '<h4>' + jsonObj.t + '</h4>';
			            for(var i in jsonObj.p){
			                html += '<p>' + jsonObj.p[i] + '</p>';
			            }
			            return html;
			        }
			        return function(data){
			            container.html(parseChapterData(data));
			        }
			    }
			    
			    function EventHanlder(){
			        //todo 交互的事件绑定
			        $('#action_mid').click(function(){
			            if (Dom.top_nav.hasClass('no-display')) {
			                Dom.top_nav.removeClass('no-display');
			                Dom.bottom_nav.removeClass('no-display');
			            } else {
			                Dom.top_nav.addClass('no-display');
			                Dom.bottom_nav.addClass('no-display');
			                Dom.font_container.addClass('no-display');
			                Dom.font_button.removeClass('select');
			            }
			        });
			        
			        Dom.font_button.click(function(){
			            if (Dom.font_container.hasClass('no-display')) {
			                Dom.font_container.removeClass('no-display');
			                Dom.font_button.addClass('select');
			            } else {
			                Dom.font_container.addClass('no-display');
			                Dom.font_button.removeClass('select');
			            }
			        });
			        
			        Dom.night_day_switch_button.click(function(){
			            //todo 触发背景切换的事件
			            if (NightMode) {
			                $('#font_normal').click();
			                turnDay();
			            } else {
			                $("#font_night").click();
			                turnNight();
			            }
			        });
			        
			        $('#large_font').click(function(){
			            if (initFontSize > 20) {
			                return;
			            }
			            initFontSize += 1;
			            RootContainer.css('font-size', initFontSize);
			            Util.StorageSetter('font-size', initFontSize);
			        });
			        
			        $('#samll_font').click(function(){
			            if (initFontSize < 12) {
			                return;
			            }
			            initFontSize -= 1;
			            RootContainer.css('font-size', initFontSize);
			            Util.StorageSetter('font-size', initFontSize);
			        });
			        
			        $('.bk-container').click(function(){
			            if (!$(this).find('div').hasClass('bk-container-current')) {
			                initBackground = $(this).attr('data-color');
    			            fontColor      = $(this).attr('data-font');
    			            
    			            $('body').css('background', initBackground);
    			            $('.m-read-content').css('color', fontColor);
    			            
    			            Util.StorageSetter('background', initBackground);
    			            Util.StorageSetter('font_color', fontColor);
    			            
    			            $('.bk-container').find('div').removeClass('bk-container-current');
    			            $(this).find('div').addClass('bk-container-current');
    			            turnDay();
    			            
    			            $('#font_night').click(function(){
    			                if (NightMode) {
    			                    turnDay();
    			                } else {
    			                    turnNight();
    			                }
    			            });
			            } 
			        });
			        
			        Win.scroll(function(){
			            Dom.top_nav.addClass('no-display');
			            Dom.bottom_nav.addClass('no-display');
			            Dom.font_container.addClass('no-display');
			            Dom.font_button.removeClass('select');
			        });
			        
			        $('#prev_button').click(function(){
			            //todo 获得章节的翻页数据->把数据拿出来渲染
			            readerModel.prevChapter(function(data){
			                readerUI(data);
			                Util.StorageSetter('initChapter', readerModel.getChapterId());
			            });
			        });
			        
			        $('#next_button').click(function(){
			            readerModel.nextChapter(function(data){
			                readerUI(data);
			                Util.StorageSetter('initChapter', readerModel.getChapterId());
			            });
			        });
			    }
			    
			    function turnDay() {
		            $('.night_icon').addClass('no-display');
		            $('.day_icon').removeClass('no-display');
		            NightMode = false;
		        }
			        
		        function turnNight() {
		            $('.day_icon').addClass('no-display');
		            $('.night_icon').removeClass('no-display');
		            NightMode = true;
		        }
			    
			    main();
			})();
