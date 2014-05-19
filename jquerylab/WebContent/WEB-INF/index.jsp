<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>attributeContainsPrefix demo</title>
  <style>
  a {
    display: inline-block;
  }
  </style>
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
 
<a href="example.html" hreflang="en">Some text</a>
<a href="example.html" hreflang="en-UK">Some other text</a>
<a href="example.html" hreflang="english">will not be outlined</a>
</br>
</br>
<input name="man-news">
<input name="milkman">
<input name="letterman2">
<input name="newmilk">

<input name="milk man">


<input name="newsletter">
<input name="milkman">
<input name="jobletter">
 
 
<script>
$( "a[hreflang|='en']").css("border", "3px dotted green");

//$("input[name*='man']").val("has man in it!");

$( "input[name~='man']" ).val( "mr. man is in it!" );

$( "input[name$='letter']" ).val( "a letter" );
</script>
 
</body>
</html>