<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Jquery study</title>
<script type="text/javascript"  src="js/jquery-1.11.1.js"></script>
<style>
  p {
    background: yellow;
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
<b>Hello</b>
<p>I would like to say1: </p>
<p>I would like to say2: </p>
<p>I would like to say3: </p>
<p>I would like to say4: </p>

<script>
//$( "p" ).clone().add( "<span>Again</span>" ).appendTo( document.body );
console.log('개발자 도구용 로그');

//$("p").after($("b").clone());
$("p").after(function(index){
	console.log(index);
	if(index == 2){
		return $("b").clone();
	}
});
</script>
</body>
</html>