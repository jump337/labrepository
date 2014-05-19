<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>button demo</title>
  <style>
  textarea {
    height: 35px;
  }
  div {
    color: red;
  }
  fieldset {
    margin: 0;
    padding: 0;
    border-width: 0;
  }
  .marked {
    background-color: yellow;
    border: 3px red solid;
  }
  </style>
  <script type="text/javascript"  src="js/jquery-1.11.1.js"></script>
</head>
<body>
  <form>
  <fieldset>
    <input type="button" value="Input Button">
    <input type="checkbox">
 
    <input type="file">
    <input type="hidden">
    <input type="image">
 
    <input type="password">
    <input type="radio">
    <input type="reset">
 
    <input type="submit">
    <input type="text">
    <select>
      <option>Option</option>
    </select>
 
    <textarea></textarea>
    <button>Button</button>
  </fieldset>
</form>
 
<div></div>
<script>
var input = $( ":button" ).addClass( "marked" );
$( "div" ).text( "For this type jQuery found " + input.length + "." );
// Prevent the form from submitting
$( "form" ).submit(function( event ) {
  event.preventDefault();
});
</script>
 
</body>
</html>