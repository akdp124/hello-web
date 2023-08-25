<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>테스트 페이지</title>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
	$(function(){
	var data;
	$("#del").on("click", function(){
		data = $("P").detach();
	});
	$("#re").on("click", function(){
		$("div").append(data);
	});
	$("#cl").on("click", function(){
		$("#t").clone().appendTo("div");
	});
	 });
	</script>
	 <script>
	 $(document).ready(function(){
		 $(".gr1").css("color", "green");
	 });
	 </script>
</head>
<body>
<h1>
	테스트 
</h1>


 
<button id="del" class="gr1">p태그 삭제</button> &nbsp; <button id="re" class="gr1">p태그 복구</button> <br><br>
<button id="cl" class="gr1">복제</button>

<div>
<P id="t">  The time on the server is ${serverTime}. </P>
</div>

</body>
</html>
