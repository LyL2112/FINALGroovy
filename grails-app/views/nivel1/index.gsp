<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
	<meta name="layout" content="ModelProfile">
	<title>GroovyLito-1 </title>
</head>

<body>

<section id="container" >

    <form action='${postUrl}' class="form-reg">
        <h2 class="form-reg-heading">Introducción</h2>
        <div class="reg-wrap">
            <h1> A continuación vamos a empezar a Groovilearte mostrando algunas de las características principales del lenguaje Groovy, comencemos.</h1>
                <br><br>
                <a href="#page-1"><img src="${request.contextPath}/images/sliders/slider-1.jpg" width="200" heigth="350"/></a>

        </div>
    </form>

	<!--  Seccion 3
      ****************************************************************
      Video de Introduccion de Uso. O cual quier cosa que se le de Bienvenida Personalizada al Usuario
      ***************************************************************************************
              |***********************************************************************|
              |ESTA ES LA SECCION QUE CAMBIA DE ACUERDO A LA SECCION QUE DESEAMOS VER |
              |_______________________________________________________________________|
      -->
    <!--
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
					</div>
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
						</div>
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
						</div>
					</div>
					<div class="row">

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
							</div>
						</div>
						<div class="col-md-4 mb">

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
    -->
	<!--  FIN de Seccion de Video -->

	<!--  Seccion 4
      ****************************************************************
      Pie de Pagina
      ****************************************************************
      -->


    <!--
    ------------------++++++++++++++++++++-----------------------
        ***************************************
        En esta parte se encuentran las plantillas para las diferentes páginas que tienen el contenido del
        curso. La parte que está arriba de esta pag debe mantenerse como index del Nivel 1.. lo demás está debajo.
        ***************************************
        ---------------------------------------------------------
    -->
</section>
<br>
<br>
<br>
<br>
<section class="page-1" id="page-1">
    <form action='${postUrl}' class="form-reg">
        <h2 class="form-reg-heading">Capítulo 1</h2>
        <div class="list-wrap" align="left">
            <h2><i>Generalidades</i></h2>
            <h3>
                <li>Groovy nació en 2003
                <li>La versión 1.0 de Groovy fue anunciada en 2007
                <li>Groovy es un lenguaje de programación de todo propósito	 para Java Virtual Machine
                <li>Groovy es un lenguaje pegajoso para combinar frameworks y componentes fácilmente
                <li>Groovy es open source y se encuentra bajo la licencia Apache V 2.0
                <li>Groovy es un lenguaje ágil y dinámico para Java Virtual Machine
            </h3>
                <div class="modal-footer">
                    <a href="#"> <button class="btn btn-theme">Anterior</button></a>
                    <a href="#page-2"><button class="btn btn-theme" >Siguiente</button></a>
                </div>
        </div>
    </form>
</section>

<section class="page-2" id="page-2">
    <form action='${postUrl}' class="form-reg">
        <h2 class="form-reg-heading">Capítulo 1</h2>
        <div class="list-wrap" align="left">
            <h2><i>Generalidades</i></h2>
                <h3>
                    <li>Groovy se basa en los puntos fuertes de Java y adicionalmente cuenta con características poderosas inspiradas de los lenguajes Python, Ruby y Smalltalk
                    <li>Groovy hace disponible modernas características de programación para desarrolladores de Java con una mínima curva de aprendizaje
                    <li>Groovy provee la capacidad para escribir chequeos de manera estática y compilar de manera estática su código para garantizar robustez y rendimiento
                    <li>Groovy soporta lenguajes de dominio específico y otras sintáxis compactas por lo que el código es más fácil de leer y mantener
                    <li>Groovy hace que la escritura en shell y la construcción de scripts sea fácil con potentes primitivas de procesamiento, capacidades OO y Ant DSL
                </h3>
                <div class="modal-footer">
                    <a href="#"> <button class="btn btn-theme">Anterior</button></a>
                    <a href="#page-3"><button class="btn btn-theme" >Siguiente</button></a>
                </div>
        </div>
    </form>
</section>

<section class="page-3" id="page-3">
    <form action='${postUrl}' class="form-reg">
        <h2 class="form-reg-heading">Exámen Capítulo 1</h2>
        <div class="reg-wrap" align="left">
            <h2><i> Pregunta 1</i></h2>
                <h3>¿En que año nació Groovy?</h3>
                <h4>
                    <input type="radio" name="p-1" value="a">1993<br>
                    <input type="radio" name="p-1" value="b">2007<br>
                    <input type="radio" name="p-1" value="c">2003<br>
                    <input type="radio" name="p-1" value="d">1997<br>
                </h4>
                <div class="modal-footer">
                    <a href="#"> <button class="btn btn-theme">Anterior</button></a>
                    <a href="#page-4"><button class="btn btn-theme" >Siguiente</button></a>
                </div>
        </div>
    </form>
</section>

<section class="page-4" id="page-4">
    <form action='${postUrl}' class="form-reg">
        <h2 class="form-reg-heading">Exámen Capítulo 1</h2>
        <div class="reg-wrap" align="left">
            <h2><i>Pregunta 2</i></h2>
                <h3>Entre otros, ¿en qué lenguajes se basa Groovy?</h3>
                <h4>
                    <input type="radio" name="p-2" value="a">Op 1<br>
                    <input type="radio" name="p-2" value="b">Op 2<br>
                    <input type="radio" name="p-2" value="c">Op 3<br>
                    <input type="radio" name="p-2" value="d">Op 4<br>
                </h4>
                <div class="modal-footer">
                    <a href="#"> <button class="btn btn-theme">Anterior</button></a>
                    <a href="#page-5"><button class="btn btn-theme" >Siguiente</button></a>
                </div>
        </div>
    </form>
</section>

<section class="page-5" id="page-5">
    <form action='${postUrl}' class="form-reg">
        <h2 class="form-reg-heading">Exámen Capítulo 1</h2>
        <div class="reg-wrap" align="left">
            <h2><i>Ejercicio práctico</i></h2>
            <h3>En esta sección está el compilador online</h3>
            <h4>
                <input type="text" name="p-3" value="println 'Hello world'"><br>
            </h4>
            <div class="modal-footer">
                <a href="#"> <button class="btn btn-theme">Anterior</button></a>
                <a href="#"><button class="btn btn-theme" >Siguiente</button></a>
            </div>
        </div>
    </form>
</section>
</body>
</html>
