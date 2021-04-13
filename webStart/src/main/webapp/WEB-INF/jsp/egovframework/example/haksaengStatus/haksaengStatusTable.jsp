<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

	var cliAlert = $("#alert1");
	var cliAlert2 = document.getElementById("#alert1");
	
	window.onclick(cliAlert){
		window.alert('1');
	}

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
			<tbody>
				<c:forEach items="${haksaengStatusList}" var="haksaengStatusInfo" >
					<tr>
						<td id = "alert1"><c:out value="${haksaengStatusInfo.rowCount}"></c:out></td>
						<td id = "alert1"><c:out value="${haksaengStatusInfo.userNm}"></c:out></td>
						<td id = "alert1"><c:out value="${haksaengStatusInfo.age}"></c:out></td>
						<td id = "alert1"><c:out value="${haksaengStatusInfo.cafeNick}"></c:out></td>
						<td id = "alert1"><c:out value="${haksaengStatusInfo.phone}"></c:out></td>
						<td id = "alert1"><c:out value="${haksaengStatusInfo.classNm}"></c:out></td>
						<td id = "alert1"><c:out value="${haksaengStatusInfo.gisuNm}"></c:out></td>
						<td id = "alert1"><c:out value="${haksaengStatusInfo.juchaNm}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>