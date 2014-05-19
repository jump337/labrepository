<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>append demo</title>
  <style>
  p {
    background: yellow;
  }
  #foo {
    background: yellow;
  }
  </style>
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
 
<p>I would like to say: </p>
 
 
 <span>I have nothing more to say... </span>
 
<div id="foo">FOO! </div>
<script>
$( "p" ).append( "<strong>Hello</strong>" );
$( "span" ).appendTo( "#foo" );
</script>
 
</body>
</html>