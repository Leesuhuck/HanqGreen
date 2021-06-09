<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>

$(function() {
	
	$(".sel").selectric();

})

</script>

<div id="contents">
	<table class="tbl type02">	
		<tbody> 
			<tr>
				<th scope="row">컴퓨터 부품 선택</th>
				<td class="ta-l">
					<select id="partsMst" name="partsMst" class="sel short">
						<c:forEach items="${partsMstList}" var="par">
							<option value="${par.partsCd}"><c:out value="${par.partsNm}"></c:out></option>
						</c:forEach>
					</select>
					<select id="partsDtl" name="partsDtl" class="sel middle">
						<c:forEach items="${partsDtlList}" var="dtl">
							<c:forEach items="${partsMstList}" var="par">
								<c:if test="${dtl.partsCd eq par.partsCd}">
									<option value="${dtl.optCd}"><c:out value="${dtl.optNm}"></c:out></option>
								</c:if>
							</c:forEach>
						</c:forEach>
					</select>        
				</td>   
			</tr>
		</tbody>
	</table>
</div>

