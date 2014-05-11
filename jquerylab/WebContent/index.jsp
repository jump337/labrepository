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
	
	//상단에 위치해도 로드 후 설정 되기 때문에 문제 없음.
	//ajax 완료 이벤트 설정하는 기능 
	$(document).ajaxComplete(function(event,xhr, settings ){
		$(".log").text("Triggered ajaxComplete handler."+settings.url+":  "+xhr.responseXML);
	});
	
	$( document ).ajaxSend(function() {
		  $( ".logSend" ).text( "Triggered ajaxSend handler." );
		});

	$(document).ajaxError(function(){
		$(".log").text("Triggered ajax Error!");
	});
	-->
</script>
</head>
<body>
<div class="trigger">Trigger</div>
<div class="triggerMiss">Trigger Miss</div>
<div class="result"></div>
<div class="log"></div>
<div class="logSend"></div>

<script>
//$( "p" ).clone().add( "<span>Again</span>" ).appendTo( document.body );
console.log('개발자 도구용 로그');

//$("p").after($("b").clone());

	//하단에 두고 해야함. 
	$( ".trigger" ).click(function() {
		  $( ".result" ).load( "ajax/test.html" );
	});
	
	$(".triggerMiss").click(function(){
		$(".result").load("ajax/miss.html");
	});
		
	
</script>
</body>
</html>