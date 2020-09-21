<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Autocomplete - Default functionality</title>
  <!-- 
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   -->
  <link rel="stylesheet" type="text/css"  href="js/jquery-ui.css">
  <script src="js/jquery-3.3.1.js"></script>
  <script src="js/jquery-ui.js"></script>


  <script>
  $( function() {
	  
	  var availableTags = [
		     
		    ];
	  name = $("#tags").val();
	  $.ajax({
	      url: "SServlet?method=find",
	      type: "POST",
	      data: {name:name},
	      success: function (data) {
	    	  var availableTags = [
	    		     data
	    		    ];
	      }
	    })
   
    $( "#tags" ).autocomplete({
      source: availableTags
    });
  } );
  </script>
</head>
<body>
 
<div class="ui-widget">
  <label for="tags">Tags: </label>
  <input id="tags">
</div>
 
 
</body>
</html>