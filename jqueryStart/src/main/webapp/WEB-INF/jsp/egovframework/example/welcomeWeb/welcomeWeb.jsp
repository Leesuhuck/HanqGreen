<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">

</script>

<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-offset-1 col-md-3">
				<div class="form-group">
					<input type="text" id="textVal" class="form-control">
				</div>
			</div>
			<div class="col-md-1">
				<div class="form-group">
					<input type="button" class="btn btn-info btn-fill pull-right" value="Jquery Go">
				</div>
			</div>
		</div>
		<div class="row">
	        <div class="col-md-12">
	           	<div class="card">
	               	<div class="header">
	                   	<h4 class="title">게시판</h4>
	                   	<p class="category">jquery 심판의 날</p>
	               	</div>
	               	<div class="content table-responsive table-full-width">
		               	<table class="table table-hover table-striped">
	                       	<thead>
	                        	<th>순번</th>
								<th>아이디</th>
								<th>이름</th>
								<th>나이</th>
								<th>닉네임</th>
								<th>핸드폰 번호</th>
								<th>수업 과정</th>
								<th>기수</th>
								<th>주차</th>
	                       	</thead>
	                       	<tbody>
	                       		<c:forEach items="${welcomeWebList}" var="welcomeWebList" varStatus="status">
		                       		<tr>
		                       			<td><c:out value="${status.num}"/></td>
		                       			<td><c:out value="${welcomeWebList.userId}"/></td>
		                       			<td><c:out value="${welcomeWebList.userNm}"/></td>
		                       			<td><c:out value="${welcomeWebList.age}"/></td>
		                       			<td><c:out value="${welcomeWebList.cafeNick}"/></td>
		                       			<td><c:out value="${welcomeWebList.phone}"/></td>
		                       			<td><c:out value="${welcomeWebList.classNm}"/></td>
		                       			<td><c:out value="${welcomeWebList.gisuNm}"/></td>
		                       			<td><c:out value="${welcomeWebList.juchaNm}"/></td>
		                       		</tr>
		                       	</c:forEach>
	                       	</tbody>
	                   	</table>
	               	</div>
	           	</div>
	       	</div>
	       	<div class="col-md-12">
	           	<div class="card">
	               	<div class="header">
	                   	<h4 class="title">두번째게시판</h4>
	                   	<p class="category">jquery 심판의 날</p>
	               	</div>
	               	<div class="content table-responsive table-full-width">
	       				<table class="table table-hover table-striped">
	                       	<thead>
	                        	<th>NO</th>
	                       	</thead>
	                       	<tbody>
	                       		<tr>
		                       		<td><c:out value="두번째게시판"/></td>
		                       	</tr>
	                       	</tbody>
	                   	</table>
	                </div>
	           	</div>
	       	</div>
	   	</div>
	</div>
</div>