<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="content">
	<div class="container-fluid">
		<div class="row">
		    <div class="col-md-8">
		        <div class="card">
		            <div class="header">
		                <h4 class="title">Edit Profile</h4>
		            </div>
		            <div class="content">
		                <div class="row">
		                    <div class="col-md-5">
		                        <div class="form-group">
		                            <label>Company (disabled)</label>
		                            <input type="text" class="form-control" disabled placeholder="Company" value="한큐에자바">
		                        </div>
		                    </div>
		                    <div class="col-md-3">
		                        <div class="form-group">
		                            <label>회원아이디</label>
		                            <input type="text" class="form-control" placeholder="Username" value="hanq">
		                        </div>
		                    </div>
		                    <div class="col-md-4">
		                        <div class="form-group">
		                            <label for="exampleInputEmail1">이메일 주소</label>
		                            <input type="email" class="form-control" placeholder="Email">
		                        </div>
		                    </div>
		                </div>
		                <div class="row">
		                    <div class="col-md-6">
		                        <div class="form-group">
		                            <label>이름</label>
		                            <input type="text" class="form-control" placeholder="Company" value="한석현">
		                        </div>
		                    </div>
		                    <div class="col-md-6">
		                        <div class="form-group">
		                            <label>닉네임</label>
		                            <input type="text" class="form-control" placeholder="Last Name" value="한큐">
		                        </div>
		                    </div>
		                </div>
		                <div class="row">
		                    <div class="col-md-12">
		                        <div class="form-group">
		                            <label>가입이유</label>
		                            <input type="text" class="form-control" placeholder="Home Address" value="모두 대박납시다.">
		                        </div>
		                    </div>
		                </div>
		                <div class="row">
		                    <div class="col-md-4">
		                        <div class="form-group">
		                            <label>주소</label>
		                            <input type="text" class="form-control" placeholder="City" value="서울시 양천로">
		                        </div>
		                    </div>
		                    <div class="col-md-4">
		                        <div class="form-group">
		                            <label>상세주소</label>
		                            <input type="text" class="form-control" placeholder="Country" value="어위쉬예다인">
		                        </div>
		                    </div>
		                    <div class="col-md-4">
		                        <div class="form-group">
		                            <label>우편번호</label>
		                            <input type="number" class="form-control" placeholder="ZIP Code">
		                        </div>
		                    </div>
		                </div>
		                <div class="row">
		                    <div class="col-md-12">
		                        <div class="form-group">
		                            <label>About Me</label>
		                            <textarea rows="5" class="form-control" placeholder="Here can be your description" value="Mike">안짤리는 그날까지!</textarea>
		                        </div>
		                    </div>
		                </div>
		                <button type="submit" class="btn btn-info btn-fill pull-right">Update Profile</button>
		                <div class="clearfix"></div>
		            </div>
		        </div>
		    </div>
		</div>
	</div>
</div>	