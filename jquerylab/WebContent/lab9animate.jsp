<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>animate demo</title>
  <style>
  div {
    background-color: #bca;
    width: 100px;
    border: 1px solid green;
  }
  </style>
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
 
<button id="go">&raquo; Run</button>
<div id="block">Hello!</div>
 
<script>
// Using multiple unit types within one animation.
 
$( "#go" ).click(function() {
  $( "#block" ).animate({
    width: "70%",
    opacity: 0.4,
    marginLeft: "0.6in",
    fontSize: "3em",
    borderWidth: "10px"
  }, 1500 );
});
</script>
 
</body>
</html>