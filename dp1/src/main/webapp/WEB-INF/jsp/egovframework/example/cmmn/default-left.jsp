<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script type="text/javascript">

var leftInitC = {
		
	leftClkA : function(liStr) {
		
		if (liStr === "initHaksaengStatusChart" || liStr === "initHaksaengStatusTable") {
			$("#leftFrm").attr("action", "/oneMapping.do");
		} else {
			$("#leftFrm").attr("action", "/" + liStr + ".do");
		}
		
		$("#pageName").val(liStr);
		
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
	<input type="hidden" id="userId" 		name="userId">
	<input type="hidden" id="userNm" 		name="userNm">
	<input type="hidden" id="pageName" 		name="pageName">
	<input type="hidden" id="haksaengName" 	name="haksaengName">
	<input type="hidden" id="param1" 		name="param1" value="hanq">
	<input type="hidden" id="param2" 		name="param2" value="twoq">
	<input type="hidden" id="param3" 		name="param3" value="samq">
	<input type="hidden" id="chkArr" 		name="chkArr">
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
					<li id="stringParam">
						<div>
							<a href="#">문자열보내기</a>
							<button type="button" class="btn-bookmark">
								<span class="hidden">즐겨찾기</span>
							</button>
						</div>
					</li>
					<li id="paramVO">
						<div>
							<a href="#">VO보내기</a>
							<button type="button" class="btn-bookmark">
								<span class="hidden">즐겨찾기</span>
							</button>
						</div>
					</li>
					<li id="reqParam">
						<div>
							<a href="#">@RequestParam</a>
							<button type="button" class="btn-bookmark">
								<span class="hidden">즐겨찾기</span>
							</button>
						</div>
					</li>
					<li id="modelAttr">
						<div>
							<a href="#">@ModelAttribute</a>
							<button type="button" class="btn-bookmark">
								<span class="hidden">즐겨찾기</span>
							</button>
						</div>
					</li>
					<li id="chkBox">
						<div>
							<a href="#">checkBox</a>
							<button type="button" class="btn-bookmark">
								<span class="hidden">즐겨찾기</span>
							</button>
						</div>
					</li>
					<li id="chkBox2">
						<div>
							<a href="#">checkBox2</a>
							<button type="button" class="btn-bookmark">
								<span class="hidden">즐겨찾기</span>
							</button>
						</div>
					</li>
					<li id="multiSelectBox">
						<div>
							<a href="#">multiSelectBox(ajax)</a>
							<button type="button" class="btn-bookmark">
								<span class="hidden">즐겨찾기</span>
							</button>
						</div>
					</li>
					<li id="initMenuSelectBox">
						<div>
							<a href="#">menuSelectBox</a>
							<button type="button" class="btn-bookmark">
								<span class="hidden">즐겨찾기</span>
							</button>
						</div>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</nav>
<!--// lnb -->