<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script type="text/javascript">

var leftInitC = {
		
	leftClkA : function(liStr) {
		
		$("#pageName").val(liStr);
		
		if (liStr === "initHaksaengStatusChart" || liStr === "initHaksaengStatusTable") {
			
			$("#leftFrm").attr("action", "/oneLove.do");
			
		}
		else if (liStr === "initHaksaengStatusTestTable") {
			
			$("#leftFrm").attr("action","/testServer.do");
			
		}
		else {
			
			$("#leftFrm").attr("action", "/" + liStr + ".do")
			
		}
		
		$("#leftFrm").submit(); // form의 논리적 주소와 그 안에 있는 input 데이터들을 모두 *전송*
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
	<input type = "hidden" id = "tName" name = "tName"/>
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
					<li id="initHaksaengStatusTestTable">
						<div>
							<a href="#">
								연습테이블
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