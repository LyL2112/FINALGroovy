<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="Dashboard">
	<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

	<title>GroovyLero</title>

	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="${resource(dir:'perfil/css',file: 'bootstrap.css')}">
	<!--external css-->
	<link rel="stylesheet" href="${resource(dir:'perfil/font-awesome/css',file: 'font-awesome.css')}">

	<!-- Custom styles for this template -->
	<link rel="stylesheet" href="${resource(dir:'perfil/css',file: 'style_perfil.css')}">
	<link rel="stylesheet" href="${resource(dir:'perfil/css',file: 'style-responsive.css')}">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	  <!--
	  **********************************************************************************************************************************************************
      MAIN CONTENT
      ***********************************************************************************************************************************************************
       -->
<div id="login-page">
	<div class="container">
		<form action='${postUrl}' class="form-login" method='POST' id='loginForm' autocomplete='off'>
			<h2 class="form-login-heading">Ingresa tus datos Groovylero</h2>
			<div class="login-wrap">
				<g:if test='${flash.message}'>
					<p class='login_message'>${flash.message}</p>
				</g:if>
				<input type="text" class="form-control" placeholder="Usuario" name='j_username' id='username' autofocus/>
				<br>
				<input type="password" class="form-control" placeholder="Contraseña" name='j_password' id='password'/>
				<label class="checkbox">
					<s6pan class="pull-left">
						<input type='checkbox' class='checkbox' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if> style="margin-left:0px; margin: 0px 0 0;"/>
						<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
					</s6pan>
					<span class="pull-right">
						<a data-toggle="modal" href="index#myModal"> Olvidaste tu  clave?</a>
					</span>
				</label>
				<button class="btn btn-theme btn-block" href="#" type="submit">Ingresar</button>
				<hr>
				<div class="registration">
					No tienes un cuenta GroovyLito aún?<br/>
						<a class="" href="${request.contextPath}/user/create">
						A GroovyLiarte Ya!
					</a>
				</div>
			</div>
		</form>

			<!-- Modal -->
		<g:form url="[controller: 'user', action: 'recoverPassword']">
			<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
				<div class="modal-dialog">

						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h4 class="modal-title">Forgot Password ?</h4>
							</div>
							<div class="modal-body">
								<p>Ingrese su e-mail para la recuperación de clave.</p>
								<input type="email" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
							</div>
							<div class="modal-footer">
								<button data-dismiss="modal" class="btn btn-default" type="button">Cancelar</button>
								<button class="btn btn-theme" type="submit">Enviar</button>
							</div>
						</div>

				</div>
			</div>
		</g:form>
			<!-- modal -->
	</div>
</div>
<!-- js placed at the end of the document so the pages load faster -->

<script src="${resource(dir:'perfil/js',file:'jquery.js')}"></script>
<script src="${resource(dir:'perfil/js',file:'bootstrap.min.js')}"></script>

<!--BACKSTRETCH-->
<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
<script src="${resource(dir:'perfil/js',file:'jquery.backstretch.min.js')}"></script>
<script>
	$.backstretch("${resource(dir:'perfil/img',file:'login.png')}", {speed: 1000});
</script>


</body>
</html>
