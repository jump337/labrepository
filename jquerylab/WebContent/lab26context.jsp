<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>context demo</title>
  <style>
  div {
    width: 60px;
    height: 60px;
    margin: 5px;
    float: left;
  }
  </style>
  <script type="text/javascript"  src="js/jquery-1.11.1.js"></script>
</head>
<body>
Context: <ul></ul>
 
 
 <span id="result">&nbsp;</span>
<div style="background-color:blue;"></div>
<div style="background-color:rgb(15,99,30);"></div>
<div style="background-color:#123456;"></div>
<div style="background-color:#f11;"></div>

<script>
$( "ul" )
  .append( "<li>" + $( "ul" ).context + "</li>" )
  .append( "<li>" + $( "ul", document.body ).context.nodeName + "</li>" );
  

	
$("div").click(function(){
	var color = $(this).css("background-color");
	$("#result").html("That div is <span style='color:"+color+";'>"+color+"</span>.");
});
</script>
</body>
</html>