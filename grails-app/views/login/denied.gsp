<head>
<meta name='layout' content='main' />
	<title><g:message code="springSecurity.denied.title" /></title>
	<link rel="stylesheet" href="${resource(dir:'perfil/css',file: 'style_perfil.css')}">
	<link rel="stylesheet" href="${resource(dir:'perfil/css',file: 'bootstrap.css')}">
</head>

<body>
<div class='body'>
	<div class='container'>
		<form class="form-login" action="${application.contextPath}" method="GET">
			<p class='login_message'><g:message code="springSecurity.denied.message" /></p>
			<button class="btn btn-theme btn-block" type="submit">Volver al inicio</a> </button>
		</form>
	</div>
</div>
</body>
