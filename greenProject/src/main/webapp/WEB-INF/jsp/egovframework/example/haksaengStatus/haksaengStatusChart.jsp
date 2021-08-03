<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

var fieldC = {
		
	messageA : "한큐"		
}

var eventC = {
	
	clickM : function() {
		
		var that = this;
		
		$("#btn").click(function() {
			
			alert(that.messageA);
			
		});
		
	}
}

$(function(){
	
	eventC.clickM.call(fieldC);

	var labelArr = [],
		dataArr  = [],
		ltt 	 = "${haksaengStatusChartList}";
	
	//items : 리스트를 받아올 배열, var : for문 내부에서 사용할 변수, varStatus : 상태용 변수(index 및 for문 제어)
	<c:forEach items="${haksaengStatusChartList}" var="haksaengStatusChartInfo" varStatus="status" >
		labelArr[${status.index}] 	= "${haksaengStatusChartInfo.classNm}";
		dataArr[${status.index}] 	= "${haksaengStatusChartInfo.cont}";
		console.log("${haksaengStatusChartInfo}");
	</c:forEach>
	
	console.log(ltt);
	console.log(labelArr);
	
	var config = {
			type: 'pie',
			data: {
				datasets: [{
					data:dataArr,
					backgroundColor: [
						window.chartColors.red,
						window.chartColors.yellow,
						window.chartColors.green,
						window.chartColors.blue,
					],
					label: 'Dataset 1'
				}],
				labels:labelArr,
			},
			options: {
				responsive: true
			}
		};
	
	var ctx = $("#chart-area")[0].getContext('2d');
	window.myPie = new Chart(ctx, config);
	
	$("#chart-area").click(function(evt){
	    		
	    var firstPoint = myPie.getElementAtEvent(evt)[0];
	    
	    if (firstPoint) {
	    	
	        var label = myPie.data.labels[firstPoint._index];
	        
	        $.ajax ({
	        	
	        	url : "/selectHaksaengStatusList.do",
	        	
	        	type : "post",
	        	
	        	data : {"param" : label},
	        	
	        	success : function(data) {
	        		
	        		$("#paramId").remove();
	        		
	        		data.forEach(function(map, idx) {
	        			
	        			var optionStr = 
	        			"<tr>" 
		        			+ "<td>" + idx + "</td>" +
		        			"<td>" + map.userId + "</td>" +
		        			"<td>" + map.userNm + "</td>" +
		        			"<td>" + map.age + "</td>" +
		        			"<td>" + map.cafeNick + "</td>" +
		        			"<td>" + map.phone + "</td>" +
		        			"<td>" + map.classNm + "</td>" +
		        			"<td>" + map.gisuNm + "</td>" +
		        			"<td>" + map.juchaNm + "</td>" +
	        			"</tr>"
	        			
	        			$("#paramId").append(optionStr);
	        			
	        		});
	        		
	        	}
	        });
	    }
		
	});
	
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
			<canvas id="chart-area" style="cursor:pointer; display: block; height: 242px; width: 484px;" width="605"
					height="302" class="chartjs-render-monitor">
			</canvas>
		</div>
		<div class="btn-wrap mgt-20">
		  <div class="f-r">
			<ul>
			  <li>
				<button id="btn" type="button" class="btn type03 f-r">검색</button>
			  </li>
			</ul>
		  </div>
		</div>
		<h2 class="fs-18 fw-b">수강생 테이블</h2><br>
		<table class="tbl type02">
			<thead>
				<tr>
					<th scope="row">순번</th>
					<th scope="row">아이디</th>
					<th scope="row">이름</th>
					<th scope="row">나이</th>
					<th scope="row">닉네임</th>
					<th scope="row">핸드폰번호</th>
					<th scope="row">수업과정</th>
					<th scope="row">기수</th>
					<th scope="row">주차</th>
				</tr>
			</thead>
			<tbody id = "paramId">
			</tbody>
		</table>
	</div>
</div>
<!--// contents -->