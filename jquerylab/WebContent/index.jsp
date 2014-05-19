<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>data demo</title>
  <style>
  div {
    color: blue;
  }
  span {
    color: red;
  }
  button {
    margin: 5px;
    font-size: 14px;
  }
  p {
    margin: 5px;
    color: blue;
  }

  </style>
  <script type="text/javascript"  src="js/jquery-1.11.1.js"></script>
</head>
<body>
<div>
  The values stored were
  <span></span>
  and
  <span></span>
</div>
 
 
 <button>Get "blah" from the div</button>
<button>Set "blah" to "hello"</button>
<button>Set "blah" to 86</button>
<button>Remove "blah" from the div</button>
<p>The "blah" value of this div is <span id="output">?</span></p>

<script>
$( "div" ).data( "test", { first: 16, last: "pizza!" } );
$( "div span:first" ).text( $( "div" ).data( "test" ).first );
$( "div span:last" ).text( $( "div" ).data( "test" ).last );

$( "button" ).click(function() {
	  var value;
	 
	  switch ( $( "button" ).index( this ) ) {
	    case 0 :
	      value = $( "div" ).data( "blah" );
	      break;
	    case 1 :
	      $( "div" ).data( "blah", "hello" );
	      value = "Stored!";
	      
	      break;
	    case 2 :
	      $( "div" ).data( "blah", 86 );
	      value = "Stored!";
	      break;
	    case 3 :
	      $( "div" ).removeData( "blah" );
	      value = "Removed!";
	      break;
	  }
	 
	  $( "#output" ).text( "" + value );
	});
</script>
</body>
</html>