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
						<option value="P0001">CPU</option>
					</select>
					<select id="partsDtl" name="partsDtl" class="sel middle">
						<option value="O0001">인텔 10세대</option>
						<option value="O0002">라이젠 3세대</option>
					</select>        
				</td>   
			</tr>
		</tbody>
	</table>
</div>

