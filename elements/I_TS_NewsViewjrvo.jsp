 <%@ taglib prefix="nt" uri="http://www.tfsla.com/taglib/tfsNewsTags" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Locale"%>
<%@ include file="/system/modules/com.tfsla.diario.telesur/elements/TS_Common_Libraries.jsp" %>
					<%--programacion del menu del header--%>
<title>INTERNO NOTA</title>
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
<!--FIN DEL HEADER-->

<!--MENU DEL HEADER-->
<div class="divmenu">
	<cms:include page="/system/modules/com.tfsla.diario.telesur/elements/TS_Common_Menujrvo.jsp" >
		<cms:param name="pageSeccion"><%=pageSeccion%></cms:param>        
	</cms:include> 
</div>	
<!--FIN MENU DEL HEADER-->


<!--INICIO DE SECCION INTERNO DE NOTICIA-->

<main id="main">

	<div class="container">

		<div class="row topspace">
			
			<!-- Article main content -->
			<article class="col-sm-8 maincontent">
				<header class="page-header">
					<div class="titleblogs">
					<h2 class="section-title" style="background:#0080b7 none repeat ; color: white ; border: double"><strong><span>INTERNO DE OPINION</span></strong></h2>
					</div>
				</header>

				
				
			
			<!-- /Article -->

					<nt:news>
										
										    <%@ include file="../elements/TS_Common_Libraries.jsp" %>
										    <%@page import="java.util.Date"%>
										    <%@page import="java.text.SimpleDateFormat"%>
										    <%@page import="java.text.DateFormat"%>
										    <%@page import="java.util.Calendar"%>
										
										
										        <!--Autor-->
										                                <nt:conditional-include oncondition="${news.hideAuthor == 'false'}">
										                                        <nt:authors>
										                                            <c:set var="internalUser" scope="page"><nt:author-internaluser/></c:set>
										                                            <c:set var="authorName" scope="page"><nt:author-name/></c:set>
										                                            <c:if test="${internalUser != ''}">
										                                                <nt:user username="${internalUser}">
										                                                    <meta itemprop="name" content="<nt:user-firstname/> <nt:user-lastname/>"/>
										                                                    <span class="itacaput"><nt:user-firstname/> <nt:user-lastname/></span>
										                                                </nt:user>
										                                            </c:if>
										                                            <c:if test="${internalUser == '' && authorName != ''}">
										                                                <meta itemprop="name" content="<nt:author-name/>"/>
										                                               <span class="itacaput"><a style="width: auto" class="her" alt="<nt:author-name/>" title="<nt:author-name/>"><nt:author-name/></a></span>
										                                            </c:if>
										                                        </nt:authors>
										                                </nt:conditional-include>
										                                
										        <!--/Autor-->
										        
										<!--Fecha modificacion-->
										
										                           <nt:conditional-include oncondition="${news.hideTime == 'false'}">
										                                    <c:set var="horaNotaSistema" scope="page"><fmt:formatDate pattern="dd-MM-yyyy HH:mm:ss" value="${news.lastModificationDate}" /></c:set>
										                                    <jsp:useBean id="horaNotaSistema" type="java.lang.String" />
										                                                                                               <fmt:setLocale value="es_ES"/>
										                                        <fmt:formatDate pattern="d MMMM yyyy" value="${news.lastModificationDate}" />
										                                        <%  try{ %> <%=CalcularDias(horaNotaSistema)%> <% } catch (Exception e){ %>   <% } %>
										                                        <!--<fmt:formatDate pattern="dd-MM-yyyy HH:mm:ss" value="${news.lastModificationDate}" />-->
										                           </nt:conditional-include>
										                           -
									      <!--/Fecha modificacion-->	
									      				
										<!--TITULO DE NOTA-->
												<div class="title-container">
										                        <div class="subtitle">
										                            <nt:conditional-include oncondition="${news.hideCopete == 'false'}">
										                                <nt:sub-title/>
										                            </nt:conditional-include>
										                        </div>
										                        <div class="title">
										                          <nt:title value="detail"/>
										                        </div>
										                </div>  <!--/title-container-->  
										 <!--/TITULO DE NOTA-->  
										 
									<!--ADD THIS DE NOTICIA--><div class="compartirblogs center-block">
													<cms:include page="../elements/TS_Common_AddThisjrvo.jsp" >
														<cms:param name="link"><nt:link/></cms:param> 
														<cms:param name="titulo"><nt:title value="section"/></cms:param>       
													</cms:include>
												</div>
									<!--FIN ADD THIS DE NOTICIA-->		
										
									                    <div class="image-container">
										<!-- INICIO MULTIMEDIA -->       
										                      <%
										                            String width = "930" ;
										                            String height = "310" ;
										                            int contadorVideo = 0;
										                        %>
													 
										                        <nt:conditional-include oncondition="${news.detailPreview == 'imagen'}">
										                        
										                            <nt:conditional-include oncondition="${news.imagescount > 0}">
										                                <div id="fotos">
										                                    <ul class="slides">
										                                        <nt:image-gallery>
										                                            <li itemscope class=".itemscope" itemtype="http://schema.org/ImageObject">
										                                                <c:set var="imageDescription" scope="page"><nt:image-description/></c:set>
										                                                <c:set var="imageSource" scope="page"><nt:image-source/></c:set>
										                                                <nt:conditional-include oncondition="${(imageDescription != '') && (imageSource != '')}">
										                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='<nt:image-description/>' title="<nt:image-description/> | Foto: <nt:image-source/>" width="<%=width %>" height="<%=height %>" />
										                                                </nt:conditional-include>
										                                                <nt:conditional-include oncondition="${(imageDescription != '') && (imageSource == '')}">
										                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='<nt:image-description/>' title='<nt:image-description/>' width="<%=width %>" height="<%=height %>" />
										                                                </nt:conditional-include>
										                                                <nt:conditional-include oncondition="${(imageDescription == '') && (imageSource != '')}">
										                                                    <meta itemprop="description" content='${news.titles[news.titleDetailNum]}'>
										                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='${news.titles[news.titleDetailNum]}' title="${news.titles[news.titleDetailNum]} | Foto: <nt:image-source/>" width="<%=width %>" height="<%=height %>" />
										                                                </nt:conditional-include>
										                                                <nt:conditional-include oncondition="${(imageDescription == '') && (imageSource == '')}">
										                                                    <meta itemprop="description" content='${news.titles[news.titleDetailNum]}'>
										                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='${news.titles[news.titleDetailNum]}' title='${news.titles[news.titleDetailNum]}' width="<%=width %>" height="<%=height %>" />
										                                                </nt:conditional-include>
										                                            </li>
										                                        </nt:image-gallery>
										                                    </ul>
										                                </div>
										                            </nt:conditional-include>
										                          
										                          
										                            <nt:conditional-include oncondition="${news.videoscount > 0}">
										                                <div id="videos">
										                                    <ul class="slides">
										                                        <c:set var="videopath" value="" />
										                                        <nt:video-flash>
										                                            <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
										                                                <c:set var="videopath">
										                                                    <nt:video-path/>,<nt:video-thumbnail/>,<nt:video-title/>
										                                                </c:set>
										                                                <meta itemprop="name" content='<nt:video-title/>' />
										                                                <meta itemprop="publisher" content="<nt:video-publisher/>" />
										                                                <meta itemprop="thumbnailUrl" content="<nt:video-thumbnail/>" />
										                                                <meta itemprop="contentURL" content="<nt:video-path/>" />
										                                                <meta itemprop="keywords" content="<nt:video-tags/>" />
										                                                <meta itemprop="duration" content="<nt:video-duration/>" />
										                                                <meta itemprop="bitrate" content="<nt:video-bitrate/>" />
										                                                <cms:include page="TS_Common_VideoFlash.jsp">
										                                                    <cms:param name="video">${videopath}</cms:param>
										                                                    <cms:param name="imagen"><nt:video-thumbnail/></cms:param>
										                                                    <cms:param name="titulo"><nt:video-title/></cms:param>
										                                                    <cms:param name="width" value="100%"/>
										                                                    <cms:param name="height" value="<%=height %>"/>
										                                                </cms:include>
										                                            </li>
										                                        </nt:video-flash>
										
										                                        <nt:video-youtube>
										                                            <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
										                                                <meta itemprop="name" content='<nt:video-title/>' />
										                                                <meta itemprop="publisher" content="<nt:video-publisher/>" />
										                                                <meta itemprop="thumbnailUrl" content="//i1.ytimg.com/vi/<nt:video-youtubeid/>/hqdefault.jpg" />
										                                                <meta itemprop="contentURL" content="http://www.youtube.com/v/<nt:video-youtubeid/>" />
										                                                <iframe id="player<%=contadorVideo%>" class="iframeYT" width="100%" height="<%=height %>" src="//www.youtube.com/embed/<nt:video-youtubeid/>?enablejsapi=1&version=3&playerapiid=player<%=contadorVideo%>" frameborder="0" allowfullscreen> </iframe>
										                                                <% contadorVideo++; %>
										                                            </li>
										                                        </nt:video-youtube>
										
										                                        <nt:video-embedded>
										                                            <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
										                                                <meta itemprop="name" content='<nt:video-title/>' />
										                                                <nt:video-code />
										                                            </li>
										                                        </nt:video-embedded>
										
										                                    </ul>
										                                </div>
										                            </nt:conditional-include>
										                            
										                        </nt:conditional-include>
													 <nt:conditional-include oncondition="${news.detailPreview != 'imagen'}">
										                            <nt:conditional-include oncondition="${news.videoscount > 0}">
										                                <div id="videos">
										                                    <ul class="slides">
										                                        <nt:conditional-include oncondition="${news.detailPreview == 'videoFlash'}">
										                                            <c:set var="videopath" value="" />
										                                            <nt:video-flash>
										                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
										                                                    <c:set var="videopath">
										                                                        <nt:video-path/>,<nt:video-thumbnail/>,<nt:video-title/>
										                                                    </c:set>
										                                                    <meta itemprop="name" content='<nt:video-title/>' />
										                                                    <meta itemprop="publisher" content="<nt:video-publisher/>" />
										                                                    <meta itemprop="thumbnailUrl" content="<nt:video-thumbnail/>" />
										                                                    <meta itemprop="contentURL" content="<nt:video-path/>" />
										                                                    <meta itemprop="keywords" content="<nt:video-tags/>" />
										                                                    <meta itemprop="duration" content="<nt:video-duration/>" />
										                                                    <meta itemprop="bitrate" content="<nt:video-bitrate/>" />
										                                                    <cms:include page="TS_Common_VideoFlash.jsp">
										                                                        <cms:param name="video">${videopath}</cms:param>
										                                                        <cms:param name="imagen"><nt:video-thumbnail/></cms:param>
										                                                        <cms:param name="titulo"><nt:video-title/></cms:param>
										                                                        <cms:param name="width" value="50%"/>
										                                                        <cms:param name="height" value="<%=height %>"/>
										                                                    </cms:include>
										                                                </li>
										                                            </nt:video-flash>
										
										                                            <nt:video-youtube>
										                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
										                                                    <meta itemprop="name" content='<nt:video-title/>' />
										                                                    <meta itemprop="publisher" content="<nt:video-publisher/>" />
										                                                    <meta itemprop="thumbnailUrl" content="//i1.ytimg.com/vi/<nt:video-youtubeid/>/hqdefault.jpg" />
										                                                    <meta itemprop="contentURL" content="http://www.youtube.com/v/<nt:video-youtubeid/>" />
										                                                    <iframe id="player<%=contadorVideo%>" class="iframeYT" width="50%" height="<%=height %>" src="//www.youtube.com/embed/<nt:video-youtubeid/>?enablejsapi=1&version=3&playerapiid=player<%=contadorVideo%>" frameborder="0" allowfullscreen> </iframe>
										                                                    <% contadorVideo++; %>
										                                                </li>
										                                            </nt:video-youtube>
										
										                                            <nt:video-embedded>
										                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
										                                                    <meta itemprop="name" content='<nt:video-title/>' />
										                                                    <nt:video-code />
										                                                </li>
										                                            </nt:video-embedded>
										                                        </nt:conditional-include>
										
										                                        <nt:conditional-include oncondition="${news.detailPreview == 'videoYouTube'}">
										                                            <nt:video-youtube>
										                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
										                                                    <meta itemprop="name" content='<nt:video-title/>' />
										                                                    <meta itemprop="publisher" content="<nt:video-publisher/>" />
										                                                    <meta itemprop="thumbnailUrl" content="//i1.ytimg.com/vi/<nt:video-youtubeid/>/hqdefault.jpg" />
										                                                    <meta itemprop="contentURL" content="http://www.youtube.com/v/<nt:video-youtubeid/>" />
										                                                    <iframe id="player<%=contadorVideo%>" class="iframeYT" width="200%" height="<%=height %>" src="//www.youtube.com/embed/<nt:video-youtubeid/>?enablejsapi=1&version=3&playerapiid=player<%=contadorVideo%>" frameborder="0" allowfullscreen> </iframe>
										                                                    <% contadorVideo++; %>
										                                                </li>
										                                            </nt:video-youtube>
										
										                                            <c:set var="videopath" value="" />
										                                            <nt:video-flash>
										                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
										                                                    <c:set var="videopath">
										                                                        <nt:video-path/>,<nt:video-thumbnail/>,<nt:video-title/>
										                                                    </c:set>
										                                                    <meta itemprop="name" content='<nt:video-title/>' />
										                                                    <meta itemprop="publisher" content="<nt:video-publisher/>" />
										                                                    <meta itemprop="thumbnailUrl" content="<nt:video-thumbnail/>" />
										                                                    <meta itemprop="contentURL" content="<nt:video-path/>" />
										                                                    <meta itemprop="keywords" content="<nt:video-tags/>" />
										                                                    <meta itemprop="duration" content="<nt:video-duration/>" />
										                                                    <meta itemprop="bitrate" content="<nt:video-bitrate/>" />
										                                                    <cms:include page="TS_Common_VideoFlash.jsp">
										                                                        <cms:param name="video">${videopath}</cms:param>
										                                                        <cms:param name="imagen"><nt:video-thumbnail/></cms:param>
										                                                        <cms:param name="titulo"><nt:video-title/></cms:param>
										                                                        <cms:param name="width" value="100%"/>
										                                                        <cms:param name="height" value="<%=height %>"/>
										                                                    </cms:include>
										                                                </li>
										                                            </nt:video-flash>
										
										                                            <nt:video-embedded>
										                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
										                                                    <meta itemprop="name" content='<nt:video-title/>' />
										                                                    <nt:video-code />
										                                                </li>
										                                            </nt:video-embedded>
										                                        </nt:conditional-include>
										
										                                        <nt:conditional-include oncondition="${news.detailPreview == 'videoEmbedded'}">
										                                            <nt:video-embedded>
										                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
										                                                    <meta itemprop="name" content="<nt:video-title/>" />
										                                                    <nt:video-code />
										                                                </li>
										                                            </nt:video-embedded>
										
										                                            <c:set var="videopath" value="" />
										                                            <nt:video-flash>
										                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
										                                                    <c:set var="videopath"><nt:video-path/>,<nt:video-thumbnail/>,<nt:video-title/></c:set>
										                                                    <meta itemprop="name" content='<nt:video-title/>' />
										                                                    <meta itemprop="publisher" content="<nt:video-publisher/>" />
										                                                <meta itemprop="thumbnailUrl" content="<nt:video-thumbnail/>" />
										                                                <meta itemprop="contentURL" content="<nt:video-path/>" />
										                                                <meta itemprop="keywords" content="<nt:video-tags/>" />
										                                                <meta itemprop="duration" content="<nt:video-duration/>" />
										                                                <meta itemprop="bitrate" content="<nt:video-bitrate/>" />
										                                                <cms:include page="TS_Common_VideoFlash.jsp">
										                                                    <cms:param name="video">${videopath}</cms:param>
										                                                    <cms:param name="imagen"><nt:video-thumbnail/></cms:param>
										                                                    <cms:param name="titulo"><nt:video-title/></cms:param>
										                                                    <cms:param name="width" value="100%"/>
										                                                    <cms:param name="height" value="<%=height %>"/>
										                                                </cms:include>
										                                                </li>
										                                            </nt:video-flash>
										
										                                            <nt:video-youtube>
										                                                <li itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
										                                                    <meta itemprop="name" content='<nt:video-title/>' />
										                                                    <meta itemprop="publisher" content="<nt:video-publisher/>" />
										                                                    <meta itemprop="thumbnailUrl" content="//i1.ytimg.com/vi/<nt:video-youtubeid/>/hqdefault.jpg" />
										                                                    <meta itemprop="contentURL" content="http://www.youtube.com/v/<nt:video-youtubeid/>" />
										                                                    <iframe id="player<%=contadorVideo%>" class="iframeYT" width="200%" height="<%=height %>" src="//www.youtube.com/embed/<nt:video-youtubeid/>?enablejsapi=1&version=3&playerapiid=player<%=contadorVideo%>" frameborder="0" allowfullscreen> </iframe>
										                                                    <% contadorVideo++; %>
										                                                </li>
										                                            </nt:video-youtube>
										                                        </nt:conditional-include>
										                                    </ul>
										                                </div>
										                            </nt:conditional-include>
										                            <nt:conditional-include oncondition="${news.imagescount > 0}">
										                                <div id="fotos">
										                                    <ul class="slides">
										                                        <nt:image-gallery>
										                                            <li itemscope class=".itemscope" itemtype="http://schema.org/ImageObject">
										                                                <c:set var="imageDescription" scope="page"><nt:image-description/></c:set>
										                                                                <c:set var="imageSource" scope="page"><nt:image-source/></c:set>
										                                                <nt:conditional-include oncondition="${(imageDescription != '') && (imageSource != '')}">
										                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='<nt:image-description/>' title="<nt:image-description/> | Foto: <nt:image-source/>" width="<%=width %>" height="<%=height %>" />
										                                                    <div class="caption" content='<nt:image-description/>'><h2><nt:image-description/> | Foto: <nt:image-source/></h2></div>
										                                                </nt:conditional-include>
										                                                <nt:conditional-include oncondition="${(imageDescription != '') && (imageSource == '')}">
										                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='<nt:image-description/>' title='<nt:image-description/>' width="<%=width %>" height="<%=height %>" />
										                                                    <div class="caption" content='<nt:image-description/>'><h2><nt:image-description/></h2></div>
										                                                </nt:conditional-include>
										                                                <nt:conditional-include oncondition="${(imageDescription == '') && (imageSource != '')}">
										                                                    <meta itemprop="description" content='${news.titles[news.titleDetailNum]}'>
										                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='${news.titles[news.titleDetailNum]}' title="${news.titles[news.titleDetailNum]} | Foto: <nt:image-source/>" width="<%=width %>" height="<%=height %>" />
										                                                    <div class="caption" content='<nt:image-description/>'><h2><nt:image-description/> | Foto: <nt:image-source/></h2></div>
										                                                </nt:conditional-include>
										                                                <nt:conditional-include oncondition="${(imageDescription == '') && (imageSource == '')}">
										                                                    <meta itemprop="description" content='${news.titles[news.titleDetailNum]}'>
										                                                    <img itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='${news.titles[news.titleDetailNum]}' title='${news.titles[news.titleDetailNum]}' width="<%=width %>" height="<%=height %>" />
										                                                </nt:conditional-include>
										                                            </li>
										                                        </nt:image-gallery>
										                                    </ul>
										                                </div>
										                            </nt:conditional-include>
										                        </nt:conditional-include>
										
										                        <nt:conditional-include oncondition="${news.imagescount == 0 && news.videoscount == 0}">
										                            <div id="fotos">
										                                <nt:preview-image>
										                                        <c:set var="imageDescription" scope="page">
										                                            <nt:image-description/>
										                                        </c:set>
										                                        <c:set var="imageSource" scope="page">
										                                            <nt:image-source/>
										                                        </c:set>
										                                        <nt:conditional-include oncondition="${(imageDescription != '') && (imageSource != '')}">
										                                            <img class="img-responsive" itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='<nt:image-description/>' title="<nt:image-description/> | Foto: <nt:image-source/>" width="<%=width %>" height="<%=height %>" />
										                                        </nt:conditional-include>
										                                        <nt:conditional-include oncondition="${(imageDescription != '') && (imageSource == '')}">
										                                            <img class="img-responsive" itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='<nt:image-description/>' title='<nt:image-description/>' width="<%=width %>" height="<%=height %>" />
										                                        </nt:conditional-include>
										                                        <nt:conditional-include oncondition="${(imageDescription == '') && (imageSource != '')}">
										                                            <meta itemprop="description" content='${news.titles[news.titleDetailNum]}'>
										                                            <img class="img-responsive" itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='${news.titles[news.titleDetailNum]}' title="${news.titles[news.titleDetailNum]} | Foto: <nt:image-source/>" width="<%=width %>" height="<%=height %>" />
										                                        </nt:conditional-include>
										                                        <nt:conditional-include oncondition="${(imageDescription == '') && (imageSource == '')}">
										                                            <meta itemprop="description" content='${news.titles[news.titleDetailNum]}'>
										                                            <img class="img-responsive" itemprop="contentURL" src="<nt:image-path width='<%=width %>' height='<%=height %>'  scaletype='2'/>" alt='${news.titles[news.titleDetailNum]}' title='${news.titles[news.titleDetailNum]}' width="<%=width %>" height="<%=height %>" />
										                                        </nt:conditional-include>
										                                </nt:preview-image>
										                            </div>
										                        </nt:conditional-include>
										          <!--/FIN MULTIMEDIA -->
										          
									<!--/image-container--></div>

											     <p>
										              	 <nt:body-splitter>
									                                  <nt:polls-dynamic-position style="TS-ES/NOTA"></nt:polls-dynamic-position>
									                                        <c:set var="bodyP" scope="page">
									                                             <nt:body-paragraph/>
									                                                  </c:set>
									                                                     <%-- Verificar si El parrafo contiene un Iframe, que a su vez sea un Video de Youtube, modifica sus atributos. Coloca que  pertenece a la clase:'vid-youtube', height='100%' y width='100%' --%>
									                                                      <%String bodyParagrahp=pageContext.getAttribute("bodyP").toString();
									                                                            String bodyPa="";
									                                                                 if((bodyParagrahp.contains("<iframe ")) && (bodyParagrahp.contains("youtube"))){
									                                                                       bodyParagrahp=bodyParagrahp.replace("height="," class='vid-youtube' height=");
									                                                                          String[] cortos= bodyParagrahp.split(" ");
									                                                                            for (int i = 0; i < cortos.length; i++) {
									                                                                                    if (cortos[i].contains( "height=")) {
									                                                                                            cortos[i]="height='100%'";
									                                                                                    }
									                                                                            if (cortos[i].contains( "width=")) {
									                                                                                    cortos[i]="width='100%'></iframe></p>";
									                                                                            }
									                                                                            bodyPa=bodyPa+" "+ cortos[i];
									                                                                            }
									                                                                    bodyParagrahp=bodyPa;
									                                                                    }
									                                                                    %>
									                                                     <%=bodyParagrahp%>
									                           </nt:body-splitter>
										               </p>
 												<!--TAGS-->
												<div class="col-six">
									                             <nt:tags-list separator=",">
									                                 <nt:conditional-include onposition="1">
									                                      <div class="tagBarNews" itemprop="keywords" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
											                              <h4>Tags</h4>
											                         	 </nt:conditional-include>
											                                    <a class="btn btn-default" href="/tags/<nt:tags-item/>" alt="<nt:tags-item/>" title="<nt:tags-item/>" itemprop="title">
											                                         <nt:tags-item/>
											                                    </a>
										                               		<nt:conditional-include onposition="last">
									                                       </div>
									                                  </nt:conditional-include>
									                              </nt:tags-list>
												</div><!--col-six-->
										         	 <!--/FIN TAGS-->
										          
										        <!--NOTICIAS RELACIONADAS-->
										        
										              <div class="related_post">
										          	 <h2 class=" relacionados">Relacionados</h2>
										         		<ul class="relacionados1">
													       <nt:news> 
													              <c:set var="i" value="0" scope="page"/>
													              <ul class="relacionados2">
													                <nt:related-news size="4">  
													                    <c:set var="i" value="${i+1}" />            
													                    <c:if test="${i<= 4 }">                                                 
													                        <li class="col-xs-3 maincontent ">
													                            <nt:conditional-include oncondition="${news.homePreview == 'imagen'}">
													                                <nt:preview-image>
													                                    <meta itemprop="description" content='${imageDescription}'>
													                                    <%-- imagenes de las notas relacionadas --%>
													                                    <img itemprop="contentURL" class="imgrela" src="<nt:image-path width='160' height='120' scaletype='1'/>" data-original="<nt:image-path width='160' height='120' scaletype='2'/>" width='160' height='120' alt="${imageDescription}" />
													                               </nt:preview-image><!--preview image-->
													                            </nt:conditional-include><!--oncondition-->
													                            <a href="<nt:link/>" title="<nt:title value='home' />" alt="<nt:title value='home' />">
													                                <nt:title value="home" maxlength="50" />
													                            </a>
													                        </li> <!--col-xs-3 maincontent-->    
													                                                                                           
													                   </c:if> <!--contador-->
												           	        </nt:related-news><!--size-->
												         	</nt:news>
											      		</ul><!--relacionados1-->   
												</div>	<!--related_post-->
										            
											   
											<!--COMENTARIOS FACEBOOK Y TELESUR-->
												
									                             <div class="comentarios row">
									                                        <cms:include page="I_TS_Article_Commentsjrvo.jsp"/>
									                             </div>
									                                    		     			
							                            <!--FIN COMENTARIOS FACEBOOK Y TELESUR-->
											
			
			</article><!--col-sm-8 maincontent-->

									      <!-- RIGHT COLUMN-->
												<aside class="col-md-4 sidebar sidebar-left">
									
													<div class="widget">
														<cms:include page="../elements/TS_Common_RightColumn.jsp" >
														<	cms:param name="template">Agenda</cms:param>
														</cms:include>
													</div>
												</aside>			
										<!-- /FIN RIGHT COLUMN-->
			
												
										         	 
										         
		</nt:news>  <!--general-->	
		</div><!--row topspace-->
	</div>	<!-- /container -->
</main><!--GENERAL-->


<!--////FIN DE SECCION INTERNO DE NOTICIA-->


	                 
<!--FUNCION CALCULAR FECHA-->
			
				<%!
				    public String CalcularDias(String fechaNota) {
				        Date dateNow = new Date();
				        SimpleDateFormat dateformatddMMyyyy = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
				        String date_to_string = dateformatddMMyyyy.format(dateNow);
				
				        String fechaInicial = fechaNota;
				        String fechaFinal = date_to_string;
				
				        java.util.GregorianCalendar jCal = new java.util.GregorianCalendar();
				        java.util.GregorianCalendar jCal2 = new java.util.GregorianCalendar();
				        jCal.set(Integer.parseInt(fechaInicial.substring(6, 10)), Integer.parseInt(fechaInicial.substring(3, 5)) - 1, Integer.parseInt(fechaInicial.substring(0, 2)), Integer.parseInt(fechaInicial.substring(11, 13)), Integer.parseInt(fechaInicial.substring(14, 16)), Integer.parseInt(fechaInicial.substring(17, 19)));
				        jCal2.set(Integer.parseInt(fechaFinal.substring(6, 10)), Integer.parseInt(fechaFinal.substring(3, 5)) - 1, Integer.parseInt(fechaFinal.substring(0, 2)), Integer.parseInt(fechaFinal.substring(11, 13)), Integer.parseInt(fechaFinal.substring(14, 16)), Integer.parseInt(fechaFinal.substring(17, 19)));
				
				        long diferencia = jCal2.getTime().getTime() - jCal.getTime().getTime();
				        double minutos = diferencia / (1000 * 60);
				        long horas = (long) (minutos / 60);
				        long minuto = (long) (minutos % 60);
				        long segundos = (long) diferencia % 1000;
				        long dias = horas / 24;
				
				        String[] mesesAnio = new String[12];
				        mesesAnio[0] = "31";
				
				        if (jCal.isLeapYear(jCal.YEAR)) {
				            mesesAnio[1] = "29";
				        } else {
				            mesesAnio[1] = "28";
				        }
				        mesesAnio[2] = "31";
				        mesesAnio[3] = "30";
				        mesesAnio[4] = "31";
				        mesesAnio[5] = "30";
				        mesesAnio[6] = "31";
				        mesesAnio[7] = "31";
				        mesesAnio[8] = "30";
				        mesesAnio[9] = "31";
				        mesesAnio[10] = "30";
				        mesesAnio[11] = "31";
				        int diasRestantes = (int) dias;
				        int totalMeses = 0;
				        int mesActual = jCal.MONTH;
				        for (int i = 0; i <= 11; i++) {
				            if ((mesActual + 1) >= 12) {
				                mesActual = i;
				            }
				            if ((diasRestantes - Integer.parseInt(mesesAnio[mesActual])) >= 0) {
				                totalMeses++;
				                diasRestantes = diasRestantes - Integer.parseInt(mesesAnio[mesActual]);
				                mesActual++;
				            } else {
				                break;
				            }
				        }
				        horas = horas % 24;
				        String salida = "";
				
				        int diaEntero = Integer.parseInt(String.valueOf(diasRestantes));
				        int horasTranscurridas = Integer.parseInt(String.valueOf(horas));
				        int minTranscurridos = Integer.parseInt(String.valueOf(minuto));
				        System.out.println(diaEntero);
				
				        if (diaEntero > 0) {
				
				            salida = "";
				
				        } else {
				
				            if (horasTranscurridas > 1) {
				                salida = "(Hace " + String.valueOf(horas) + " horas " + String.valueOf(minuto) + " minutos)";
				            } else {
				                if ((horasTranscurridas < 2) && (horasTranscurridas != 0)) {
				                    salida = "(Hace " + String.valueOf(horas) + " hora " + String.valueOf(minuto) + " minutos)";
				                } else {
				                    if ((minTranscurridos > 1) || (minTranscurridos == 0)) {
				                        salida = "(Hace " + String.valueOf(minuto) + " minutos)";
				                    } else {
				                        salida = "(Hace " + String.valueOf(minuto) + " minuto)";
				                    }
				
				                }
				            }
				        }
				
				        return salida;
				    }
				%>


<!--/ FIN FUNCION CALCULAR FECHA-->




<cms:include page="/system/modules/com.tfsla.diario.telesur/elements/TS_Common_Footerjrvo.jsp">
		<cms:param name="template">homejrvo</cms:param>
</cms:include>

<!--LLAMADO DEL FOOTER TELESUR-->


<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="/system/modules/com.tfsla.diario.telesur/resources/js/template_jquery_integracion.js"></script>
</body>
</html>
