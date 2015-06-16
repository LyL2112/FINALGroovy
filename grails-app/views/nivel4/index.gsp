<!DOCTYPE html>
<html lang="en">
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

</head>

<body>

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
		<a href="${request.contextPath}/bienvenidos/index.gsp" class="logo"><img src="${request.contextPath}/images/logos/groovylito_name.png" width="100" heigth="250"/></a>
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
	<aside>
		<div id="sidebar"  class="nav-collapse ">
			<ul class="sidebar-menu" id="nav-accordion">
				<p class="centered"><a href="profile.html"><img src="${request.contextPath}/perfil/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
				<h5 class="centered">Usuario Loggeado</h5>

				<li class="mt">
					<a  href="${request.contextPath}/perfil/index">
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
					<a  href="${request.contextPath}/nivel2/index" >
						<i class="fa fa-desktop"></i>
						<span>Nivel 2</span>
					</a>
				</li>
				<li class="sub-menu">
					<a  href="${request.contextPath}/nivel3/index" >
						<i class="fa fa-desktop"></i>
						<span>Nivel 3</span>
					</a>
				</li>
				<li class="sub-menu">
					<a class="active" href="${request.contextPath}/nivel4/index" >
						<i class="fa fa-tasks"></i>
						<span>Nivel 4</span>
					</a>
				</li>
				<li class="sub-menu">
					<a href="${request.contextPath}/forum1/index" >
						<i class="fa fa-th"></i>
						<span>Foro</span>
					</a>
				</li>

				<li class="sub-menu">
					<a href="javascript:;" >
						<i class=" fa fa-bar-chart-o"></i>
						<span>Soportes</span>
					</a>
					<ul class="sub">
						<!--<li> <a href="${request.contextPath}/admin/index">Administrador</a></li>
                        <li> <a href="${request.contextPath}/regular/index">Regular</a></li>
                        <li> <a href="${request.contextPath}/forum/index">Foro</a></li>
                        <li> <a href="${request.contextPath}/post/index">Post</a></li>
                        <li> <a href="${request.contextPath}/file/index">File</a></li>

                        <li><a  href="buttons.html">Buttons</a></li>
                        <li><a  href="panels.html">Panels</a></li>
                        <li><a  href="morris.html">Morris</a></li>
                        <li><a  href="chartjs.html">Chartjs</a></li>
                        <li><a  href="calendar.html">Calendar</a></li>
                        <li><a  href="gallery.html">Gallery</a></li>
                        <li><a  href="todo_list.html">Todo List</a></li>
                        <li><a  href="blank.html">Blank Page</a></li>
                        <li><a  href="login.html">Login</a></li>
                        <li><a  href="lock_screen.html">Lock Screen</a></li>
                        <li><a  href="form_component.html">Form Components</a></li>
                        <li><a  href="basic_table.html">Basic Table</a></li>
                        <li><a  href="responsive_table.html">Responsive Table</a></li>-->
					</ul>
				</li>
			</ul>

		</div>
	</aside>
	<!--FIN DE MENU-->
	<!--  Seccion 3
      ****************************************************************
      Video de Introduccion de Uso. O cual quier cosa que se le de Bienvenida Personalizada al Usuario
      ***************************************************************************************
              |***********************************************************************|
              |ESTA ES LA SECCION QUE CAMBIA DE ACUERDO A LA SECCION QUE DESEAMOS VER |
              |_______________________________________________________________________|
      -->
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-lg-12 main-chart">
					<div class="row mtbox">
						<div class="col-md-2 col-sm-2 col-md-offset-1 box0">
							<div class="box1">
								<span class="li_heart"></span>
								<h3>933</h3>
							</div>
							<p>933 People liked your page the last 24hs. Whoohoo!</p>
						</div>
						<div class="col-md-2 col-sm-2 box0">
							<div class="box1">
								<span class="li_cloud"></span>
								<h3>+48</h3>
							</div>
							<p>48 New files were added in your cloud storage.</p>
						</div>
						<div class="col-md-2 col-sm-2 box0">
							<div class="box1">
								<span class="li_stack"></span>
								<h3>23</h3>
							</div>
							<p>You have 23 unread messages in your inbox.</p>
						</div>
						<div class="col-md-2 col-sm-2 box0">
							<div class="box1">
								<span class="li_news"></span>
								<h3>+10</h3>
							</div>
							<p>More than 10 news were added in your reader.</p>
						</div>
						<div class="col-md-2 col-sm-2 box0">
							<div class="box1">
								<span class="li_data"></span>
								<h3>OK!</h3>
							</div>
							<p>Your server is working perfectly. Relax & enjoy.</p>
						</div>
					</div><!-- /row mt -->
					<div class="row mt">
						<div class="col-md-4 col-sm-4 mb">
							<div class="white-panel pn donut-chart">
								<div class="white-header">
									<h5>SERVER LOAD</h5>
								</div>
								<div class="row">
									<div class="col-sm-6 col-xs-6 goleft">
										<p><i class="fa fa-database"></i> 70%</p>
									</div>
								</div>
								<canvas id="serverstatus01" height="120" width="120"></canvas>
								<script>
									var doughnutData = [
										{
											value: 70,
											color:"#68dff0"
										},
										{
											value : 30,
											color : "#fdfdfd"
										}
									];
									var myDoughnut = new Chart(document.getElementById("serverstatus01").getContext("2d")).Doughnut(doughnutData);
								</script>
							</div>
						</div><!-- /col-md-4-->
						<div class="col-md-4 col-sm-4 mb">
							<div class="white-panel pn">
								<div class="white-header">
									<h5>TOP PRODUCT</h5>
								</div>
								<div class="row">
									<div class="col-sm-6 col-xs-6 goleft">
										<p><i class="fa fa-heart"></i> 122</p>
									</div>
									<div class="col-sm-6 col-xs-6"></div>
								</div>
								<div class="centered">
									<img src="${request.contextPath}/perfil/img/product.png" width="120">
								</div>
							</div>
						</div>
						<div class="col-md-4 mb">
							<div class="white-panel pn">
								<div class="white-header">
									<h5>TOP USER</h5>
								</div>
								<p><img src="${request.contextPath}/perfil/img/ui-zac.jpg" class="img-circle" width="80"></p>
								<p><b>Zac Snider</b></p>
								<div class="row">
									<div class="col-md-6">
										<p class="small mt">MEMBER SINCE</p>
										<p>2012</p>
									</div>
									<div class="col-md-6">
										<p class="small mt">TOTAL SPEND</p>
										<p>$ 47,60</p>
									</div>
								</div>
							</div>
						</div><!-- /col-md-4 -->
					</div><!-- /row -->
					<div class="row">
						<!-- TWITTER PANEL -->
						<div class="col-md-4 mb">
							<div class="darkblue-panel pn">
								<div class="darkblue-header">
									<h5>DROPBOX STATICS</h5>
								</div>
								<canvas id="serverstatus02" height="120" width="120"></canvas>
								<script>
									var doughnutData = [
										{
											value: 60,
											color:"#68dff0"
										},
										{
											value : 40,
											color : "#444c57"
										}
									];
									var myDoughnut = new Chart(document.getElementById("serverstatus02").getContext("2d")).Doughnut(doughnutData);
								</script>
								<p>April 17, 2014</p>
								<footer>
									<div class="pull-left">
										<h5><i class="fa fa-hdd-o"></i> 17 GB</h5>
									</div>
									<div class="pull-right">
										<h5>60% Used</h5>
									</div>
								</footer>
							</div><! -- /darkblue panel -->
						</div>
						<div class="col-md-4 mb">
							<!-- INSTAGRAM PANEL -->
							<div class="instagram-panel pn">
								<i class="fa fa-instagram fa-4x"></i>
								<p>@THISISYOU<br/>
									5 min. ago
								</p>
								<p><i class="fa fa-comment"></i> 18 | <i class="fa fa-heart"></i> 49</p>
							</div>
						</div>
						<div class="col-md-4 col-sm-4 mb">
							<div class="darkblue-panel pn">
								<div class="darkblue-header">
									<h5>REVENUE</h5>
								</div>
								<div class="chart mt">
									<div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,464,655]"></div>
								</div>
								<p class="mt"><b>$ 17,980</b><br/>Month Income</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</section>
	<!--  FIN de Seccion de Video -->

	<!--  Seccion 1
      ****************************************************************
      Pie de Pagina
      ****************************************************************
      -->
	<footer class="site-footer">
		<div class="text-center">

			<a rel="license"  target="_blank" href="http://creativecommons.org/licenses/by/4.0/">
				<img src="${request.contextPath}/images/logos/groovylito_name.png" width="100" heigth="250"/></a><br />Este sitio se basa bajo Licencia
			<a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>
		</div>
	</footer>
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
</body>
</html>
