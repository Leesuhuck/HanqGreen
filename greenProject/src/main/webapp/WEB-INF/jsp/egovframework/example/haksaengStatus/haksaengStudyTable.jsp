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
		
		
		$("#introductionTable > tr").click(function(){
			
			$("#haven").attr("action","/initIntroductionTable.do");
			
			console.log($("#introductionTable > tr"));
			console.log($(this));
						
			window.alert("저의닉네임은 " + $(this).children().eq(3).text().trim() + "입니다.");
			$("#paramListFirst").val($(this).children().eq(1).text().trim());
			$("#paramListSecond").val($(this).children().eq(3).text().trim());
			$("#paramListThird").val($(this).children().eq(2).text().trim());
			$("#pcId").val($(this).children().eq(8).text().trim());
			$("#pcNm").val($(this).children().eq(9).text().trim());
			$("#userNm").val($(this).children().eq(1).text().trim());
			
			leftInitC.leftClkA("initIntroductionTable");
			
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
			<tbody id = "introductionTable" >
				<c:forEach items="${introduction}" var="haksaengStatusInfo" >
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
						<td>
							<a href = "#">
								<c:out value="${haksaengStatusInfo.pcId}"></c:out>
							</a>
						</td>
						<td>
							<a href = "#">
								<c:out value="${haksaengStatusInfo.pcNm}"></c:out>
							</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<p>PC정보</p>
		<p>사용자 : <c:out value="${studyVO.userNm}"></c:out></p>
		<p>OS : <c:out value="${studyVO.pcId}"></c:out></p>
		<p>주 언어 : <c:out value="${studyVO.pcNm}"></c:out></p>
	</div>
</div>