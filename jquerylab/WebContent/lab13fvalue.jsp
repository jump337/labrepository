<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>attributeEquals demo</title>
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
 
<div>
  <label>
    <input type="radio" name="newsletter" value="Hot Fuzz">
    <span>name?</span>
  </label>
</div>
<div>
  <label>
    <input type="radio" name="newsletter" value="Cold Fusion">
    <span>value?</span>
  </label>
</div>
<div>
  <label>
    <input type="radio" name="newsletter" value="Evil Plans">
    <span>value?</span>
  </label>
</div>
<br/><br/>
<div id="notValue">
	<div>
	  <input type="radio" name="newsletter" value="Hot Fuzz">
	  <span>name is newsletter</span>
	</div>
	<div>
	  <input type="radio" value="Cold Fusion">
	  <span>no name</span>
	</div>
	<div>
	  <input type="radio" name="accept" value="Evil Plans">
	  <span>name is accept</span>
	</div>
 </div>
 
 <div id="startValue">
 	<input name="newsletter">
	<input name="milkman">
	<input name="newsboy">
 </div>
 
 <div id="endValue">
 	<input name="newsletter">
	<input name="milkman">
	<input name="jobletter">
 </div>
 
 <div id="delimitedSpaceValue">
 	<input name="man-news">
	<input name="milk man">
	<input name="letterman2">
	<input name="newmilk">
 </div>
 
 <div id="likeValue">
 	<input name="man-news">
	<input name="milkman">
	<input name="letterman2">
	<input name="newmilk">
 </div>
 
 <div id="includeHyphen">
 	<a href="example.html" hreflang="en">Some text</a>
	<a href="example.html" hreflang="en-UK">Some other text</a>
	<a href="example.html" hreflang="english">will not be outlined</a>
 </div>
<script>
$( "input[value='Hot Fuzz']" ).next().text( "Hot Fuzz" );

$( "#notValue input[name!='newsletter']" ).next().append( "<b>; not newsletter</b>" );

$("#startValue input[name^='news']").val("news here!");

$("#endValue input[name$='letter']").val("a letter");

$("#delimitedSpaceValue input[name~='man']").val("mr. man is in it!");

$("#likeValue input[name*='man']").val("has man in it!");

$("#includeHyphen a[hreflang|='en']").css( "border", "3px dotted green" );
</script>
 
</body>
</html>