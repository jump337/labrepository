<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>andSelf demo</title>
  <style>
  p, div {
    margin: 5px;
    padding: 5px;
  }
  .border {
    border: 2px solid red;
  }
  .background {
    background: yellow;
  }
  .left, .right {
    width: 45%;
    float: left;
  }
  .right {
    margin-left: 3%;
  }
  </style>
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
 
<div class="left">
  <p><strong>Before <code>andSelf()</code></strong></p>
  <div class="before-andself">
    <p>First Paragraph</p>
    <p>Second Paragraph</p>
  </div>
</div>
<div class="right">
  <p><strong>After <code>andSelf()</code></strong></p>
  <div class="after-andself">
    <p>First Paragraph</p>
    <p>Second Paragraph</p>
  </div>
</div>
 
<script>
 $("div.left, div.right").find("div, div > p").addClass("border");
// First Example
$("div.before-andself").find("p").addClass("background");
 
// Second Example
$("div.after-andself").find("p").andSelf().addClass("background");
</script>
 
</body>
</html>