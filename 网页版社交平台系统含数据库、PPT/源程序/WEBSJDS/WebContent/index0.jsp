<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>研社区</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shoppy Under Construction template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs Sign up Web Templates, 
 Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js1/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css1/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css1/jquery.countdown.css" />
<!-- font-awesome icons -->
<link href="css1/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!--fonts--> 
<link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700&amp;subset=cyrillic,latin-ext,vietnamese" rel="stylesheet">

<!--//fonts--> 
</head>
<body>
	<div class="w3layouts-banner-slider">
			<div class="container">
				<div class="slider">
					<div class="callbacks_container">
						<ul class="rslides callbacks callbacks1" id="slider4">
							<li>
								<div class="agileits-banner-info">
									<div class="banner-dot"></div>
								</div>
							</li>
							<li>
								<div class="agileits-banner-info agileits-banner-info1">
									<div class="banner-dot"></div>
								</div>
							</li>
							<li>
								<div class="agileits-banner-info agileits-banner-info2">
									<div class="banner-dot"></div>
								</div>
							</li>
						</ul>
					</div>
					<script src="js1/responsiveslides.min.js"></script>
					<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider4").responsiveSlides({
							auto: true,
							pager:true,
							nav:false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
					 </script>
					<!--banner Slider starts Here-->
				</div>
			</div>
	</div>
    <div class="bg agile">
     	<div class="container">
			<h1>距离考研还有</h1>
			<!--timer-->
			<div class="agileits-timer"> 
				<div class="clock">
					<div class="column days">
						<div class="timer" id="days"></div>
						<div class="text">DAYS</div>
					</div>
					<div class="timer days"></div>
					<div class="column">
						<div class="timer" id="hours"></div>
						<div class="text">HOURS</div>
					</div>
					<div class="timer"></div>
					<div class="column">
						<div class="timer" id="minutes"></div>
						<div class="text">MINUTES</div>
					</div>
					<div class="timer"></div>
					<div class="column">
						<div class="timer" id="seconds"></div>
						<div class="text">SECONDS</div>
					</div>
					<div class="clear"> </div>
				</div>	 
			</div>
			
			<!--newsletter-->
			<div class="w3layouts-newsletter">
				<p><a href="${pageContext.request.contextPath }/servlet/TopicListAction">这里，有你想了解的考研知识，也有你放松交流记录生活的天地!</a></p>
					
						</div>
							<div class="clear"></div>
					</form>
			</div>
			
			<!--//copyright-->
        </div>
   </div>
<!--scripts--> 
	<script type="text/javascript" src=" js1/moment.js"></script>
	<script type="text/javascript" src=" js1/moment-timezone-with-data.js"></script>
	<script type="text/javascript" src="js1/timer.js"></script>
<!--//scripts--> 
</body>
</html>	