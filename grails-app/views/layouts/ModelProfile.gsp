<%@ page import="groovylito.user.User" %>

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
    <title>GroovyLito</title>

    <!-- Bootstrap core CSS -->
    <link href="${request.contextPath}/perfil/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="${request.contextPath}/perfil/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/perfil/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/perfil/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/perfil/lineicons/style.css">
    <!-- Custom styles for this template -->
    <link href="${request.contextPath}/perfil/css/style_perfil.css" rel="stylesheet">
    <link href="${request.contextPath}/perfil/css/style-responsive.css" rel="stylesheet">
    <script src="${request.contextPath}/perfil/js/chart-master/Chart.js"></script>
    <script src="${request.contextPath}/js/angular.js"></script>
    <script src="${request.contextPath}/js/app.js"></script>
    <script src="${request.contextPath}/js/controllers/perfil.js"></script>
</head>


<body ng-app="G-Lito">

<section id="container" >
    <!--  Seccion 1
      ****************************************************************
      Barra Inicial -> Poner Barra de Notificacion del avance de niveles que lleva
      *********************************************************************
      -->
    <!--Encanbezado de la Pag-->
    <header class="header black-bg">
        <div class="sidebar-toggle-box">
            <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Menu"></div>
        </div>
        <!--Cambiar Nombre por Imagen de logo-->
        <a href="${request.contextPath}/#header-area-home" class="logo"><img src="${request.contextPath}/images/logos/groovylito_name.png" width="100" heigth="250"/></a>
        <!--logo end-->
        <!--Programar enlace a vista de salida de Usuario-->
        <div class="top-menu">
            <ul class="nav pull-right top-menu">
                <li><g:link class="logout" controller="logout" action="index">Salir</g:link></li>
            </ul>
        </div>
    </header>
    <!--FIN de Encanbezado de la Pag-->
    <!--  Seccion 2
      ****************************************************************
      MENU DE USUARIO
      *********************************************************************
      -->
    <!--Menu-->
    <aside ng-controller="navCtrl">
        <div id="sidebar"  class="nav-collapse ">
            <ul class="sidebar-menu" id="nav-accordion">

                <p class="centered">
                    <img src="${request.contextPath}/perfil/img/images1.png" class="img-circle" width="50">
                </p>

                <!--Inicia Datos de Usuario  -->
                <li class="centered">
                    <h4 style="text-transform: capitalize; color: #DDDDDD" class="form-reg-heading">
                        ${applicationContext.servletContext.getAttribute("usuario").getFirstName()}
                        ${applicationContext.servletContext.getAttribute("usuario").getLastName()}
                    </h4>
                </li>

                <!--Finaliza Datos de Usuario  -->

                <li class="mt" ng-click="selecciona('perfil')">
                    <a class="active" href="${request.contextPath}/perfil/index">
                        <i class="fa fa-dashboard"></i>
                        <span>Introducción</span>
                    </a>
                </li>

                <li class="sub-menu">
                    <a href="${request.contextPath}/nivel1/index" >
                        <i class="fa fa-desktop"></i>
                        <span>Nivel 1</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="${request.contextPath}/nivel2/index" >
                        <i class="fa fa-desktop"></i>
                        <span>Nivel 2</span>
                    </a>
                </li>
                <!--
                <li class="sub-menu">
                    <a href="${request.contextPath}/nivel3/index" >
                        <i class="fa fa-desktop"></i>
                        <span>Nivel 3</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="${request.contextPath}/nivel4/index" >
                        <i class="fa fa-desktop"></i>
                        <span>Nivel 4</span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="${request.contextPath}/forum1/index" >
                        <i class="fa fa-th"></i>
                        <span>Foro</span>
                    </a>
                </li>
                -->


                        <!-- CALENDAR-->
                        <div id="calendar" class="mb">
                            <div class="panel green-panel no-margin">
                                <div class="panel-body">
                                    <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                                        <div class="arrow"></div>
                                        <h3 class="popover-title" style="disadding: none;"></h3>
                                        <div id="date-popover-content" class="popover-content"></div>
                                    </div>
                                    <div id="my-calendar"></div>
                                </div>
                            </div>
                        </div><!-- / calendar -->



            </ul>

        </div>
    </aside>



    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12 main-chart">

                    <g:layoutBody/>
                    <div class="footer" role="contentinfo"></div>
                    <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>

                </div>
            </div>
        </section>
    </section>


    <!--  Seccion 1
      ****************************************************************
      Pie de Pagina
      ****************************************************************
      -->

</section>
<!-- FIN DE PIE DE PAGINA-->
<!-- js placed at the end of the document so the pages load faster -->


<script src="${request.contextPath}/perfil/js/jquery.js"></script>
<script src="${request.contextPath}/perfil/js/jquery-1.8.3.min.js"></script>
<script src="${request.contextPath}/perfil/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript" src="${request.contextPath}/perfil/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="${request.contextPath}/perfil/js/jquery.scrollTo.min.js"></script>
<script src="${request.contextPath}/perfil/js/jquery.nicescroll.js" type="text/javascript"></script>
<script src="${request.contextPath}/perfil/js/jquery.sparkline.js"></script>
<!--common script for all pages-->
<script src="${request.contextPath}/perfil/js/common-scripts.js"></script>
<script type="text/javascript" src="${request.contextPath}/perfil/js/gritter/js/jquery.gritter.js"></script>
<script type="text/javascript" src="${request.contextPath}/perfil/js/gritter-conf.js"></script>
<!--script for this page-->
<script src="${request.contextPath}/perfil/js/sparkline-chart.js"></script>
<script src="${request.contextPath}/perfil/js/zabuto_calendar.js"></script>
<!--  Seccion Emergente
      ****************************************************************
      NOTIFICACION DE BIENVENIDA EMERGENTE
      *********************************************************************
      -->
<script type="text/javascript">
    $(document).ready(function () {
        var unique_id = $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: 'Bienvenidos a GroovyLito!',
            // (string | mandatory) the text inside the notification
            text: 'Este es el momento  de  saber que es lo que realmente GroovyLito tiene para usted. Aprende ya a programar en Groovy. ',
            // (string | optional) the image to display on the left
            image: '${request.contextPath}/images/logos/groovylito_logo2.png',
            // (bool | optional) if you want it to fade out on its own or just sit there
            sticky: true,
            // (int | optional) the time you want it to be alive for before fading out
            time: '',
            // (string | optional) the class name you want to apply to that specific message
            class_name: 'my-sticky-class'
        });
        return false;
    });
</script>

<script type="application/javascript">
    $(document).ready(function () {
        $("#date-popover").popover({html: true, trigger: "manual"});
        $("#date-popover").hide();
        $("#date-popover").click(function (e) {
            $(this).hide();
        });

        $("#my-calendar").zabuto_calendar({
            action: function () {
                return myDateFunction(this.id, false);
            },
            action_nav: function () {
                return myNavFunction(this.id);
            },
            ajax: {
                url: "show_data.php?action=1",
                modal: true
            },
            legend: [
                {type: "text", label: "Special event", badge: "00"},
                {type: "block", label: "Regular event", }
            ]
        });
    });


    function myNavFunction(id) {
        $("#date-popover").hide();
        var nav = $("#" + id).data("navigation");
        var to = $("#" + id).data("to");
        console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
</script>


</body>
</html>
