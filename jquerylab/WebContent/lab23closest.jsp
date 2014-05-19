<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>closest demo</title>
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
<ul>
  <li><b>Click me!</b></li>
  <li>You can also <b>Click me!</b></li>
</ul>
 
 
 <ul id="one" class="level-1">
  <li class="item-i">I</li>
  <li id="ii" class="item-ii">II
    <ul class="level-2">
      <li class="item-a">A</li>
      <li class="item-b">B
        <ul class="level-3">
          <li class="item-1">1</li>
          <li class="item-2">2</li>
          <li class="item-3">3</li>
        </ul>
      </li>
      <li class="item-c">C</li>
    </ul>
  </li>
  <li class="item-iii">III</li>
</ul>

<script>
/* $( document ).on( "click", function( event ) {
  $( event.target ).closest( "li" ).toggleClass( "hilight" );
}); */

/* var listElements = $( "li" ).css( "color", "blue" );
$( document ).on( "click", function( event ) {
  $( event.target ).closest( listElements ).toggleClass( "hilight" );
}); */

$( "li.item-a" )
.closest( "ul" )
.css( "background-color", "red" );
</script>
</body>
</html>