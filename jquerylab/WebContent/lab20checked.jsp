<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>checked demo</title>
  <style>
  div {
    color: red;
  }
  </style>
  <script type="text/javascript"  src="js/jquery-1.11.1.js"></script>
</head>
<body>
  <form>
  <p>
    <input type="checkbox" name="newsletter" value="Hourly" checked="checked">
 
    <input type="checkbox" name="newsletter" value="Daily">
    <input type="checkbox" name="newsletter" value="Weekly">
 
    <input type="checkbox" name="newsletter" value="Monthly" checked>
    <input type="checkbox" name="newsletter" value="Yearly">
  </p>
</form>
<div></div>
 
<script>
var countChecked = function() {
  var n = $( "input:checked" ).length;
  $( "div" ).text( n + (n === 1 ? " is" : " are") + " checked!" );
};
countChecked();
 
$( "input[type=checkbox]" ).on( "click", countChecked );
</script>
 
</body>
</html>