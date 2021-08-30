<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

var fieldC = {
		
		labelArr : [],
		dataArr  : [],
		myPieA 	 : null
	}

var chartC = {

	configM : function() {
			
		<c:forEach items="${haksaengStatusChartList}" var="haksaengStatusChartInfo" varStatus="status" >
			this.labelArr[${status.index}] 	= "${haksaengStatusChartInfo.classNm}";
			this.dataArr[${status.index}] 	= "${haksaengStatusChartInfo.cont}";
		</c:forEach>
		
		var config = {
				type: 'pie',
				data: {
					datasets: [{
						data:this.dataArr,
						backgroundColor: [
							window.chartColors.red,
							window.chartColors.yellow,
							window.chartColors.green,
							window.chartColors.blue,
						],
						label: 'Dataset 1'
					}],
					labels:this.labelArr,
				},
				options: {
					responsive: true
				}
			}
		return config;
	},
	
	createM : function() {
		var ctx = $("#chart-area")[0].getContext('2d');
		
		this.myPieA = new Chart(ctx, chartC.configM.call(this));
		
	}
}

var eventC = {
	
	clickM : function() {
		
		var that = this;
		
		$("#chart-area").click(function(evt){
		    		
		    var firstPoint = that.myPieA.getElementAtEvent(evt)[0];
		    
		    //데이터가 없을시 없음 옵션을 넣어주기 위한 if구문
		    if ($("#paramId > tr").length > 0) {
		    	
		    	//데이터를 지우지않으면 두번째 셀랙트박스는 계속 쌓이기에 설정
		    	$("#paramId > tr").remove();
		    }
		    
		    if (firstPoint) {
		    	
		        var label = that.myPieA.data.labels[firstPoint._index];
		        
		        $.ajax ({
		        	
		        	url : "/selectHaksaengStatusList.do",
		        	
		        	type : "post",
		        	
		        	//data는 두번째 셀랙트 where 조건인 메뉴 분류코드(첫번째 셀랙트박스 선택값의미)
		        	data : {"param" : label},
		        	
		        	success : function(data) {
		        		
		        		//두번째 셀랙트박스 데이터 생성하는 함수
		        		data.forEach(function(obj, i){
		        			
		        			var tr = document.createElement("tr")
		        			
		        			for (var k in obj) {
		        				var td = document.createElement("td")
		        				
		        				$(td).text(obj[k]);
		        				$(tr).append(td);
		        			}
		        			$("#paramId").append(tr)

		        		})
		        	},
		        	
		        	error : function(res, errorStatus, errorMsg) {
						console.log(res);
						console.log(errorStatus);
						console.log(errorMsg);
						
					}
		        })
		    }
			
		})
	}
}

var initC = {
	
	settingM : function() {
		chartC.createM.call(this)
		eventC.clickM.call(this)
	}
}

$(function(){
	
	initC.settingM.call(fieldC)
	
})

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