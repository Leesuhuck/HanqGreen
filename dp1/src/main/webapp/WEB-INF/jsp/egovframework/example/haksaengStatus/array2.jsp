<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>

$(function() {
	
});

</script>


<div id="contents">
	<form action="/chkBox2.do">
		<input type="hidden" name="pageName" value="chkBox2">
		<div class="content_wrap">
			<h2 class="fs-18 fw-b">수강생 필터</h2>
			<br>
			<div class="innerTop">
				<table class="tbl type01">
					<tbody>
				        <tr>
				            <th scope="row">수업 명</th>
				            <td>
				                <ul class="ui-chk">
				                	<c:forEach items="${classList}" var="classInfo" varStatus="status">
					                    <li>
					                        <input type="checkbox" id="chkNum${status.index}" name="chkArr"
					                        	   value="${classInfo.classNm}" class="type01" 
					                       		<c:forEach items="${chkArr}" var="chk">
					                       			<c:if test="${classInfo.classNm eq chk}">
					                       				checked
					                       			</c:if>
					                       		</c:forEach>
					                       	>
					                        <label for="chkNum${status.index}">
					                        	<span><c:out value='${classInfo.classNm}'/></span>
					                        </label>
					                    </li>
				                    </c:forEach>
				                </ul>
				            </td>
				        </tr>
					</tbody>
				</table>
			</div>
			<br>
			<div class="btn-wrap mgt-20">
			  	<div class="f-r">
			    	<ul>
			      		<li>
			      			<button type="submit" id="srchBtn" class="btn type03 f-r">검색</button>
			      		</li>
			    	</ul>
			  	</div>
			</div>
			<br>
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
				<tbody>
					<c:forEach items="${haksaengList}" var="haksaengInfo">
						<c:forEach items="${chkArr}" var="chk">
							<c:if test="${haksaengInfo.classNm eq chk}">
								<tr>
									<td><c:out value="${haksaengInfo.num}"/></td>
					                <td><c:out value="${haksaengInfo.userId}"/></td>
					                <td><c:out value="${haksaengInfo.userNm}"/></td>
					                <td><c:out value="${haksaengInfo.age}"/></td>
					                <td><c:out value="${haksaengInfo.cafeNick}"/></td>
					                <td><c:out value="${haksaengInfo.phone}"/></td>
					                <td><c:out value="${haksaengInfo.classNm}"/></td>
					                <td><c:out value="${haksaengInfo.gisuNm}"/></td>
					                <td><c:out value="${haksaengInfo.juchaNm}"/></td>
								</tr>
							</c:if>
						</c:forEach>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</form>
</div>
