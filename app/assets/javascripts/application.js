// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require_tree .

// landing page 动画效果
new WOW().init();

// 购物车效果
$(function() {
    var offset = $("#end").offset();
    $(".addCartBtn").click(function(event){
        var addcar = $(this);
        var img = addcar.closest('.productList-item').find('.productList-item-pic img').attr('src');
        if (!img) img = $('#thumb').attr('src');
        var flyer = $('<img class="u-flyer" src="'+img+'">');
        flyer.fly({
            start: {
                left: event.pageX - 20, //开始位置（必填）#fly元素会被设置成position: fixed
                top: event.clientY - 20 //开始位置（必填）
            },
            end: {
                left: $('.fa-shopping-cart').offset().left, //结束位置（必填）
                top: $('.fa-shopping-cart').offset().top - $(window).scrollTop(), //结束位置（必填）
                width: 10, //结束时宽度
                height: 10 //结束时高度
            },
            onEnd: function(){ //结束回调
                this.destory(); //移除dom
            }
        });
    });
});
