<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Jquery study</title>
<script type="text/javascript"  src="js/jquery-1.11.1.js"></script>
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
<div class="left">
  <p><strong>Before <code>addBack()</code></strong></p>
  <div class="before-addback">
    <p>First Paragraph</p>
    <p>Second Paragraph</p>
  </div>
</div>
<div class="right">
  <p><strong>After <code>addBack()</code></strong></p>
  <div class="after-addback">
    <p>First Paragraph</p>
    <p>Second Paragraph</p>
  </div>
</div>
<script>
//$( "p" ).clone().add( "<span>Again</span>" ).appendTo( document.body );
console.log('개발자 도구용 로그');
//$( "div.left, div.right" ).find( "div, div > p" ).addClass( "border" );

//First Example
//$( "div.before-addback" ).find( "p" ).addClass( "background" );

//Second Example
//$( "div.after-addback" ).find( "p" ).addBack().addClass( "background" );

$("div.left, div.right").find("div,div > p").addClass("border");
$("div.before-addback").find("p").addClass("background");
$("div.after-addback").find("p").addBack().addClass("background");
</script>
</body>
</html>