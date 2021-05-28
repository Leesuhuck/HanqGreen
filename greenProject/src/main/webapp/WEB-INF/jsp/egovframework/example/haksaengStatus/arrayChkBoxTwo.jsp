<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
	// 두번 눌러야 전에 있던 값이 나오는 오류;
	$(function(){
		
		var numberList 	= [];
		var strNum 		= "";
		var idx = 0;
   		
   		$("#srchbtn").click(function(){
   			
   			<c:forEach items="${chkNm}" var="rowChk" varStatus="status">
   			
				if ("${rowChk}"!=null) numberList.push("${rowChk}");
				
				strNum += (numberList[idx] + " ");
			
			idx += 1;
			
   			</c:forEach>
   			
   			alert(strNum);
   		
   		});
		
	});
	
</script>
<form action="/chkBoxTwo.do">
<input type ="hidden" name="pageName" value="chkBoxTwo"/>
<div id="contents">
	<div class="content_wrap">
		<h2 class="fs-18 fw-b">수강생 필터</h2>
			<br>
			<div class="innerTop">
				<table class="tbl type01">
					<tbody>
				        <tr>
				            <th scope="row">수강생 과목</th>
				            <td>
				                <ul class="ui-chk">
				                	<c:set var="notList" value = ""/>
				                	<c:forEach items="${haksaengList}" var="haksaengInfo" varStatus="status">
				                		<c:if test="${haksaengInfo.classNm ne notList}">
				                			<c:set var="notList" value = "${haksaengInfo.classNm}"/>
					                    </c:if>
					                    <li>
					                        <input type="checkbox" id="chkId${notList}" name="requestChk"
					                        	   value="${notList}" class="type01" 
					                        	   <c:forEach items="${requestChk}" var="pcChk">
					                        	   		<c:if test="${notList eq pcChk}">
					                        	   			checked
					                        	   		</c:if>
					                        	   </c:forEach>
					                        	   >
					                        <label for="chkId${notList}">
					                        	<span><c:out value='${notList}'/></span>
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
			      	<button type="submit" id="srchbtn" class="btn type03 f-r">검색</button>
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
					<c:forEach items="${requestChk}" var="checkds">
						<c:if test="${haksaengInfo.classNm eq checkds}">
							<tr>
								<td><c:out value="${haksaengInfo.rowCount}"/></td>
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
</div>
</form>