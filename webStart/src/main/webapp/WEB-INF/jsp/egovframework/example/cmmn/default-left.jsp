<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script type="text/javascript">

var leftInitC = {
		
	leftClkA : function(liStr) {
		
		if (liStr === "initHaksaengStatusChart" || liStr === "initHaksaengStatusTable") {
			$("#pageName").val(liStr);
			$("#leftFrm").attr("action", "/oneLove.do");
		}
		else {
			$("#pageName").val(liStr);
			$("#leftFrm").attr("action", "/" + liStr + ".do")	
		}

		$("#leftFrm").submit();
	}
}

$(function() {
	$("#${param.pageName}").attr("class", "on");
	
	$(".depth2 > li").click(function() {
		
		leftInitC.leftClkA($(this).attr("id"));
	});
});

</script>

<form id="leftFrm" method="post">
	<input type="hidden" id="pageName" name="pageName">
</form>

<!-- lnb -->
<nav id="lnb">
	<button type="button" class="btn btn-lnb"><i class="ico-arr-left01"></i><span
			class="hidden"></span></button>
	<div class="scrollbar-inner">
		<ul class="depth1">
			<li class="on">
				<div>
					<a href="javascript:;">수강생 수료 현황</a>
				</div>
				<ul class="depth2">
					<li id="initHaksaengStatus">
						<div>
							<a href="#">
								종합정보
							</a>
							<button type="button" class="btn-bookmark">
								<span class="hidden">
									즐겨찾기
								</span>
							</button>
						</div>
					</li>					
					<li id="initHaksaengStatusChart">
						<div>
							<a href="#">
								차트
							</a>
							<button type="button" class="btn-bookmark">
								<span class="hidden">
									즐겨찾기
								</span>
							</button>
						</div>
					</li>
					<li id="initHaksaengStatusTable">
						<div>
							<a href="#">
								테이블
							</a>
							<button type="button" class="btn-bookmark">
								<span class="hidden">
									즐겨찾기
								</span>
							</button>
						</div>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</nav>
<!--// lnb -->