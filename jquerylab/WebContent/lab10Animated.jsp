<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>animated demo</title>
  <style>
  div {
    background: yellow;
    border: 1px solid #AAA;
    width: 80px;
    height: 80px;
    margin: 0 5px;
    float: left;
  }
  div.colored {
    background: green;
  }
  </style>
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
 
<button id="run">Run</button>
 
<div></div>
<div id="mover"></div>
<div></div>
 
<script>
$("#run").click(function(){
	$("div:animated").toggleClass("colored");
});

function animateIt(){
	$("#mover").slideToggle("slow", animateIt);
}

 
animateIt();
</script>
 
</body>
</html>