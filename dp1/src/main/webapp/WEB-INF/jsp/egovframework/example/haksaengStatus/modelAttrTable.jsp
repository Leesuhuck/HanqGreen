<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

$(function() {
	
	$("tbody > tr").click(function() {
		var $allTd = $(this).children();
		
		$("#userId").val($allTd.eq(1).text());
		$("#userNm").val($allTd.eq(2).text());
		
		leftInitC.leftClkA("modelAttr");
	});
});

</script>
<!-- contents -->
<div id="contents">
	<!-- 컨텐츠 -->
	<div class="content_wrap">
	<h2 class="fs-18 fw-b">수강생 테이블</h2><br>
	<c:out value="${vo.userNm}"></c:out>
		<table class="tbl type02">
			<thead>
				<tr>
					<th scope="row">순번</th>
					<th scope="row">아이디</th>
					<th scope="row">이름</th>
					<th scope="row">나이</th>
					<th scope="row">닉네임</th>
					<th scope="row">핸드폰 번호</th>
					<th scope="row">수업 과정</th>
					<th scope="row">기수</th>
					<th scope="row">주차</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${haksaengList}" var="haksaengInfo">
					<tr>
						<td><c:out value="${haksaengInfo.num}"></c:out></td>
						<td><c:out value="${haksaengInfo.userId}"></c:out></td>
						<td><c:out value="${haksaengInfo.userNm}"></c:out></td>
						<td><c:out value="${haksaengInfo.age}"></c:out></td>
						<td><c:out value="${haksaengInfo.cafeNick}"></c:out></td>
						<td><c:out value="${haksaengInfo.phone}"></c:out></td>
						<td><c:out value="${haksaengInfo.classNm}"></c:out></td>
						<td><c:out value="${haksaengInfo.gisuNm}"></c:out></td>
						<td><c:out value="${haksaengInfo.juchaNm}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>