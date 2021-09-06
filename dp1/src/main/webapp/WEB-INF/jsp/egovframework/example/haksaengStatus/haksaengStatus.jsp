<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

	$(function() {
		var labelArr = [],
			dataArr  = [];
		
		<c:forEach items="${haksaengChartList}" var="haksaengChartInfo" varStatus="status">
			labelArr[${status.index}] 	= "${haksaengChartInfo.classNm}";
			dataArr[${status.index}] 	= "${haksaengChartInfo.cnt}";
		</c:forEach>
		
		var config = {
			type: 'pie',
			data: {
				datasets: [{
					data: dataArr,
					backgroundColor: [
						window.chartColors.red,
						window.chartColors.yellow,
						window.chartColors.green,
						window.chartColors.blue,
					],
					label: 'Dataset 1'
				}],
				labels: labelArr
			},
			options: {
				responsive: true
			}
		};
		
		var ctx = $("#chart-area")[0].getContext("2d");
		
		window.myPie = new Chart(ctx, config);
	});

</script>

<!-- contents -->
<div id="contents">
	<!-- 컨텐츠 -->
	<div class="content_wrap">
		<h2 class="fs-18 fw-b">수강생 현황 차트</h2>
		<div id=" canvas-holder" style="width:40%">
			<div class="chartjs-size-monitor">
				<div class="chartjs-size-monitor-expand">
					<div class="">
					</div>
				</div>
				<div class="chartjs-size-monitor-shrink">
					<div class="">
					</div>
				</div>
			</div>
			<canvas id="chart-area" style="display: block; height: 242px; width: 484px;" width="605"
				height="302" class="chartjs-render-monitor"></canvas>
	</div>

	<h2 class="fs-18 fw-b">수강생 테이블</h2><br>

		<table class="tbl type02">
			<tbody>
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