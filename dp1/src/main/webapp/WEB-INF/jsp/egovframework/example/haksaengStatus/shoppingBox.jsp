<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>

function createPartsChoiceOptions(str) {
	
	// partsDetail(List)Arr
	var partsDtlArr = JSON.parse(str);
	var partsDtlOpt = $("#partsChoice > option");
	
	partsDtlOpt.remove();
	
	if (partsDtlArr.length != 0) {
		
		partsDtlArr.forEach(function(map, idx) {
			
			var optionStr = "<option value=" + map.choId + ">" +
							map.choNm + "</option>";
			
			$("#partsChoice").append(optionStr);
			
		});
		
		//console.log(typeof $("#partsMst").data().value);
		
	} else {
		
		var notOptionStr = "<option>없음</option>";
		
		$("#partsChoice").append(notOptionStr);
		
	}
	
	$("#partsChoice").selectric("refresh");
	
};

function createPartsProductOptions(str) {
	
	// partsDetail(List)Arr
	var partsDtlArr = JSON.parse(str);
	var partsDtlOpt = $("#partsProduct > option");
	
	partsDtlOpt.remove();
	
	if (partsDtlArr.length != 0) {
		
		partsDtlArr.forEach(function(map, idx) {
			
			var optionStr = "<option value=" + map.choId + ">" +
							map.proNm + "</option>";
			
			$("#partsProduct").append(optionStr);
			
		});
		
		//console.log(typeof $("#partsMst").data().value);
		
	} else {
		
		var notOptionStr = "<option>없음</option>";
		
		$("#partsProduct").append(notOptionStr);
		
	}
	
	$("#partsProduct").selectric("refresh");
	
};

//내 방법
function createIdx(idxs) {
	
	<c:forEach items="${partsMstList}" var="par">
		if ("${par.partsNm}" === idxs) {
			return "${par.partsCd}"
		}
	</c:forEach>
	
}

$(function() {
	
	$(".sel").selectric();
	
	$("#partsKind").change(function() {
		
		$.ajax({
			url : "/shoppingBox.do",
			data : {
				//partsCd : createIdx($("#partsMst").data().value)
				id : $("#partsKind").val()
				
			},

			success : function(data) {
				
				console.log(typeof data);
				console.log(JSON.parse(data));
				
				createPartsChoiceOptions(data);
				
			}
			
		})

	});
	
	$("#partsChoice").change(function() {
		
		$.ajax({
			url : "/shoppingChoiceBox.do",
			data : {
				
				choId : $("#partsChoice").val()
				
			},

			success : function(data) {
				
				console.log(data);
				console.log(typeof data);
				console.log(JSON.parse(data));
				
				createPartsProductOptions(data);
				
			}
			
		})

	});
	

});

</script>

<div id="contents">
	<table class="tbl type02">	
		<tbody> 
			<tr>
				<th scope="row">제품 부품 선택</th>
				<td class="ta-l">
					<select id="partsKind" name="partsKind" class="sel short">
						<option>없음</option>
						<c:forEach items="${shoppingBoxPartsList}" var="SBL">
							<option value="${SBL.id}"><c:out value="${SBL.nm}"></c:out></option>
						</c:forEach>
					</select>
					<select id="partsChoice" name="partsChoice" class="sel middle">
						<option>없음</option>
					</select>
					<select id="partsProduct" name="partsProduct" class="sel middle">
						<option>없음</option>
					</select>          
				</td>   
			</tr>
		</tbody>
	</table>
</div>

