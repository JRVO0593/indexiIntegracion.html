<!DOCTYPE html>
<%@ include file="../elements/TS_Common_Libraries.jsp" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page import="java.util.Locale"%>
<%@ taglib prefix="nt" uri="http://www.tfsla.com/taglib/tfsNewsTags" %>
<title>INTERNO NOTA</title>
<html lang="es">
					
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

<head>
							<!--LLAMADO AL HEAD (METAS)-->
	<cms:include page="/system/modules/com.tfsla.diario.telesur/elements/TS_Common_headjrvo.jsp">
		<cms:param name="template">homejrvo</cms:param>
	</cms:include>
	<nt:page-builder-init/>
							<!--FIN LLAMADO AL HEAD (METAS)-->

	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<link href="/system/modules/com.tfsla.diario.telesur/resources/css/estilosintegracion.css" rel="stylesheet" type="text/css">
	
</head>
		
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
<body>
<!--MENU DEL HEADER-->
<div class="divmenu">
	<cms:include page="/system/modules/com.tfsla.diario.telesur/elements/TS_Common_Menujrvo.jsp" >
		<cms:param name="pageSeccion"><%=pageSeccion%></cms:param>        
	</cms:include> 
</div>	
				 
						<main id="main">

							<div class="container">
							
								<div class="row topspace">
								
									<div class="col-sm-8 maincontent">
										<header class="entry-header">
					 						<div class="entry-meta"> 
					 							<span class="posted-on"><time class="entry-date published" date="2013-06-17">Noviembre 23, 2016</time></span>			
					 						</div> 
					 						<h1 class="section-title"><strong><a href="www.telesurtv.net" rel="bookmark">INTERNO DE NOTICIA</a></strong></h1>
										</header>
										
										<nt:news>
										<!--PREVISUALIZACION DE IMAGEN-->
										    <%@ include file="../elements/TS_Common_Libraries.jsp" %>
										    <%@page import="java.util.Date"%>
										    <%@page import="java.text.SimpleDateFormat"%>
										    <%@page import="java.text.DateFormat"%>
										    <%@page import="java.util.Calendar"%>
										
										    <div class="news-view-container height95pc">
										        <div class="news-view height100pc">
										            <div class="news-container height100pc justScrollY">
										                <div class="news-header">
										                    <div class="metadata-container">
										                        <div class="category-container">
										                            <a href="/seccion/<nt:section-name/>" class="her" alt="<nt:section-description/>" title="<nt:section-description/>"><nt:section-description/></a>
										                            <nt:categories>
										                                <nt:conditional-include onposition="first">
										                                    <c:set var="id"><nt:category-name/></c:set>
										                                        <%
										                                        String id =  pageContext.getAttribute("id").toString();
										                                        id = id.replaceAll("/system/categories","");
										                                        %>
										                                    <a href="<%=id%>" class="her" alt="<nt:category-description/>" title="<nt:category-description/>"> > <nt:category-description/></a>
										                                </nt:conditional-include>
										                            </nt:categories>
										                        </div>
										                        <div class="date-author-container">
										                            Publicado por:
										                            <nt:sources>
										                                <nt:source-name/>
										                            </nt:sources>
										
										                            <span> / </span>
										
										                            <c:set var="idsection"><nt:section-name/></c:set>
										                            <c:if test="${idsection != 'opinion'}">
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
										                                </br>
										                            </c:if>
										
										                           <nt:conditional-include oncondition="${news.hideTime == 'false'}">
										                                    <c:set var="horaNotaSistema" scope="page"><fmt:formatDate pattern="dd-MM-yyyy HH:mm:ss" value="${news.lastModificationDate}" /></c:set>
										                                    <jsp:useBean id="horaNotaSistema" type="java.lang.String" />
										                                                                                               <fmt:setLocale value="es_ES"/>
										                                        <fmt:formatDate pattern="d MMMM yyyy" value="${news.lastModificationDate}" />
										                                        <%  try{ %> <%=CalcularDias(horaNotaSistema)%> <% } catch (Exception e){ %>   <% } %>
										                                        <!--<fmt:formatDate pattern="dd-MM-yyyy HH:mm:ss" value="${news.lastModificationDate}" />-->
										                           </nt:conditional-include>
										                         
										                        </div>
										                    </div>
																	
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
										                        <!-- FIN MULTIMEDIA -->
										                    </div>
										               

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
										           </div><!--/news-header-->
										                <!--/TITULO DE NOTA-->  
										            <div class="row content">
										            
									            
										            
										            <!--CUERPO DE LA NOTA-->
										            
										            
									                    <div class="col-xs-12">
									                        <div class="news-content">
									                            <div class="clearfix"></div>
									                            <div class="content">
									                                <!--iframe vacio-->
									                                <c:set var="iframefull"><nt:iframe/></c:set>
									                                <c:if test="${iframefull == ''}">
									                                    <!--wrapper-->
									                                    <div class="wrapper">
									                                        <div itemscope itemtype="http://schema.org/Article">
									                                            <meta itemprop='isFamilyFriendly' content='True'/>
									                                            <meta itemprop="interactionCount" content="UserComments:${news.commentcount}"/>
									
									                                            <!-- Destacado -->
									                                            <div class="row clear">
									                                            
									                			    
									                                                <!-- inicio worldtop -->  
									                                           	<div class="col-620 cont">
									                                                    <div class="nworldtop cont">
									                                                        <%--autor por opinion--%>
									                                                        <div class="capcredit" itemprop="publisher">
									                                                            <!--<a class="her">
									                                                                    <nt:sources>
									                                                                            <nt:source-name/><br/>
									                                                                    </nt:sources>
									                                                            </a>-->
									                                                        </div>
									                                                        
									                                                        <c:set var="idsection"><nt:section-name/></c:set>
									                                                        
									                                                    </div>
									                                                    
									                                                    <%--fin de autor--%>
									                                                    
									                                                 
									                                                    <div class="vworldtop cont">
									                                                        <figure>
									                                                            <div class="bloque-multimedia world-1">
									                                                                <nt:conditional-include oncondition="${news.detailPreview != 'iframe'}">
									                                                                    <cms:include page="../elements/TS_Article_Multimedia.jsp" />
									                                                                </nt:conditional-include>
									                                                                <nt:conditional-include oncondition="${news.detailPreview == 'iframe'}" >
									                                                                    <nt:iframe/>
									                                                                </nt:conditional-include>
									                                                            </div>
									                                                        </figure>
									                                                     
									                                                        <div class="capworldtop">
									
									                                                        </div>
									                                                       
									                                                    </div>
									                                                
									                                                </div>
									                                                
									                                                <!-- fin worldtop -->
									
									                                                <!-- inicio colmna izq col-six -->
									                                                <div class="col-six">
									                                                    <div class="cont bordercountry">
									                                                        <div class="dest cont">
									                                                            <div class="txt_newworld" itemprop="articleBody">
									                                                           <!--contenido de nota-->
									                                                                <nt:body-splitter>
									                                                                    <nt:polls-dynamic-position style="TS-ES/NOTA"> 
									                                                                    </nt:polls-dynamic-position>
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
									                                                            </div><!--/txt_newworld-->
									                                                           
									                                                           <!--TAGS-->
															<div class="col-six">
									                                                            <nt:tags-list separator=",">
									                                                                <nt:conditional-include onposition="1">
									                                                                    <div class="tagBarNews" itemprop="keywords" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
									                                                                      <h4>TAGS</h4>
									                                                                </nt:conditional-include>
									                                                                <a class="btn btn-default" href="/tags/<nt:tags-item/>" alt="<nt:tags-item/>" title="<nt:tags-item/>" itemprop="title">
									                                                                    <nt:tags-item/>
									                                                                </a>
									                                                                <nt:conditional-include onposition="last">
									                                                                    </div>
									                                                                </nt:conditional-include>
									                                                            </nt:tags-list>
															</div><!--"col-md-6 col-md-offset-3"--><!--/TAGS-->
															
									                                                           <%-- <nt:polls-fixed-position style="TS-ES/NOTA"> </nt:polls-fixed-position>--%>
																		
																
									                                                            <c:set var="i" value="1"/>
									                                                            <nt:files>
									                                                              <nt:conditional-include onposition="first">
									                                                                <div class="filesNews" >
									                                                                  <h4>Documentos adjuntos</h4>
									                                                                  <ul>
									                                                              </nt:conditional-include>
									                                                            
									                                                                  <c:set var="x" value="archivoAdjunto[${i}]/mostrarEnHome[1]" />
									                                                                  <nt:conditional-include oncondition="${news.genericElementValue[x] == 'true' }">
									                                                                    <c:set var="icon"><nt:file-icon/></c:set>
									                                                                    <nt:conditional-include oncondition="${icon == 'PDF'}" >
									                                                                      <li><a href="<nt:file-path/>" alt="<nt:file-title/>" title="<nt:file-title/>" target="_blank"><cms:img src="/arte/pdf.png" alt="PDF" title="PDF" /> <nt:file-title/></a></li>
									                                                                    </nt:conditional-include>
									                                                                    <nt:conditional-include oncondition="${icon != 'PDF'}" >
									                                                                      <li><a href="<nt:file-path/>" alt="<nt:file-title/>" title="<nt:file-title/>" target="_blank"> <nt:file-title/></a></li>
									                                                                    </nt:conditional-include>
									                                                                  </nt:conditional-include>
									                                                                  <c:set var="i">${i+1}</c:set>
									                                                              <nt:conditional-include onposition="last">
									                                                                  </ul>
									                                                                </div>
									                                                              </nt:conditional-include>
									                                                            </nt:files>
									                                                            -
									                                                           </div>
									                                                        <div class="separador margensep"></div>
									                                                    </div><!-- fin col-md-6 col-md-offset-3 -->
									                                                </div> <!-- fin colmna izq col-six -->
									                                            </div>
									                                            <!-- Fin Destacado -->
									                                        </div>
									                                        <!-- Fin SCHEMAS -->
									                                    </div><!--wrapper-->
									                                </c:if> <!--Fin if iframe-->
									                                
									                               </div>
									                                <c:if test="${iframefull != ''}">
									                                    <div class="wrapperFull">
									                                        <div class="btn-edit">
									                                            <nt:edit-buttons hasNew="true" hasDelete="true"/>
									                                        </div>
									                                        <div style="font-size:56px"> sayhello</div>
									                                        <nt:conditional-include oncondition="${news.detailPreview != 'iframe'}" >
									                                            <div class="Iframe-Container">
									                                                <iframe width="100%" height="360" src="<nt:iframe/>" frameborder="0"></iframe>
									                                            </div>
									                                        </nt:conditional-include>
									                                    </div>
									                                    <div id="container">
									                                       <div class="wrapper">
									                                        <cms:include page="../elements/I_TS_Article_Comments.jsp" />
									                                      </div>
									                                    </div>
									                                </c:if>
									                            </div>
									                        </div>
									                       <cms:include page="../elements/I_TS_Article_Comments.jsp" />
									                  </div>   
												
										
									</div>	<!--FIN col-sm-8 col-sm-offset-2 -->	
								</div> <!--FIN ROW TOPSAPACE-->
							  </div><!--FIN CONTAINER-->
						</main><!--FIN MAIN-->
					
<!--HASTA AQUI LISTO CUERPO DE LA NOTA Y MODULO MULTIMEDIA-->		

<!--Relacionados-->

<main id="main">
	<div class="container">					
		<div class="row topspace">
			<div class="col-sm-8 maincontent">
				<div class="news-sidebar height100pc justScrollY" >
					<!--<div class="news-advertisement">
				              <img src="http://placehold.it/320x105?text=Publicidad-320x105" alt="">
				        </div>-->
				        <div class="news-selector">
				               <div class="selector-header">
							Relacionados:
							        </div>
							<a href="<nt:link/>" title="${imageDescription}" alt="${imageDescription}">	
								<meta itemprop="description" content='${imageDescription}'>
								<img itemprop="contentURL" src="<nt:image-path width='300' height='150' scaletype='2'/>" data-original="<nt:image-path width='180' height='120' scaletype='2'/>" width='300' height='150' alt="${imageDescription}" />
							</a>
				             <ul>
				                    		<!-- Relacionados -->
				            <nt:news>
						<c:set var="i" value="0" scope="page"/>
							<ul>	
								<nt:related-news size="4">	
									<c:set var="i" value="${i+1}" />			
									<c:if test="${i<= 4 }">					   								
										<li>	
											<a href="<nt:link/>" title="<nt:title value='home' />" alt="<nt:title value='home' />">
											<nt:title value="home" maxlength="63" />
										</li>																 
									
									</c:if>	
								</nt:related-news>	
							</ul>					
					     </nt:news>
				                    
				                    <!-- FIN Relacionados-->
				                         <cms:include page="../elements/I_TS_NewsView_Cxsense.jsp"> </cms:include>
				              </ul>             
				                </div>
				            </div>
				            <div class="clearfix"></div>
				        </div>
				     <div class="news-sidebar ColPruebas"></div>
				</div><!--news-sidebar height100pc justScrollY-->
				</nt:news>	
				</div><!--news-sidebar height100pc justScrollY-->			
			</div><!--col-sm-8 maincontent-->
		</div><!--row topspace-->
	</div><!--container-->	
</main>
		
		
<%--	COMENTARIOS DE TEMPLATE DE PRUEBA
						<div class="row">
							<div class="col-sm-8 col-sm-offset-2">
				
								<div id="comments">	
									<h3 class="comments-title">3 Comments</h3>
									<a href="#comment-form" class="leave-comment">Leave a Comment</a>
									
									<ol class="comments-list">
										<li class="comment">
											<div>
												<img src="/arte/avatar_man.png" alt="Avatar" class="avatar">
																
												<div class="comment-meta">
													<span class="author"><a href="#">John Doe</a></span>
													<span class="date"><a href="#">January 22, 2011 at 4:55 pm</a></span>
													<span class="reply"><a href="#">Reply</a></span>
												</div>
				
												<div class="comment-body">
													Morbi velit eros, sagittis in facilisis non.
												</div>
											</div>
				
											<ul class="children">
												<li class="comment">
													<div>
														<img src="/arte/avatar_man.png" alt="Avatar" class="avatar">
																				
														<div class="comment-meta">
															<span class="author"><a href="#">John Doe</a></span>
															<span class="date"><a href="#">January 22, 2011 at 4:55 pm</a></span>
															<span class="reply"><a href="#">Reply</a></span>
														</div><!-- .comment-meta -->
				
														<div class="comment-body">
															Morbi velit eros, sagittis in facilisis non, rhoncus et erat. Nam posuere tristique sem, eu ultricies tortor imperdiet vitae. Curabitur lacinia neque non metus.
														</div><!-- .comment-body -->
													</div>
												</li>
											</ul><!-- .children -->
										</li>
				
										<li class="comment">
											<div>
												<img src="/arte/avatar_woman.png" alt="Avatar" class="avatar">
												
												<div class="comment-meta">
													<span class="author"><a href="#">Jonnes</a></span>
													<span class="date"><a href="#">January 22, 2011 at 4:55 pm</a></span>
													<span class="reply"><a href="#">Reply</a></span>
												</div><!-- .comment-meta -->
				
												<div class="comment-body">
													Morbi velit eros, sagittis in facilisis non, rhoncus et erat. Nam posuere tristique sem, eu ultricies tortor imperdiet vitae. Curabitur lacinia neque non metus.												</div><!-- .comment-body -->
											</div>
										</li>
									</ol>
									
									<div class="clearfix"></div>
				
									<nav id="comment-nav-below" class="comment-navigation clearfix" role="navigation"><div class="nav-content">
											<div class="nav-previous">&larr; Older Comments</div>
											<div class="nav-next">Newer Comments &rarr;</div>
									</div></nav><!-- #comment-nav-below -->
				
				
									<div id="respond">
										<h3 id="reply-title">Leave a Reply</h3>
										<form action="" method="post" id="commentform" class="">
											<div class="form-group">
												<label for="inputName">Name</label>
												<input type="text" class="form-control" id="inputName" placeholder="Enter your name">
											</div>
											<div class="form-group">
												<label for="inputEmail">Email address <i class="text-danger">*</i></label>
												<input type="email" class="form-control" id="inputEmail" placeholder="Enter your email">
											</div>
											<div class="form-group">
												<label for="inputWeb">Website</label>
												<input type="nane" class="form-control" id="inputWeb" placeholder="http://">
											</div>
											<div class="form-group">
												<label for="inputComment">Comment</label>
												<textarea class="form-control" rows="6"></textarea>
											</div>
											<div class="row">
												<div class="col-md-8">
													<div class="checkbox">
														<label> <input type="checkbox"> Subscribe to updates</label>
													</div>
												</div>
												<div class="col-md-4 text-right">
				  									<button type="submit" class="btn btn-action">Submit</button>
												</div>
										</form>
									</div> <!-- /respond -->
									
								</div><!--comments-->
							</div><!--col boostrap-->
						</div> <!-- /row comments -->
						
//COMENTARIOS DE TEMPLATE DE PRUEBA --%>	
					
						
 
				                        
				                        
				                        
				                        
<!--FUNCIONES-->		                 
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
<!--/ FUNCION CALCULAR FECHA-->
<%--	
				<script type="text/javascript" >
				    var min=10;
				    var max=22;
				    function increaseFontSize() {
				       var p = document.getElementsByTagName('p','.dest .cont');
				       for(i=0;i<p.length;i++) {
				          if(p[i].style.fontSize) {
				             var s = parseInt(p[i].style.fontSize.replace("px",""));
				          } else {
				             var s = 14;
				          }
				          if(s!=max) {
				             s += 1;
				          }
				          p[i].style.fontSize = s+"px"
				       }
				    }
				    function decreaseFontSize() {
				       var p = document.getElementsByTagName('p','.dest .cont');
				       for(i=0;i<p.length;i++) {
				          if(p[i].style.fontSize) {
				             var s = parseInt(p[i].style.fontSize.replace("px",""));
				          } else {
				             var s = 12;
				          }
				          if(s!=min) {
				             s -= 1;
				          }
				          p[i].style.fontSize = s+"px"
				       }
				    }
				</script>
				
				<script type="text/javascript">
				<!-- script menu -->
				    var menu = 0
				    $('#header .btnMobile').click(function () {
				        if (menu == 0) {
				            $('#nav').slideDown(750);
				            menu++
				        } else {
				            $('#nav').slideUp(750, function () {
				                $('#nav').removeAttr('style');
				            });
				            menu--
				        }
				    });
				</script>
				
				
				<script>
				  window.fbAsyncInit = function() {
				    FB.init({
				      appId      : '1009084795820552',
				      xfbml      : true,
				      version    : 'v2.5'
				    });
				  };
				
				  (function(d, s, id){
				     var js, fjs = d.getElementsByTagName(s)[0];
				     if (d.getElementById(id)) {return;}
				     js = d.createElement(s); js.id = id;
				     js.src = "//connect.facebook.net/es_LA/sdk.js";
				     fjs.parentNode.insertBefore(js, fjs);
				   }(document, 'script', 'facebook-jssdk'));
				</script>
				
				
				<div id="fb-root"></div>
				
				<script>
				(function(d, s, id) {
				  var js, fjs = d.getElementsByTagName(s)[0];
				  if (d.getElementById(id)) return;
				  js = d.createElement(s); js.id = id;
				  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.5&appId=1009084795820552";
				  fjs.parentNode.insertBefore(js, fjs);
				}(document, 'script', 'facebook-jssdk'));</script>


--%>




<cms:include page="/system/modules/com.tfsla.diario.telesur/elements/TS_Common_Footerjrvo.jsp">
		<cms:param name="template">blogs</cms:param>
</cms:include>


 <!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="/system/modules/com.tfsla.diario.telesur/resources/js/template_jquery_integracion.js"></script>

</body>
</html>