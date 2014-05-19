<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>contains demo</title>
  <style>
  li {
    margin: 3px;
    padding: 3px;
    background: #EEEEEE;
  }
  li.hilight {
    background: yellow;
  }
  </style>
  <script type="text/javascript"  src="js/jquery-1.11.1.js"></script>
</head>
<body>
<div>John Resig</div>
<div>George Martin</div>
<div>Malcom John Sinclair</div>
<div>J. Ohn</div>
 
<script>

$("div:contains('John')").css("text-decoration", "underline");
</script>
</body>
</html>