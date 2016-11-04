<%@ include file="TS_Common_Libraries.jsp" %>
<link href="/system/modules/com.tfsla.diario.telesur/resources/css/estilosintegracion.css" rel="stylesheet" type="text/css" />
<footer id="footerjrvo">
	<div class="wrapfoot">
		<div class="colFoot logoFoot">
			<img src="/arte/logo-footer.jpg?__scale=w:85,h:25,t:2" alt="Telesur" width="85" height="25">
				<a class="subirBtn" href="#" alt="Subir" title="Subir">
					<img src="/arte/redes/subir.png?__scale=w:50,h:60,t:2" alt="Subir" width="50" height="60">
				</a>
	
		</div><!--cierre div logofoot-->
		
		<!--3 columnas principales de footer-->
		
	<div class="colFoot">
		<h4>Sobre teleSUR</h4>
			<a href="/pages/sobrenosotros.html">Acerca teleSUR</a>
			<a href="/pages/contacto.html">Contactos</a>
			<a href="/pages/equipo.html">Equipo</a>
			<a href="/pages/empleos.html">Empleos</a>
			<a href="/pages/terminosdeuso.html">Terminos de uso</a>
			<a href="/pages/aplicaciones.html">Aplicaciones</a>
			<a href="/pages/coberturasatelital.html">Cobertura satelital</a>
			<a href="/pages/rss.html">RSS</a>
			<a href="/pages/contratacionpublica.html">Contratación pública</a>
	</div>
	<div class="colFoot">
		<h4>Canales</h4>
			<a href="/SubSecciones/news/latinaamerica/index.html">Latinoamérica</a>
			<a href="/SubSecciones/news/world/index.html">Vuelta al mundo</a>
			<a href="/SubSecciones/news/sport/index.html">Deportes</a>
			<a href="/SubSecciones/news/culture/index.html">Cultura</a>
			<a href="/seccion/opinion/index.html">Opinión</a>
			<a href="/seccion/programas/index.html">Programación</a>
	</div>
	<div class="colFoot">
		<h4>Servicios</h4>
			<a href="/pages/CatalogoServicios.html"> Catálogo de Servicios</a>
			<a href="/seccion/multimedia/index.html">Multimedia</a>
			<a href="/seccion/blog/index.html">Blog</a>
			<a href="http://multimedia.telesurtv.net/web/telesur/#!es">Videos</a>
			<a href="/seccion/programas/index.html">TV en vivo</a>
	</div>
					<!--COLUMNA DE INGLES FOOTER-->
<div class="colFooti">
	
		<h4><a href="/english/index.html">Inglés</a></h4>
	
						
</div>
					<!--REDES SOCIALES-->
	<div class="colFootRedes">
		<div class="wpRedesFoot">
			<a href="http://facebook.com/teleSUR" target="_blank">
				<img src="/arte/redes/footer/facebook.png?__scale=w:40,h:40,t:2" alt="facebook" width="40" height="40">
			</a>
			<a href="http://twitter.com/teleSURtv" target="_blank">
				<img src="/arte/redes/footer/twitter.png?__scale=w:40,h:40,t:2" alt="twitter" width="40" height="40">
			</a>
			<a href="https://plus.google.com/118206615613074383260/posts" target="_blank">
				<img src="/arte/redes/footer/gplus.png?__scale=w:40,h:40,t:2" alt="google plus" width="40" height="40">
			</a>
			<a href="http://instagram.com/telesurtv" target="_blank">
				<img src="/arte/redes/footer/instagram.png?__scale=w:40,h:40,t:2" alt="instagram" width="40" height="40">
			</a>
			<a href="http://www.pinterest.com/telesurtv/" target="_blank">
				<img src="/arte/redes/footer/pinterest.png?__scale=w:40,h:40,t:2" alt="pinteres" width="40" height="40">
			</a>
			
		</div>
		<div class="wpFootSuscrip">
			<script src="https://code.jquery.com/jquery-1.11.1.min.js">
				<span>Suscríbete a nuestro boletín de noticias</span>
					<form id="Footer" name="Footer" method="post" enctype="multipart/form-data" onsubmit="return ValidarFooter();">
						<input id="email" class="inputbox" placeholder="Correo electrónico" name="email" size="30" maxlength="255" type="text">
						<input id="subscribe2" value="Suscríbete" name="boton2" type="submit">
					</form>
			<div id="RegistroFooter" class="validarForm msjerrorFooter" style="display: none; clear:both;">
				<script type="text/javascript">
					$(function () {
				 	jQuery.fn.reset = function () {
				 	$(this).each(function () {
				 	this.reset();
				 	});
				 }
				 	$("#subscribe2").click(function () {
				 	var String = $('#Footer').serialize();
				          if (email == "") { }
				            	else  {
				                           var url = "/system/modules/com.tfsla.diario.telesur/templates/TS_DMDS.jsp"; // El script a dónde se realizará la petición.
				                           $.ajax({
				                            type: "POST",
				                            url: url,
				                            data: String, // datos serializados 
				                            async: false,
				                            success: function (data){
							 	$("#RegistroFooter").css("display", "block");
							 	var n = data.search("111");
							 	if(n==-1){
							 		var y = data.search("0 relaciones nuevas");
							 		if(y==-1){
							 			$("#RegistroFooter").html("Su correo ha sido registrado exitosamente");
							 		}
							 		else{
							 			$("#RegistroFooter").html("Esta dirección de correo ya se encuentra registrada");
							 		}
							 	}
							 	else if (n>-1){
							 		$("#RegistroFooter").html("El correo que ha ingesado es incorrecto");
							 	}
							 	
							 	$("#Footer").reset();                                                                  
							 }
							});
							                        } 
							                        return false;                                
							                    }); 
							 	});
				</script> 	
				<script language="JavaScript">
					function ValidarHeader(){
				 		var RegEmail = /[\w-\.]{3,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/;
				 		validar = true;
				 		if(document.Principal.email.value.length == 0){
				 			document.getElementById('diverrorHeader').style.display = "block";
				 			document.Principal.email.focus();
				 			return false;
				 		}
				 		if(document.Principal.email.value.match(RegEmail)){
				 			$('.OKheader').fadeIn('fast');
				 			$('.ocultarBulletinHeader').fadeOut('fast');
				 			document.getElementById('diverrorHeader').style.display = "none";
				 			return validar;	
				 		} else {
				 			document.getElementById('diverrorHeader').style.display = "block";
				 			document.Principal.email.focus();
				 			return false;
				 		}				   	
				 	}
				 	function ValidarFooter(){
				 		var RegEmail = /[\w-\.]{3,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/;
				 		validar = true;
				 		if(document.Footer.email.value.length == 0){
				 			document.getElementById('diverrorFooter').style.display = "block";
				 			document.Footer.email.focus();
				 			return false;
				 		}
				 		if(document.Footer.email.value.match(RegEmail)){
				 			$('.OKfooter').fadeIn('fast');
				 			$('.ocultarBulletinFooter').fadeOut('fast');
				 			document.getElementById('diverrorFooter').style.display = "none";
				 			return validar;	
				 		} else {
				 			document.getElementById('diverrorFooter').style.display = "block";
				 			document.Principal.email.focus();
				 			return false;
				 		}				   	
				 	}
				 	function ValidarBloque(){
				 		var RegEmail = /[\w-\.]{3,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/;
				 		validar = true;
				 		if(document.Bloque.correo.value.length == 0){
				 			document.getElementById('diverror').style.display = "block";
				 			document.Bloque.correo.focus();
				 			return false;
				 		}
					 		if(document.Bloque.correo.value.match(RegEmail)){
				 			$('.OK').fadeIn('fast');
				 			$('.ocultarBulletin').fadeOut('fast');
				 			document.getElementById('diverror').style.display = "none";
				 			return validar;	
				 		} else {
				 			document.getElementById('diverror').style.display = "block";
				 			document.Bloque.correo.focus();
				 			return false;
				 		}				   	
				 	}	
				 </scrip>
			</div><!--cierre de div registro footer-->
		</div><!--cierre de div wpFootSuscrip-->
	</div><!--cierre de div class col foot redes-->
	
							<!--ULTIMA LINEA DEL FOOTER-->
	<div class="legal">
		<small>La nueva Televisión del Sur C.A. (TVSUR) RIF: G-20004500-0</small>
		<span>© 2014 Telesur</span>
	</div>
</div><!--cierre div class wrap-->
</footer>