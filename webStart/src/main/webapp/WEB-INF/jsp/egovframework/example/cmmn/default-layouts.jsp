<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles" %>

<!DOCTYPE html>
<html>
	<head>
		<tiles:insertAttribute name="head"/>
	</head>
	
  	<body>
 		<div id="wrap">
	  		<tiles:insertAttribute name="header"/>
  			<hr>
  			<section id="container">
  				<tiles:insertAttribute name="left"/>
				<tiles:insertAttribute name="content"/>
 			</section>
 			<hr>
		  	<tiles:insertAttribute name="footer"/>
	  		<!--// wrapper -->
  		</div>
  	</body>
</html>