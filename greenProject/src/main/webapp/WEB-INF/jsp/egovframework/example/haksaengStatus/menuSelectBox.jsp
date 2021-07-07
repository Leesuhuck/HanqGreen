<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>

function vuejs(menuCATCD_Data) {
	
	var selectBoxOption = $("#storeMenuSelectBox");
		
		selectBoxOption.children("option").remove();
		
		if (menuCATCD_Data.length != 0) {
			
			menuCATCD_Data.forEach(function(map, idx) {
				
				var optionStr = "<option value=" + map.menuCd + ">" +
								map.menuNm + "\t" + map.menuPrc + "원</option>";
				
				selectBoxOption.append(optionStr);
				
			});
			
			console.log(typeof $("#storeMenuSelectBox").data().value);
			
		} else {
			
			var notOptionStr = "<option>없음</option>";
			
			selectBoxOption.append(notOptionStr);
			
		}
		
		selectBoxOption.selectric("refresh");	
	
};

$(function() {
	$(".sel").selectric();
	
	$("#conStoreSelectBox").change(function() {
		
		$.ajax({
			
			url : "/menuSelectBoxPartsDtl.do",
			
			data : {
				menuCATCD : $("#conStoreSelectBox").val()
			},
			
			success : function(data) {
				
				console.log(typeof data);
				vuejs(data);
				
			},
			
			error : function(data) {
				
			}
			
		});
		
	});
	
})

</script>

<div id="contents">
	<table class="tbl type02">	
		<tbody> 
			<tr>
				<th scope="row">편의점메뉴 분류</th>
				<td class="ta-l">
					<select id="conStoreSelectBox" name="conStoreSelectBox" class="sel short">
						<option>선택해주세요</option>
						<c:forEach items="${menuPartsMstList}" var="menuPart">
							<option value="${menuPart.menuCatCd}"><c:out value="${menuPart.menuCatNm}"></c:out></option>
						</c:forEach>
					</select>
					<select id="storeMenuSelectBox" name="storeMenuSelectBox" class="sel middle">
						<option>선택해주세요</option>
					</select>        
				</td>   
			</tr>
		</tbody>
	</table>
</div>

