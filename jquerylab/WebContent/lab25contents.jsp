<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>contents demo</title>
  
  <script type="text/javascript"  src="js/jquery-1.11.1.js"></script>
</head>
<body>
<p>Hello <a href="http://ejohn.org/">John</a>, how are you doing?</p>
 
 
 <div class="container">
  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
  do eiusmod tempor incididunt ut labore et dolore magna aliqua.
  <br><br>
  Ut enim ad minim veniam, quis nostrud exercitation ullamco
  laboris nisi ut aliquip ex ea commodo consequat.
  <br><br>
  Duis aute irure dolor in reprehenderit in voluptate velit
  esse cillum dolore eu fugiat nulla pariatur.
</div>

<script>
$( "p" )
  .contents()
  .filter(function(){
	  console.log("p:"+this.nodeType);
    return this.nodeType !== 1;
  })
  .wrap( "<b></b>" );
  
$( ".container" )
.contents()
  .filter(function() {
	  console.log(this.nodeType);
    return this.nodeType === 3;
  })
    .wrap( "<p></p>" )
    .end()
  .filter( "br" )
  .remove();
</script>
</body>
</html>