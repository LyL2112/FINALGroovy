<!DOCTYPE html>
<html lang="en">
<head>

	<meta name="layout" content="ModelProfile">
	<title>GroovyLito</title>

</head>

<body>
<section>
    <div id="perfil-index-page">
        <div class="row mt">

            <div class="col-lg-12">
                <div class="form-panel">

                    <form action='${postUrl}' class="form-reg">
                        <h2 class="form-reg-heading">Bienvenido Groovylero</h2>
                        <div class="reg-wrap">
                            <h1> Hola!</h1>
                                <h1 style="text-transform: capitalize; color: #DDDDDD" class="form-reg-heading">
                                    ${applicationContext.servletContext.getAttribute("usuario").getFirstName()}
                                </h1>
                                <br><br>
                                <h4>
                                Es momento de ponernos a trabajar, Groovylito está ansioso de acompañarte en este proceso
                                y poderte mostrar todo lo necesario de Groovy en un parpadeo. No olvides que puedes acceder al
                                curso desde un pc o cualquier dispositivo móvil. <br><br>
                                Si no has comenzado aún por favor accede al Nivel 1 en el menú izquierdo... de lo contrario
                                continúa en el nivel que ibas.
                                </h4>
                                <br>
                                <h3>Adelante!!!</h3>
                        </div>
                    </form>
                </div><!-- /form-panel -->
            </div><!-- /col-lg-12 -->
        </div><!-- /row -->
    </div>
</section>

</body>
</html>
