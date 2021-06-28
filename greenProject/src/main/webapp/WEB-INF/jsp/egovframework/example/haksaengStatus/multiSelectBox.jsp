<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>

function createSelectBoxOptions(str) {
	
	// partsDetail(List)Arr
	var partsDtlArr = JSON.parse(str);
	var selectTwoBoxOption = $("#partsDtl > option");
	
	selectTwoBoxOption.remove();
	
	if (partsDtlArr.length != 0) {
		
		partsDtlArr.forEach(function(map, idx) {
			
			var optionStr = "<option value=" + map.partsCd + ">" +
							map.optNm + "</option>";
			
			$("#partsDtl").append(optionStr);
			
		});
		
		console.log(typeof $("#partsMst").data().value);
		
	} else {
		
		var notOptionStr = "<option>없음</option>";
		
		$("#partsDtl").append(notOptionStr);
		
	}
	
	$("#partsDtl").selectric("refresh");
	
};

// 내 방법
function createIdx(idxs) {
	
	<c:forEach items="${partsMstList}" var="par">
		if ("${par.partsNm}" === idxs) {
			return "${par.partsCd}"
		}
	</c:forEach>
	
}

$(function() {
	
	$(".sel").selectric();
	
	$("#partsMst").change(function() {
		
		$.ajax({
			url : "/selectPartsDtl.do",
			data : {
				//partsCd : createIdx($("#partsMst").data().value)
				partsCd : $("#partsMst").val() 
			},

			success : function(data) {
				
				console.log(data);
				console.log(typeof data);
				console.log(JSON.parse(data));
				
				createSelectBoxOptions(data);
				
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

