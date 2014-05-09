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
    margin: 8px;
    font-size: 16px;
  }
  .selected {
    color: blue;
  }
  .highlight {
    background: yellow;
  }
  
  div {
    background: white;
  }
  .red {
    background: red;
  }
  .red.green {
    background: green;
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
<p>and</p>
<p>Goodbye</p>

<div>This div should be white</div>
 <div class="red">This div will be green because it now has the "green" and "red" classes.
   It would be red if the addClass function failed.</div>
 <div>This div should be white</div>
 <p>There are zero green divs</p>

<script>
//$( "p" ).clone().add( "<span>Again</span>" ).appendTo( document.body );
console.log('개발자 도구용 로그');
//$( "div.left, div.right" ).find( "div, div > p" ).addClass( "border" );

//First Example
//$( "div.before-addback" ).find( "p" ).addClass( "background" );

//Second Example
//$( "div.after-addback" ).find( "p" ).addBack().addClass( "background" );

//$("p").last().addClass("selected highlight");
//$("p:last").addClass("selected highlight");

$("div").addClass(function(index, currentClass){
	var addedClass;
	console.log(index+':'+currentClass);
	if(currentClass == "red"){
		addedClass = "green";
		$("p:last").text("There is one green div");
	}
	return addedClass;
});
</script>
</body>
</html>