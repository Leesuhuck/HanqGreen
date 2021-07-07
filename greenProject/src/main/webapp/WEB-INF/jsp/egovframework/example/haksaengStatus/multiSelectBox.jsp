<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>

// partsDtl의 셀렉트 박스 Option 선언
function createSelectBoxOptions(str) {
	
	var selectBoxOption = $("#partsDtl");
	
	// 초기화
	selectBoxOption.children("option").remove();
	
	// 선택된 partsMst에서 데이터가 1개라도 있을때 해당 option 태그 생성
	if (str.length != 0) {
		
		str.forEach(function(map, idx) {
			
			var optionStr = "<option value=" + map.partsCd + ">" +
							map.optNm + "</option>";
			
			selectBoxOption.append(optionStr);
			
		});
		
	}
	
	// 선택된 partsMst에서 데이터가 1개라도 없으면 option 태그 값 없음으로 생성
	else {
		
		var notOptionStr = "<option>없음</option>";
		
		selectBoxOption.append(notOptionStr);
		
	}
	
	selectBoxOption.selectric("refresh");
	
};

$(function() {
	
	$(".sel").selectric();
	
	// partsMst의 셀렉트 박스가 바뀌었을때 실행
	$("#partsMst").change(function() {
		
		/**
			url : selectPartsDtl.do 로 설정
			data : partsCd (key) : partsMst에 변환에 따른 (value)
		*/
		$.ajax({
			url : "/selectPartsDtl.do",
			data : {
				partsCd : $("#partsMst").val() 
			},
			//dataType : "text",
			
			// 성공시 createSelectBoxOptions 함수 실행
			success : function(partsDtlObj) {
				
				console.log(partsDtlObj);
				console.log(typeof partsDtlObj);
				createSelectBoxOptions(partsDtlObj);
				
			},
			
			// 실패시 res, errorStatus, errorMsg 매개변수 확인
			error : function(res, errorStatus, errorMsg) {
				console.log(res);
				console.log(errorStatus);
				console.log(errorMsg);
				
			}
			
		})

	});

})

</script>

<div id="contents">
	<table class="tbl type02">	
		<tbody> 
			<tr>
				<th scope="row">컴퓨터 부품 선택</th>
				<td class="ta-l">
					<select id="partsMst" name="partsMst" class="sel short">
						<option>없음</option>
						<c:forEach items="${partsMstList}" var="par">
							<option value="${par.partsCd}"><c:out value="${par.partsNm}"></c:out></option>
						</c:forEach>
					</select>
					<select id="partsDtl" name="partsDtl" class="sel middle">
						<option>없음</option>
					</select>        
				</td>   
			</tr>
		</tbody>
	</table>
</div>

