<%--
  Created by IntelliJ IDEA.
  User: trosky
  Date: 4/28/15
  Time: 4:57 PM
--%>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="Dashboard">
	<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

	<title>GroovyLero</title>

	<!-- Bootstrap core CSS -->
	<link href="${request.contextPath}/perfil/css/bootstrap.css" rel="stylesheet">
	<!--external css-->
	<link href="${request.contextPath}/perfil/font-awesome/css/font-awesome.css" rel="stylesheet" />

	<!-- Custom styles for this template -->
	<link href="${request.contextPath}/perfil/css/style_perfil.css" rel="stylesheet">
	<link href="${request.contextPath}/perfil/css/style-responsive.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div id="login-page">

	<div class="container">

		<section>
			<g:layoutBody/>
			<div class="footer" role="contentinfo"></div>
			<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		</section>
	</div>
</div>

<!-- js placed at the end of the document so the pages load faster -->
<script src="${request.contextPath}/perfil/js/jquery.js"></script>
<script src="${request.contextPath}/perfil/js/bootstrap.min.js"></script>

<!--BACKSTRETCH-->
<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
<script type="text/javascript" src="${request.contextPath}/perfil/js/jquery.backstretch.min.js"></script>
<script>
	$.backstretch("${request.contextPath}/perfil/img/login.png", {speed: 1000});
</script>
</body>
</html>