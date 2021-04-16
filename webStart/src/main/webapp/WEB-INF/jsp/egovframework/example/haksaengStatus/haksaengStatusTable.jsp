<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

	$(function() {
		
		/*
		* 이벤트 리스너 미적용
		var cliAr = $("#alert1")[0];
		//var cliAr = document.getElementById("alert1");
		
		cliAr.onclick = function() {
			window.alert('1');
		}
		*/
		
		/*
		// 이벤트 리스너 적용		
		$("#alert1").click(function(){
		// $("tbody > tr") 도 가능
			
			alert('1');
			
		});
		*/
		$("#haven").attr("action","/oneLove.do");
		
		$("tbody > tr").click(function() {
		
			var let = "$(haksaengStatusList)";
			var lets = "${haksaengStatusList}";
			console.dir(let);
			console.dir(lets);
			console.dir($(this));
			console.log($(this));
			// children도 같은 자식요소 선택자이다.
			/*
			문자열리터럴 타겟을 잡을시 꺽새를통해 자식요소 선택자를 지정해줄수 있다.
			this는 문자열 리터럴이 아니다. 이럴때는 문자열리터럴을 못써서 칠드런을 사용한다.
			*/
			
			var $allTd = $(this).children();
			
			$("#tName").val(($allTd.eq(1).text().trim()));
			
			leftInitC.leftClkA("initHaksaengStatusTable");
			
		});
		
	});

</script>

<!-- contents -->
<div id="contents">
	<!-- 컨텐츠 -->
	<div class="content_wrap">
	<h2 class="fs-18 fw-b">수강생 테이블</h2><br>

		<table class="tbl type02">
			<thead>
				<tr>
					<td>순번</td>
					<td>이름</td>
					<td>나이</td>
					<td>닉네임</td>
					<td>전화번호</td>
					<td>수업 과정</td>
					<td>기수</td>
					<td>주차</td>
				</tr>
			</thead>
			<tbody id = "alert1" >
				<c:forEach items="${haksaengStatusList}" var="haksaengStatusInfo" >
					<tr>
						<td>
							<a href = "#">
								<c:out value="${haksaengStatusInfo.rowCount}"></c:out>
							</a>
						</td>
						<td>
							<a href = "#">
								<c:out value="${haksaengStatusInfo.userNm}"></c:out>
							</a>
						</td>
						<td>
							<a href = "#">
								<c:out value="${haksaengStatusInfo.age}"></c:out>
							</a>
						</td>
						<td>
							<a href = "#">
								<c:out value="${haksaengStatusInfo.cafeNick}"></c:out>
							</a>
						</td>
						<td>
							<a href = "#">
								<c:out value="${haksaengStatusInfo.phone}"></c:out>
							</a>
						</td>
						<td>
							<a href = "#">
								<c:out value="${haksaengStatusInfo.classNm}"></c:out>
							</a>
						</td>
						<td>
							<a href = "#">
								<c:out value="${haksaengStatusInfo.gisuNm}"></c:out>
							</a>
						</td>
						<td>
							<a href = "#">
								<c:out value="${haksaengStatusInfo.juchaNm}"></c:out>
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>