<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Jquery study</title>
<script type="text/javascript"  src="js/jquery-1.11.1.js"></script>
<style>
  div {
    width: 60px;
    height: 60px;
    margin: 10px;
    float: left;
  }
  p {
    clear: left;
    font-weight: bold;
    font-size: 16px;
    color: blue;
    margin: 0 10px;
    padding: 2px;
  }
  </style>
<script type="text/javascript">
	<!--
	/* $(function(){
		$('#log').after('jquery start !! ');
	}); */
	
	
	
	-->
</script>
</head>
<body>
Jquery를 이제는 암기할 시기 이다. <br/>
<div id="log"></div>


<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
<div></div>
 
<p>Added this... (notice no border)</p>

<ul>
  <li>list item 1</li>
  <li>list item 2</li>
  <li>list item 3</li>
</ul>
<p>a paragraph</p>
<script type="text/javascript">
$('div').css("border", "2px solid red").add("p").css("background","black");

$('li').css("border", "2px solid yellow").add("span").css("background", "red");
</script>
</body>
</html>