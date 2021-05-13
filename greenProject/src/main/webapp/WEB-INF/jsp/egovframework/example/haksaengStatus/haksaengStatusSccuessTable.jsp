<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

	$(function() {
		
		$("#testData > tr").click(function() {
			
			var $trNm =  $(this).children();
			
			console.log(this.innerText);
			alert($trNm.eq(4).text().trim());
			
			$("#testNm").val($trNm.eq(4).text().trim());
			
			leftInitC.leftClkA("initHaksaengStatusTestTable");
			
		});
		
		<c:forEach items="${haksaengStatusTestTableList}" var="$initHaksaengStatusTestData">
			console.log("${haksaengStatusTestTableList}");             
		</c:forEach>
	
	});

</script>

<div id="contents">
	<!-- 컨텐츠 -->
	<div class="content_wrap">
	<h2 class="fs-18 fw-b">수강생 테이블</h2><br>

		<table class="tbl type02">
			<thead>
				<tr>
					<td>순번</td>
					<td>나이</td>
					<td>전화번호</td>
					<td>OS</td>
					<td>프로그래밍언어</td>
					<td>닉네임</td>
				</tr>
			</thead>
			<tbody id = "testData">
				<c:forEach items="${haksaengStatusTestTableList}" var="$initHaksaengStatusTestData">
					<tr>
						<td><c:out value="${$initHaksaengStatusTestData.numbers}"></c:out></td>
						<td><c:out value="${$initHaksaengStatusTestData.age}"></c:out></td>
						<td><c:out value="${$initHaksaengStatusTestData.phone}"></c:out></td>
						<td><c:out value="${$initHaksaengStatusTestData.pcId}"></c:out></td>
						<td><c:out value="${$initHaksaengStatusTestData.pcNm}"></c:out></td>
						<td><c:out value="${$initHaksaengStatusTestData.cafeNick}"></c:out></td>
					</tr>             
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>