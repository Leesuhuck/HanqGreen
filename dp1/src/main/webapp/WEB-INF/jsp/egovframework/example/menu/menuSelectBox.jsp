<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>

function createOpts(menuDtlArr) {
	var	optStr 		= "",	// 셀랙트박스에 들아갈 html 스트링
	 	$menuDtlID = $("#menuDtl");
	
	$menuDtlID.children("option").remove();

	if (menuDtlArr.length > 0) {
		
		menuDtlArr.forEach(function(map, i) {
			optStr = "<option value=" + map.menuCd + ">" +
					map.menuNm + "</option>";
					
			$menuDtlID.append(optStr);
		});
	} else {
		optStr = "<option>없음</option>";
		
		$menuDtlID.append(optStr);
	}

	$menuDtlID.selectric("refresh");
}

$(function() {
	$(".sel").selectric();
	
	$("#menuCat").change(function() {
		
		$.ajax({
			url 	: "/selectMenuDtl.do",
			data 	: {menuCatCd : $("#menuCat").val()},
			
			success : function(menuDtlObj) {
				
				// 두번째 셀랙트박스 데이터를 생성하는 함수
				createOpts(menuDtlObj);
			}
		});
	});
});

</script>

<div id="contents">
	<table class="tbl type02">	
		<tbody> 
			<tr>
				<th scope="row">메뉴 분류</th>
				<td class="ta-l">
					<select id="menuCat" name="menuCat" class="sel short">
						<option>없음</option>
						<c:forEach items="${menuCatList}" var="menuCatInfo">
							<option value="${menuCatInfo.menuCatCd}">
								<c:out value="${menuCatInfo.menuCatNm}"/>
							</option>
						</c:forEach>
					</select>
					<select id="menuDtl" name="menuDtl" class="sel middle">
						<option>없음</option>
					</select>        
				</td>   
			</tr>
		</tbody>
	</table>
</div>