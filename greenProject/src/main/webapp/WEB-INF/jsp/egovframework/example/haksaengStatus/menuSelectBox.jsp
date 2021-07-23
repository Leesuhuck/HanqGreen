<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>

function serveSelVal(strPartsDtlObj) {
	
	var selectBoxOption = $("#conStroeSetBox");
	
	// 초기화
	selectBoxOption.children("option").remove();
	
	// 선택된 conStroeBox에서 데이터가 1개라도 있을때 해당 option 태그 생성
	if (strPartsDtlObj.length != 0) {
		
		strPartsDtlObj.forEach(function(map, idx) {
			
			var optionStr = "<option value=" + map.menuCd + ">" +
							map.menuNm + "\t" + map.menuPrc + "원</option>";
			
			selectBoxOption.append(optionStr);
			
		});
		
	}
	
	// 선택된 conStroeBox에서 데이터가 1개라도 없으면 option 태그 값 없음으로 생성
	else {
		
		var notOptionStr = "<option>없음</option>";
		
		selectBoxOption.append(notOptionStr);
		
	}
	
	selectBoxOption.selectric("refresh");
	
}

$(function() {
	$(".sel").selectric();
	
	// conStroeBox의 셀렉트 박스가 바뀌었을때 실행
	$("#conStroeBox").change(function() {
		
		/**
			url : menuSelectSetPartsDtl.do 로 설정
			data : menuCatCd (key) : conStroeBox에 변환에 따른 (value)
		*/
		$.ajax({
			url : "/menuSelectSetPartsDtl.do",
			data : {
				menuCatCd : $("#conStroeBox").val() 
			},
			//dataType : "text",
			
			// 성공시 serveSelVal 함수 실행
			success : function(partsDtlObj) {
				console.log(typeof partsDtlObj);
				
				serveSelVal(partsDtlObj);
				
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
				<th scope="row">메뉴 분류</th>
				<td class="ta-l">
					<select id="conStroeBox" name="conStroeBox" class="sel short">
						<option>선택해주세요</option>
						<c:forEach items="${menuPartsMstList}" var="MPML">
							<option value="${MPML.menuCatCd}"><c:out value="${MPML.menuCatNm}"></c:out></option>
						</c:forEach>
					</select>
					<select id="conStroeSetBox" name="conStroeSetBox" class="sel middle">
						<option>선택해주세요</option>
					</select>        
				</td>   
			</tr>
		</tbody>
	</table>
</div>

