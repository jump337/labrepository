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
	var console = window.console || {log:function(){}}; 
	

	-->
</script>
</head>
<body>
<p>Hello</p>
 <span>test span</span>
   <ul>
	  <li>list item 1</li>
	  <li>list item 2</li>
	  <li class="third-item">list item 3</li>
	  <li>list item 4</li>
	  <li>list item 5</li>
	</ul>
<script>
//$( "p" ).clone().add( "<span>Again</span>" ).appendTo( document.body );
console.log('개발자 도구용 로그');
/* $("p").clone().css("border","2px solid red").add("<span>Again</span>").add("p").appendTo(document.body);
$('span').append("<br/>");
$('span').clone().appendTo(document.body); */
$("p").add("span").css("background", "red");


$("li.third-item").nextAll().addBack().css("background-color","red");
</script>
</body>
</html>