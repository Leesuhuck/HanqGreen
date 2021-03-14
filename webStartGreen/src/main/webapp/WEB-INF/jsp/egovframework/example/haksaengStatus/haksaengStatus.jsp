<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

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
		<colgroup>
			<col style="width:10%;">
			<col style="width:20%;">
			<col style="width:20%;">
			<col style="width:20%;">
			<col style="width:20%;">
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">순번</th>
					<th scope="row">이름</th>
					<th scope="row">나이</th>
					<th scope="row">닉네임</th>
					<th scope="row">신청한수업</th>
				</tr>
				<tr>
					<td class="ta-c">1</td>
					<td class="ta-c">한큐</td>
					<td class="ta-c">25</td>
					<td class="ta-c">hanq</td>
					<td class="ta-c">Yellow</td>
				</tr>
				<tr>
					<td class="ta-c">2</td>
					<td class="ta-c">두큐</td>
					<td class="ta-c">26</td>
					<td class="ta-c">twoq</td>
					<td class="ta-c">생존전략</td>
				</tr>
				<tr>
					<td class="ta-c">3</td>
					<td class="ta-c">석삼</td>
					<td class="ta-c">27</td>
					<td class="ta-c">suksam</td>
					<td class="ta-c">Green</td>
				</tr>
				<tr>
					<td class="ta-c">4</td>
					<td class="ta-c">너구리</td>
					<td class="ta-c">28</td>
					<td class="ta-c">youcu</td>
					<td class="ta-c">Yellow</td>
				</tr>
				<tr>
					<td class="ta-c">5</td>
					<td class="ta-c">오징어</td>
					<td class="ta-c">29</td>
					<td class="ta-c">jing-a</td>
					<td class="ta-c">Yellow</td>
				</tr>
				<tr>
					<td class="ta-c">6</td>
					<td class="ta-c">육개장</td>
					<td class="ta-c">30</td>
					<td class="ta-c">sixdog</td>
					<td class="ta-c">Green</td>
				</tr>
				<tr>
					<td class="ta-c">7</td>
					<td class="ta-c">칠면조</td>
					<td class="ta-c">31</td>
					<td class="ta-c">seven</td>
					<td class="ta-c">Blue</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>