# jQuery

## Overview

*jQuery:* makes JavaScript much easier to use on your website

jQuery takes a lot of common tasks that require many lines of JavaScript code to accomplish, and wraps them into methods that you can call with a single line of code. It also simplifies a lot of the complicated things from JavaScript, like AJAX calls and DOM manipulation.

*Features:*
  * HTML/DOM manipulation
  * CSS manipulation
  * HTML event methods
  * Effects and animations
  * AJAX
  * Utilities

You can download jQuery from jquery.com or use it hosted from Google or Microsoft. 

*Google CDN:*
```sh
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
```

## Syntax

The jQuery syntax is tailor-made for selecting HTML elements and performing some action on the element(s).

Basic syntax is: $(selector).action()

  * A $ sign to define/access jQuery
  * A (selector) to "query (or find)" HTML elements
  * A jQuery action() to be performed on the element(s)

*Examples:*
$(this).hide() - hides the current element.
$("p").hide() - hides all <p> elements.
$(".test").hide() - hides all elements with class="test".
$("#test").hide() - hides the element with id="test".

All jQuery methods are inside a document ready event in order to prevent any jQuery code from running before the document is finished loading.
```
$(document).ready(function(){

   // jQuery methods go here...

});
```
Alternatively it could look like this: (but the former is more readable)
```
$(function(){

   // jQuery methods go here...

});
```

## Selectors
*Select all "p" elements using:*
```
$("p")
```

*Select an id using:*
```
$("#test")
```

*Select a class using:*
$(".test")

*Full example of selecting a class:*
```
$(document).ready(function(){
    $("button").click(function(){
        $(".test").hide();
    });
});
```

Head [here](http://www.w3schools.com/jquery/jquery_selectors.asp) for more selector examples.

## Events

Events are different visitor actions. Examples:
  * moving a mouse over an element
  * selecting a radio button
  * clicking on an element

Check [here](http://www.w3schools.com/jquery/jquery_events.asp) for common events.

*Assign a click event to all paragraphs:*
```
$("p").click();
```
*To define what should happen when the event fires pass a function to the event:*
```
$("p").click(function(){
  // action goes here!!
});
```
*Example:*
When a click event fires on a <p> element; hide the current <p> element:
```
$("p").click(function(){
    $(this).hide();
});
```
Checkout more events: http://www.w3schools.com/jquery/jquery_events.asp

**[jQuery Effect Methods](http://www.w3schools.com/jquery/jquery_ref_effects.asp)**



