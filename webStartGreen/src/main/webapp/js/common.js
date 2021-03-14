$(document).ready(function() {
	
	// lnb ////////////////////////////////////////////////////////

	// 해당 페이지 메뉴효과
	$('#lnb .depth1>li.on .depth2').show();

	// 아코디언 효과
	$("#lnb").on("click",".depth1>li>div",function(event) { // 1뎁스 메뉴 클릭
		if($(this).parent().hasClass('on')) {
			$(this).parent().removeClass('on');
			//$(this).parent().find('.depth2').stop().slideUp();
		}else{
			$(this).parent().siblings().removeClass('on');
			$(this).parent().addClass('on');
			//$(this).parent().siblings().find('.depth2').stop().slideUp();
			//$(this).parent().find('.depth2').stop().slideDown();
		}
	});

	// 영역 show & hide
	$('#lnb .btn-lnb').on('click', function() {
		$(this).toggleClass('on');
		$('#container #contents').toggleClass('pl0');
		$('#lnb').toggleClass('hide');

		// 스크롤 show & hide
		$('#lnb .scrollbar-inner > .scroll-element.scroll-y').toggleClass('din');
	});
});

// 즐겨찾기 별 버튼 ////////////////////////////////////////////////
$(document).on("click",".btn-bookmark",function(event) {
	$(this).toggleClass('on');
});