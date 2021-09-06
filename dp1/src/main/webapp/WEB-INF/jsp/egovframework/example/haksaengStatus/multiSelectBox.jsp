<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>

function createOpts(partsDtlArr) {
	var	optStr 		= "",
	 	$partsDtlID = $("#partsDtl");
	
	$partsDtlID.children("option").remove();
	
	if (partsDtlArr.length > 0) {
		
		partsDtlArr.forEach(function(map, i) {
			optStr = "<option value=" + map.optCd + ">" +
					map.optNm + "</option>";
					
			$partsDtlID.append(optStr);
		});
	} else {
		optStr = "<option>없음</option>";
		
		$partsDtlID.append(optStr);
	}

	$partsDtlID.selectric("refresh");
}

$(function() {
	$(".sel").selectric();
	
	$("#partsMst").change(function() {
		
		$.ajax({
			url 		: "/selectPartsDtl.do",
			data 		: {partsCd : $("#partsMst").val()},
			
			success : function(partsDtlObj) {
				
				createOpts(partsDtlObj);
			}
		});
	});
});

</script>

<div id="contents">
	<table class="tbl type02">	
		<tbody> 
			<tr>
				<th scope="row">컴퓨터 부품 선택</th>
				<td class="ta-l">
					<select id="partsMst" name="partsMst" class="sel short">
						<option>없음</option>
						<c:forEach items="${mainPartsList}" var="mainPartsInfo">
							<option value="${mainPartsInfo.partsCd}">
								<c:out value="${mainPartsInfo.partsNm}"/>
							</option>
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

