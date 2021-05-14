<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

	$(function() {
		
		$("tbody > tr").click(function() {
			
			var $allTd = $(this).children();
			
			$("#userId").val($allTd.eq(1).text());
			$("#userNm").val($allTd.eq(2).text());
			$("#cafeNick").val($allTd.eq(5).text());
			
			leftInitC.leftClkA("modelAttr");
			
		})
		
	});

</script>

<!-- contents -->
<div id="contents">
	<!-- 컨텐츠 -->
	<div class="content_wrap">
	<h2 class="fs-18 fw-b">수강생 테이블</h2><br>
	<p><c:out value="${vo.userId}"></c:out></p>
	<p><c:out value="${vo.userNm}"></c:out></p>
	<p><c:out value="${vo.cafeNick}"></c:out></p>
		<table class="tbl type02">
			<thead>
				<tr>
					<td>순번</td>
					<td>ID</td>
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
								<c:out value="${haksaengStatusInfo.userId}"></c:out>
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