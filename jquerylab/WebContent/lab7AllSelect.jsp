<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>all demo</title>
  <style>
  h3 {
    margin: 0;
  }
  div, span, p {
    width: 80px;
    height: 40px;
    float: left;
    padding: 10px;
    margin: 10px;
    background-color: #EEEEEE;
  }
  #test {
    width: auto;
    height: auto;
    background-color: transparent;
  }
  </style>
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
 
<div id="test">
  <div>DIV</div>
  <span>SPAN</span>
  <p>P <button>Button</button></p>
</div>
 
<script>
var elementCount = $("#test").find("*").css("border", "3px solid red").length;
$("body").prepend("<h3>"+elementCount + " elements found</h3>");
</script>
 
</body>
</html>