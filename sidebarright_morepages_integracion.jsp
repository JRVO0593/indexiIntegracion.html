 <%@ taglib prefix="nt" uri="http://www.tfsla.com/taglib/tfsNewsTags" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Locale"%>
<%@ include file="/system/modules/com.tfsla.diario.telesur/elements/TS_Common_Libraries.jsp" %>
					<%--programacion del menu del header--%>
<title>teleSUR JRVO</title>
<%
	
        SimpleDateFormat format_dayname = new SimpleDateFormat("EEEE", new Locale("ES"));
        SimpleDateFormat format_daynumber = new SimpleDateFormat("dd", new Locale("ES"));
        SimpleDateFormat format_month = new SimpleDateFormat("MMMMM", new Locale("ES"));
        SimpleDateFormat format_year = new SimpleDateFormat("yyyy", new Locale("ES"));
        Date now = new Date();
       
        String pageTitle = (request.getParameter("pageTitle") == null ) ? "" : request.getParameter("pageTitle") ;
        String pageSeccion = (request.getParameter("pageSeccion") == null ) ? "" : request.getParameter("pageSeccion") ;
	String agenda = (request.getParameter("agenda") == null ) ? "" : request.getParameter("agenda") ;
	String latest = (request.getParameter("latest") == null ) ? "" : request.getParameter("latest") ;
	
%>	

<!DOCTYPE html>
<html lang="en">
<head>

				<!--LLAMADO AL HEAD (METAS)-->
			
	<cms:include page="/system/modules/com.tfsla.diario.telesur/elements/TS_Common_headjrvo.jsp">
		<cms:param name="template">homejrvo</cms:param>
	</cms:include>
	<nt:page-builder-init/>
				<!--FIN LLAMADO AL HEAD (METAS)-->
				
	

	<!-- Bootstrap -->
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
	<!-- Icon font -->
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<!-- Fonts -->
	<!-- Custom styles -->
	<link href="/system/modules/com.tfsla.diario.telesur/resources/css/estilosintegracion.css" rel="stylesheet" type="text/css" />

	<!--[if lt IE 9]> <script src="assets/js/html5shiv.js"></script> <![endif]-->
</head>

<!--INICIO DEL HEADER-->

<header id="header">						
	<div id="head" class="parallax" parallax-speed="2">
		<div class="wrap">
			<!-- En home no se ve esto: -->
			<%--
			<% if(pageTitle != ""){ %>
				<div class="sectionName"><%=pageTitle%></div>
			<% } %>
			--%>
			<div class="barTop">
				<div class="btnLangi">				
						<a href="/english/index.html">ENGLISH</a>
			</div>
			<div class="barTopRSS">
					<div class="btnLogoRSS">
					<a href="/pages/rss.html">
					<!--<img style="float:left;" src="/arte/RSS-icon.png" width="20px" heigth="20px" /></a>-->		
					</div>	
					<div class="btnLangRSS">
					<a href="/pages/rss.html">RSS</a>
					</div>		
			</div>
			<div class="barTopAPP">
					<div class="btnLogoAPP">
					<a href="/pages/aplicaciones.html" >
					<!--<img style="float:left;" src="/arte/mobile-icon.png" width="20px" heigth="20px" /></a>-->
					</div>
					<div class="btnLangAPP">
					<a href="/pages/aplicaciones.html">APPS</a>
					</div>		
			</div>		
				<!-- language -->
				<div class="dateHead">
					<span><%=format_daynumber.format(now)%> <%=format_month.format(now)%></span>
					<%--<span>&middot;<cms:img src="/arte/ico-clima.png" scaleType="2" alt="Telesur" /> <strong>23</strong>° Caracas</span>--%>
				</div>
				<!-- date time -->
				<div class="sesionHead">
					<cms:include page="/system/modules/com.tfsla.diario.telesur/elements/webusers/TS_Login_Headerjrvo.jsp" />
					<!--
					<div class="searchHead">
						<form action="/buscar.html" method="post">
							<input type="text" name="search_form" value="" placeholder="Buscar">
							<input type="submit" name="enviar" value="">
						</form>
					</div>
					-->
				</div>
				<!-- Iniciar sesión -->
		</div>
			
		<!-- BAR TOP -->
		</div>
		<!-- wrap-->  	
		<br> <br> <br>	<br>  <br>  <br> <br> <br> <br>	<br>  <br>  <br>
		<h1 id="logo" class="text-center">
			<img class="" src="/arte/log-iso-telesur.png" scaleType="1" alt="Telesur">
			<img class="" src="/arte/logo-tipo-telesur_brand.png" scaleType="2" alt="Telesur">
		</h1>
		
	
	
	</div>	
	<!--parallax-->	
	        
				        
</header>
<!--INICIO DEL HEADER-->


<!--MENU DEL HEADER-->
<div class="divmenu">
	<cms:include page="/system/modules/com.tfsla.diario.telesur/elements/TS_Common_Menujrvo.jsp" >
		<cms:param name="pageSeccion"><%=pageSeccion%></cms:param>        
	</cms:include> 
</div>	
<!--FIN MENU DEL HEADER-->


<!--archivo ts_blogs_page de wp telesur-->

<!--Create a JSP action element-->

<main id="main">

	<div class="container">
	
		<div class="row topspace">
		
			<div class="col-sm-8 maincontent">
			
	
				<div class="titleblogs">
				<h2 class="section-title" style="background:#0080b7 none repeat ; color: white ; border: double"><strong><span>BLOGS NOTICIAS</span></strong></h2>
				</div>
				
				
				<%
				org.opencms.jsp.CmsJspActionElement cms = new CmsJspActionElement(pageContext, request, response);
				
				/** Variables de session para mantener la ruta de navegacion del usuario*/
				 
				
				request.setCharacterEncoding("UTF-8");
				session.setAttribute("seccion","blogs");
				session.setAttribute("url",cms.getRequestContext().getUri());	
				
				/**variables del post**/
				
				String display_search = (request.getParameter("display_search") != null ) ? request.getParameter("display_search") : "" ; 
				String filter_autor = (request.getParameter("filter_autor") != null ) ? request.getParameter("filter_autor") : "" ;         
				String buscar_search = (request.getParameter("buscar_search") != null ) ? request.getParameter("buscar_search") : "" ;    	
			    	
				int pagina  = ( request.getParameter("pagina") != null ) ? Integer.parseInt(request.getParameter("pagina")) : 1;
				int size = ( request.getParameter("size") != null ) ? Integer.parseInt(request.getParameter("size")) : 6;
				
				/**
				* Orden de Busqueda
				*/
				
				if ( display_search.equals("LAST") || display_search.equals("null") || display_search.equals("") ) display_search = "priority asc, creation-date";
				if ( display_search.equals("COME") ) display_search = "most-read";
				if ( display_search.equals("COMP") ) display_search = "most-positive-evaluations";
				
				
				/** La busqueda viene por Search**/
				
				String q = buscar_search; 
				String query = "";		
				String q_alguna = "";
				
				if ( !q.equals("") ) {
					// Reemplazo caracteres que rompen las búsquedas
					q= q.replaceAll("Ã¡", "á").replaceAll("Ã", "Á").replaceAll("Ã©", "é").replaceAll("Ã", "É").replaceAll("Ã­", "í").replaceAll("Ã", "Í");
					q= q.replaceAll("Ã³", "ó").replaceAll("Ã", "Ó").replaceAll("Ãº", "ú").replaceAll("Ã", "Ú").replaceAll("Ã±", "ñ").replaceAll("Ã", "Ñ");
						
					q= q.replaceAll("\\:","").replaceAll("\\!","").replaceAll("\\¡","").replaceAll("\\?","").replaceAll("\\\"","");
					q= q.replaceAll("\\¿","").replaceAll("\\\'","").replaceAll("\\,","").replaceAll("\\@","");	
					
					//##############################################################################################################
					//LÓGICA DE BÚSQUEDA Y PONDERACIÓN DE RESULTADOS
							
					query += "( ";
					query += "titulo:( \"" + q.trim() + "\" )^5 OR ";
					query += "volanta:( \"" + q.trim() + "\" )^5 OR ";
					query += "copete:( \"" + q.trim() + "\" )^5 OR ";
					query += "keywords:(\"" + q.trim() + "\")^4 OR ";
					query += "cuerpo:( \"" + q.trim()+"\"~0.8 )^1 ";				
					
					//condiciones para búsquedas por palabras separadas en titulo, keywords y autor
					StringTokenizer stk = new StringTokenizer(q, " ");
					while (stk.hasMoreTokens()) {
						String palabra = stk.nextToken().trim();
						if ( !palabra.equals("") ) q_alguna = q_alguna + "+" + palabra + "~0.8 ";
					}
					
					query += "OR titulo:( " + q_alguna + ")^1 OR ";
					query += "volanta:( " + q_alguna + ")^1 OR ";
					query += "copete:( " + q_alguna + ")^1 OR ";
					query += "keywords:( " + q_alguna + ")^1 "; 	
					query += ")";
					//##############################################################################################################
				}		
				
				Boolean isProjectOnline = cms.getCmsObject().getRequestContext().currentProject().isOnlineProject();
					String index = "TS_NEWS_ONLINE";	
					if (!isProjectOnline) index = "TS_NEWS_OFFLINE";
			%>
				<h2 class="noResul" style="display:none" >No se encontraron resultados...</h2>
			
				<nt:news-list newstype="bloggers" order="<%=display_search%>" advancedfilter="<%=query %>" author="<%=filter_autor%>" size="<%=size%>" page="<%=pagina%>" zone="normal" onmainpage="section" searchindex="<%=index%>">	
						<div class="contblog" itemscope itemtype="http://schema.org/Article">
						<meta itemprop="sameAs url" content="<nt:link/>">
						<div class="dest">
							<div class="colblogl">
								<nt:conditional-include oncondition="${news.hideTime == 'false' || news.hideAuthor == 'false'}">
									<div class="topblog">
									<!--fecha-->
										<nt:conditional-include oncondition="${news.hideTime == 'false'}">
											<div  class="topblogleft"><fmt:setLocale value="es_ES"/><fmt:formatDate pattern="d MMMM yyyy" value="${news.lastModificationDate}" /></div>
										</nt:conditional-include>
									<!--autor-->
										<nt:conditional-include oncondition="${news.hideAuthor == 'false'}">
											<div class="topblogright" itemprop="author" itemscope itemtype="http://schema.org/Person">
												<nt:authors>
													<c:set var="internalUser" scope="page"><nt:author-internaluser/></c:set>
													<c:if test="${internalUser != ''}">
														<nt:user username="${internalUser}">
															<meta itemprop="name" content="<nt:user-firstname/> <nt:user-lastname/>"/>
															<meta itemprop="sameAs" content="<nt:user-link-friendly/>"/>
															<a href="<nt:user-link-friendly />" class="her" alt="<nt:user-firstname/> <nt:user-lastname/>" title="<nt:user-firstname/> <nt:user-lastname/>"><nt:user-firstname/> <nt:user-lastname/></a>								
														</nt:user>
													</c:if>	 
													<c:if test="${internalUser == ''}">
														<meta itemprop="name" content="<nt:author-name/>"/>
											    			<a style="width: auto" class="her" alt="<nt:author-name/>" title="<nt:author-name/>"><nt:author-name/></a>
											    		</c:if>							    		
												</nt:authors>
											</div>
										</nt:conditional-include>
									</div>    
								</nt:conditional-include>
								<div class="contentblog">            
									<div class="blogtit" itemprop="name headline">
										<a href="<nt:link/>" class="her" alt='<nt:title value="section"/>' title='<nt:title value="section"/>'><nt:title value="section" /> </a>
										<nt:edit-buttons hasNew="true" hasDelete="true"/>
									</div> 
									<div class="col-forblog">
										<div class="imgblog" itemscope itemtype="http://schema.org/ImageObject">
											<nt:preview-image>												
												<a href="<nt:link/>" class="her">
													<c:set var="imageDescription" scope="page"><nt:image-description/></c:set>
													<nt:conditional-include oncondition="${imageDescription != ''}">
														<meta itemprop="description" content='<nt:image-description/>'>	
														<img itemprop="contentURL" src="<nt:image-path width="223%" height="223%" scaletype='2'/>" width="670" height="424" alt='<nt:image-description/>' title='<nt:image-description/>' >
													</nt:conditional-include>
													<nt:conditional-include oncondition="${imageDescription == ''}">
														<meta itemprop="description" content='${news.titles[news.titleSectionNum]}'>	
														<img itemprop="contentURL" src="<nt:image-path width="223%" height="223%" scaletype='2'/>" width="670" height="424" alt='${news.titles[news.titleSectionNum]}' title='${news.titles[news.titleDetailNum]}' >
													</nt:conditional-include>													
												</a>											
											</nt:preview-image>
										</div>
									</div>
									
				<!--BOTTON VER MAS-->			
				
									<div class="col-sixblog">
										<div class="contblogint" itemprop='description alternativeHeadline'>
											<nt:body-splitter>									
												<nt:conditional-include onposition="1">
													<p><nt:body-paragraph /></p>
												</nt:conditional-include>
											</nt:body-splitter>
										</div>
										<!--<a href="<nt:link/>" alt="Leer Más" title="Leer Más" class="readblogmobil">Leer Más</a>-->
										<div class="blogrs">
											<a href="<nt:link/>" alt="Leer Más" title="Leer Más" class="readblog col-xs-12 maincontent center-block" style="max-height:5px; max-width:110px;">LEER MAS</a>
											<nt:conditional-include oncondition="${news.commentcount > 0}"> 
			                                    				<div class="gblogrs" itemprop="interactionCount">
			                                        			<div class="num">${news.commentcount}</div>
			                                        			<cms:img src="/arte/globe-red.png" width="31" height="27" alt="Comentarios" title="Comentarios" />
			                                    				</div>
			                                    				</nt:conditional-include>
			                                    				<br><br>
			        <!--FIN BOTTON VER MAS-->	
			                         
				<!--ADD THIS DE NOTICIA-->				<div class="compartirblogs center-block">
											<cms:include page="../elements/TS_Common_AddThisjrvo.jsp" >
												<cms:param name="link"><nt:link/></cms:param> 
												<cms:param name="titulo"><nt:title value="section"/></cms:param>       
											</cms:include>
											</div>
				<!--FIN ADD THIS DE NOTICIA-->	
										</div>
										
									</div><!--"col-sixblog"-->
									
								</div><!--"contentblog"-->
								
							</div><!--"colblogl"-->
							
						</div><!--"dest"-->
						
					</div><!--"contblog"-->
			
				</nt:news-list>
			
			
				<% if (pagina == 1) { %>
					<br>
					<br>
					<hr>
					<span style="color: rgb(255, 253, 253); font-family: &quot;Arimo&quot;,sans-serif; border-radius: 5px; text-align: center; line-height: 15px; margin: 100px; font-style: italic; background-color: rgb(26, 32, 66); padding: 5px; font-size: 12px;"> teleSUR no se hace responsable de las opiniones emitadas en esta sección </span>
					<br>
					<br>
					<hr>
				<% } %>
			<script type="text/javascript">  
			    
				if( $(".contblog").length == 0 ) {
					$(".noResul").css('display', 'block');
				}          
			</script>
			</div><!--div col-sm-8 maincontent--> 
			
			<!--RIGHT COLUMN -->
			
			<!-- Sidebar -->
			
			<aside class="col-md-4 sidebar sidebar-left">
				<div class="row clear"> 
					<div class="col-six"> 
						<cms:include page="../elements/TS_Common_RightColumn.jsp" >
					 		<cms:param name="template">Agenda</cms:param>
					 	</cms:include>
				 	</div><!-- fin colmna izq col-six -->
				</div>
			</aside>			
			<!-- /Sidebar -->
<!--/ RIGHT COLUMN -->


</div><!--row topspace-->
</div><!--div contenedor-->
</main><!--fin main contenedor-->

<!--FIN CODIGO BLOGS -->


<!--LLAMADO DEL FOOTER TELESUR-->

<cms:include page="/system/modules/com.tfsla.diario.telesur/elements/TS_Common_Footerjrvo.jsp">
		<cms:param name="template">homejrvo</cms:param>
</cms:include>

<!--LLAMADO DEL FOOTER TELESUR-->


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="/system/modules/com.tfsla.diario.telesur/resources/js/template_jquery_integracion.js"></script>
</body>
</html>
