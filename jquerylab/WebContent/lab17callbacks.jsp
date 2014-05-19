<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>callbacks demo</title>
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
 
    
    <input type="submit">
    
  </fieldset>
</form>
 
<div></div>
<script>
//A sample logging function to be added to a callbacks list
var foo = function( value ) {
  console.log( "foo: " + value );
};
 
// Another function to also be added to the list
var bar = function( value ) {
  console.log( "bar: " + value );
};
 
var callbacks = $.Callbacks();
 <%--
// Add the function "foo" to the list
callbacks.add( foo );
 
// Fire the items on the list
callbacks.fire( "hello" );
// Outputs: "foo: hello"

// Empty the callbacks list
callbacks.empty();
 
// Check to ensure all callbacks have been removed
console.log( callbacks.has( foo ) );
// false
console.log( callbacks.has( bar ) );
// false

callbacks.disable();
 
// Attempt to fire with "foobar" as an argument
callbacks.fire( "foobar" );
// foobar isn't output
 
// Add the function "bar" to the list
callbacks.add( bar );
 
// Fire the items on the list again
callbacks.fire( "world" );
 
// Outputs:
// "foo: world"
// "bar: world"

// Test the disabled state of the list
console.log ( callbacks.disabled() );
// Outputs: true



// Add the function "foo" to the list
callbacks.add( foo );
 
// Fire the items on the list
callbacks.fire( "hello" ); // Outputs: "foo: hello"
callbacks.fire( "world" ); // Outputs: "foo: world"
 
// Add another function to the list
var bar = function( value ){
  console.log( "bar:" + value );
};
 
// Add this function to the list
callbacks.add( bar );
 
// Fire the items on the list again
callbacks.fire( "hello again" );
// Outputs:
// "foo: hello again"
// "bar: hello again"

// Test to establish if the callbacks have been called
console.log( callbacks.fired() );
--%>



//A sample logging function to be added to a callbacks list
var log = function( value1, value2 ) {
  console.log( "Received: " + value1 + "," + value2 );
};
 
var callbacks = $.Callbacks();
 
// Add the log method to the callbacks list
callbacks.add( log );
 
// Fire the callbacks on the list using the context "window"
// and an arguments array
 
callbacks.fireWith( window, [ "foo","bar" ] );
// Outputs: "Received: foo, bar"

// Determine which callbacks are in the list
console.log( callbacks.has( log ) );
// true
console.log( callbacks.has( bar ) );
// false

// Lock the callbacks list
callbacks.lock();
 
// Try firing the items again
callbacks.fire( "world" );

//Test the lock-state of the list
console.log ( callbacks.locked() );
// true

// Remove "foo" from the callback list
callbacks.remove( foo );
 
// Fire the items on the list again
callbacks.fire( "world" );
</script>
 
</body>
</html>