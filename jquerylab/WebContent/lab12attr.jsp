<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>attr demo</title>
  <style>
  p {
    margin: 20px 0 0;
  }
  b {
    color: blue;
  }
  </style>
  <script type="text/javascript"  src="js/jquery-1.11.1.js"></script>
</head>
<body>
 
<input id="check1" type="checkbox" checked="checked">
<label for="check1">Check me</label>
<p></p>
 
<script>
  $("input").change(function(){
	  var $input = $(this);
	  $("p").html(".attr('checked'): <b>"+$input.attr("checked")+"</b><br/>"+
			  ".prop('cheked'):<b>"+ $input.prop("checked")+"<b/><br>"+
			  ".is(':checked'):<b>"+ $input.is(":checked")+"</b>");
  }).change();
</script>
 
</body>
</html>