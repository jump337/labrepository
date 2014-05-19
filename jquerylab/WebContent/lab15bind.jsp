<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>bind demo</title>
  <style>
  p {
    background: yellow;
    font-weight: bold;
    cursor: pointer;
    padding: 5px;
  }
  p.over {
     background: #ccc;
  }
  span {
    color: red;
  }
  </style>
  <script type="text/javascript"  src="js/jquery-1.11.1.js"></script>
</head>
<body>
  <p>Click or double click here.</p>
  <span></span>
  
  <form>
	  <input id="target" type="text" value="Field 1">
	  <input type="text" value="Field 2">
	</form>
	<div id="other">
	  Trigger the handler
	</div>
<script>
	$( "#target" ).blur(function() {
	  alert( "Handler for .blur() called." );
	});
	
	$( "#other" ).click(function() {
		  $( "#target" ).blur();
		});
</script>
 
</body>
</html>