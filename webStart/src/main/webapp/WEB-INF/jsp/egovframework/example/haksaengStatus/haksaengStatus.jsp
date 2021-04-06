<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- contents -->
<div id="contents">
	<!-- 컨텐츠 -->
	<div class="content_wrap">
		<script>
			var config = {
				type: 'pie',
				data: {
					datasets: [{
						data: [1, 3, 2, 1],
						backgroundColor: [
							window.chartColors.red,
							window.chartColors.yellow,
							window.chartColors.green,
							window.chartColors.blue,
						],
						label: 'Dataset 1'
					}],
					labels: [
						'생존전략',
						'Yellow',
						'Green',
						'Blue'
					]
				},
				options: {
					responsive: true
				}
			};

			window.onload = function () {
				var ctx = document.getElementById('chart-area').getContext('2d');
				window.myPie = new Chart(ctx, config);
			};

		</script>
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
					<td>순번</td>
					<td>이름</td>
					<td>나이</td>
					<td>닉네임</td>
					<td>전화번호</td>
					<td>수업 과정</td>
					<td>기수</td>
					<td>주차</td>
				</tr>
				<c:forEach items="${haksaengStatusList}" var="haksaengStatusInfo" >
					<tr>
						<td><c:out value="${haksaengStatusInfo.rowCount}"></c:out></td>
						<td><c:out value="${haksaengStatusInfo.userNm}"></c:out></td>
						<td><c:out value="${haksaengStatusInfo.age}"></c:out></td>
						<td><c:out value="${haksaengStatusInfo.cafeNick}"></c:out></td>
						<td><c:out value="${haksaengStatusInfo.phone}"></c:out></td>
						<td><c:out value="${haksaengStatusInfo.classNm}"></c:out></td>
						<td><c:out value="${haksaengStatusInfo.gisuNm}"></c:out></td>
						<td><c:out value="${haksaengStatusInfo.juchaNm}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>