<%@ include file="TS_Common_Libraries.jsp" %>
<%@ page import="java.net.URLEncoder" %>
<%
String template = (request.getParameter("template") == null ) ? "homejrvo" : request.getParameter("template") ;
String copy = (request.getParameter("copy") == null ) ? "si" : request.getParameter("copy") ;
org.opencms.jsp.CmsJspXmlContentBean cms = new org.opencms.jsp.CmsJspXmlContentBean(pageContext, request, response);
String Title = cms.property("Title");
String Keywords = cms.property("Keywords");
String Description = cms.property("Description");
String LastUpdate =  cms.property("ultimaModificacion");
String currentUri = cms.getRequestContext().getUri();
if (Title == null) Title = "teleSUR JRVO";
%>


<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="max-age=0">
	<meta http-equiv="cache-control" content="no-cache">


<link rel="shortcut icon" href="//www.telesurtv.net/arte/favicon.ico" type="image/x-icon"  />
	<meta charset="utf-8">
	<meta name="robots" content="NOODP">
	<meta name="description" content="teleSUR representa la alternativa informativa para el mundo. Nuestra agenda visibiliza a los pueblos, lo que no cuentan los grandes medio lo encuentra en teleSUR" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes" />
	<meta property="fb:pages" content="186321186178" />
	
	
	
<% if (template.equals("homejrvo") || template.equals("homeNew")){ %>	
	<title><%=Title%></title>
	
	<meta name="cXense :recs:recommendable" content="false"/>
	<meta name="cXenseParse:pageclass" content="frontpage"/>
	<link rel="canonical" href="http://www.telesurtv.net"/>
	
	
	<script type='text/javascript'>
	  var googletag = googletag || {};
	  googletag.cmd = googletag.cmd || [];
	  (function() {
	    var gads = document.createElement('script');
	    gads.async = true;
	    gads.type = 'text/javascript';
	    var useSSL = 'https:' == document.location.protocol;
	    gads.src = (useSSL ? 'https:' : 'http:') +
	      '//www.googletagservices.com/tag/js/gpt.js';
	    var node = document.getElementsByTagName('script')[0];
	    node.parentNode.insertBefore(gads, node);
	  })();
	</script>

	<script type='text/javascript'>
	  googletag.cmd.push(function() {
	    googletag.defineSlot('/18910235/home_bottom', [300, 250], 'div-gpt-ad-1465261469364-0').addService(googletag.pubads());
	    googletag.defineSlot('/18910235/home_lead1', [728, 90], 'div-gpt-ad-1465261469364-1').addService(googletag.pubads());
	    googletag.defineSlot('/18910235/home_lead2', [728, 90], 'div-gpt-ad-1465261469364-2').addService(googletag.pubads());
	    googletag.defineSlot('/18910235/home_lead3', [728, 90], 'div-gpt-ad-1465261469364-3').addService(googletag.pubads());
	    googletag.defineSlot('/18910235/home_lead4', [728, 90], 'div-gpt-ad-1465261469364-4').addService(googletag.pubads());
	    googletag.defineSlot('/18910235/home_lead5', [728, 90], 'div-gpt-ad-1465261469364-5').addService(googletag.pubads());
	    googletag.defineSlot('/18910235/home_lead6', [728, 90], 'div-gpt-ad-1465261469364-6').addService(googletag.pubads());
	    googletag.defineSlot('/18910235/home_sky', [160, 600], 'div-gpt-ad-1465261469364-7').addService(googletag.pubads());
	    googletag.defineSlot('/18910235/envivo_top', [180, 150], 'div-gpt-ad-1465262063828-0').addService(googletag.pubads());
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
	  });
	</script>
	
<% } %>

<% if (template.equals("news") || template.equals("opinion") || template.equals("blog") || template.equals("soyreportero")) { %>	
	<title><%=Title%> | teleSUR</title>
	
	<meta name="cXenseParse:recs:recommendable" content="false"/>
	<meta name="cXenseParse:pageclass" content="frontpage"/>
	<script type='text/javascript'>
	  var googletag = googletag || {};
	  googletag.cmd = googletag.cmd || [];
	  (function() {
	    var gads = document.createElement('script');
	    gads.async = true;
	    gads.type = 'text/javascript';
	    var useSSL = 'https:' == document.location.protocol;
	    gads.src = (useSSL ? 'https:' : 'http:') +
	      '//www.googletagservices.com/tag/js/gpt.js';
	    var node = document.getElementsByTagName('script')[0];
	    node.parentNode.insertBefore(gads, node);
	  })();
	</script>
	<script type='text/javascript'>
	  googletag.cmd.push(function() {
	    googletag.defineSlot('/18910235/Blogs_home_bottom', [728, 90], 'div-gpt-ad-1465260742613-0').addService(googletag.pubads());
	    googletag.defineSlot('/18910235/Blogs_home_rec', [180, 150], 'div-gpt-ad-1465260742613-1').addService(googletag.pubads());
	    googletag.defineSlot('/18910235/Blogs_home_top', [728, 90], 'div-gpt-ad-1465260742613-2').addService(googletag.pubads());	
    	    googletag.defineSlot('/18910235/Noticias_home_bottom', [728, 90], 'div-gpt-ad-1465261571410-0').addService(googletag.pubads());
            googletag.defineSlot('/18910235/Noticias_home_top', [728, 90], 'div-gpt-ad-1465261571410-1').addService(googletag.pubads());
            googletag.defineSlot('/18910235/SoyReportero_top', [728, 90], 'div-gpt-ad-1465261946820-0').addService(googletag.pubads());
            googletag.defineSlot('/18910235/SoyReportero_sq1', [200, 200], 'div-gpt-ad-1465261946820-1').addService(googletag.pubads());
	    googletag.pubads().enableSingleRequest();
	    googletag.enableServices();
	  });
	</script>
<% } %>


<!-- Cxense script begin -->
	<div id="cX-root" style="display:none"></div>
	<script type="text/javascript">
		var cX = cX || {}; cX.callQueue = cX.callQueue || [];
		cX.callQueue.push(['setSiteId', '9222352440756601877']);
		cX.callQueue.push(['sendPageViewEvent']);
	</script>
	<script type="text/javascript">
		(function() { try { var scriptEl = document.createElement('script'); scriptEl.type = 'text/javascript'; scriptEl.async = 'async';
		scriptEl.src = ('https:' == location.protocol) ? 'https://scdn.cxense.com/cx.js' : 'http://cdn.cxense.com/cx.js';
		var targetEl = document.getElementsByTagName('script')[0]; targetEl.parentNode.insertBefore(scriptEl, targetEl); } catch (e) {};} ());
	</script>
<!-- Cxense script end -->

<% if (copy.equals("si")) { %>
<script type="text/javascript">	
	function addLink() {
	var body_element = document.getElementsByTagName('body')[0];
	var selection;
	selection = window.getSelection();
	var pagelink = "<br /><br /> Este contenido ha sido publicado originalmente por teleSUR bajo la siguiente dirección: <br /> <a href='"+document.location.href+"'>"+document.location.href+"</a>. Si piensa hacer uso del mismo, por favor, cite la fuente y coloque un enlace hacia la nota original de donde usted ha tomado este contenido. www.teleSURtv.net"; 
	var copytext = selection + pagelink;
	var newdiv = document.createElement('pre');
	newdiv.style.position='absolute';
	newdiv.style.left='-99999px';
	body_element.appendChild(newdiv);
	newdiv.innerHTML = copytext;
	selection.selectAllChildren(newdiv);
	window.setTimeout(function() {
		body_element.removeChild(newdiv);
	},0);
}
//document.oncopy = addLink;
</script>

<% } %>


<%-- /** ini home */ --%>
<% if (template.equals("homejrvo") ||  template.equals("news") || template.equals("opinion") || template.equals("soyreportero") || template.equals("login") ) { %>	
	
	<!-- FlexSlider -->
	
	<!-- Vertical Carrousel -->
	<script type="text/javascript" src="<cms:link>../resources/js/jquery.ulslide.js?v=4</cms:link>"></script>


	<script type="text/javascript">
	<!-- News Carrousel -->
	$(function() {						
		$('#slidenews').ulslide({
			width: 700,
			height: 25,
			effect: {
				type: 'fade', // slide or fade
				axis: 'x',        // x, y
				showCount: 3
			},
			nextButton: '#new_next',
			prevButton: '#new_prev',
			autoslide: 10000,
			duration: 400,
		});
		 $('.flexslider').flexslider({
			animation: "slide",
			animationLoop: true,
			itemWidth: 420,
			//itemHeight: 265,
			itemMargin: 20,
			pausePlay: false,
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		  $('.simpleSlide').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
	});

	</script>
<% } %>

<% if (template.equals("article") || template.equals("soyreporteropage") || template.equals("multimediapage")) { %>			
	
	<nt:news>
		<c:set var="title" scope="page"><nt:title/></c:set>
		<jsp:useBean id="title" type="java.lang.String" />
		<c:set var="subtitle" scope="page">${news.subtitle}</c:set>
		<jsp:useBean id="subtitle" type="java.lang.String" />
		
		<title> <%=StringEscapeUtils.escapeHtml(title)%> | <nt:section/> | teleSUR</title>
		<meta property="og:type" content="article" />
		<meta property="fb:app_id" content="1009084795820552" />
 		<meta property="fb:admins" content="100010801890653" />	
 		<meta property="fb:article_style" content="InstaART">
		<meta name="keywords" content="<%=Keywords%>"/>
		<meta name="description" content="<%=StringEscapeUtils.escapeHtml(subtitle)%>"/>
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="Expires" content="0"/>
		<meta http-equiv="cache-control" content="no-cache"/>
		<meta name="GENERATOR" content="teleSUR">
		<meta name="organization" content="teleSUR"/>
		<meta name="Googlebot" content="all"/>
		<meta name="language" content="es_ES"/>
		<meta name="revisit-after" content="1 days">
		<meta name="publish-date" content="<nt:last-modified format="yyyy-MM-dd HH:mm:ss"/>">
		


		<nt:authors>
			<c:set var="internalUser" scope="page"><nt:author-internaluser/></c:set>
			<c:if test="${not empty internalUser}">
				<nt:user username="${internalUser}">				
				<meta name="Author" content="<nt:user-firstname/> <nt:user-lastname/>"/>
				</nt:user>
			</c:if>	
			<c:if test="${empty internalUser}">
				<meta name="Author" content="<nt:author-name/>"/>
			</c:if> 
		</nt:authors>
		
		<nt:conditional-include oncondition="${news.authorscount != 0}">
			<meta name="Author" content="<nt:authors><nt:author-name/></nt:authors >">
		</nt:conditional-include>
		<nt:conditional-include oncondition="${news.authorscount == 0}">
			<meta name="Author" content="teleSUR">
		</nt:conditional-include>

		<meta name="robots" content="index,follow">
		<meta name="classification" content="<nt:section-description/><nt:categories>, <nt:category-description/></nt:categories>"/>	
		<nt:conditional-include oncondition="${news.imagepreviewset == true}">
			<nt:preview-image >
				<meta property="og:image" content="http://www.telesurtv.net<nt:image-path width="300" height="300" scaletype="2" />" />
			</nt:preview-image >
		</nt:conditional-include>
		<nt:conditional-include oncondition="${news.imagepreviewset != true && news.imagescount > 0}">
			<nt:image-gallery item="1">
				<meta property="og:image" content="http://www.telesurtv.net<nt:image-path width="300" height="300" scaletype="2" />" />
			</nt:image-gallery>
		</nt:conditional-include>
		<nt:conditional-include oncondition="${news.imagepreviewset != true && news.imagescount < 1}">
			<!--<meta property="og:image" content="<cms:link>http://www.telesurtv.net/arte/sinFoto_170x105.jpg</cms:link>" />-->
			<meta property="og:image" content="http://www.telesurtv.net/export/sites/telesur/arte/sinFoto_420x260.jpg_1782346201.jpg" />
		</nt:conditional-include>
		
		<meta name="cXenseParse:title" content="<nt:title/>"/>
		<meta name="cXenseParse:recs:articleid" content="<nt:generic-news-value element="ultimaModificacion"/>"/>
				
		<nt:conditional-include oncondition="${news.categoriescount != 0}">
			<nt:categories>
				<meta name="cXenseParse:recs:category" content="<nt:section-description/>/<nt:category-description/>"/>
			</nt:categories>
		</nt:conditional-include>
		<nt:conditional-include oncondition="${news.categoriescount == 0}">
			<meta name="cXenseParse:recs:category" content="<nt:section-description/>"/>
		</nt:conditional-include>
		<meta name="cXenseParse:pageclass" content="article"/>		
		<meta name="cXenseParse:recs:publishtime" content="<nt:last-modified format="yyyy-MM-dd'T'HH:mm:ss'Z'"/>"/>
		
	<!-- INICIA TWITTER CARD ESPAÑOL -->
	<meta name="twitter:card" content="summary_large_image">
	<meta name="twitter:site" content="@teleSURtv">
	<meta name="twitter:title" property="og:title" content="<%=StringEscapeUtils.escapeHtml(title)%>">
	<meta name="twitter:description" property="og:description" content="<%=StringEscapeUtils.escapeHtml(subtitle)%>">
	<meta name="twitter:url" property="og:url" content="http://www.telesurtv.net<nt:link/>">
	<nt:preview-image >
	<meta name="twitter:image:src" property="og:image" content="http://www.telesurtv.net<nt:image-path width="600" height="330" scaletype="1"/>" />
	</nt:preview-image > 	
    	<!-- FINALIZA TWITTER CARD -->
    
		<link rel="canonical" href="http://www.telesurtv.net<nt:link/>"/>
	</nt:news>
<% } %>

<!--<link href='//fonts.googleapis.com/css?family=Arimo:400,700,400italic' rel='stylesheet' type='text/css'>-->
<!--<link href="/system/modules/com.tfsla.diario.telesur/resources/css/reset.css" rel="stylesheet" type="text/css" />
<!--<link href="/system/modules/com.tfsla.diario.telesur/resources/css/css.css" rel="stylesheet" type="text/css" />-->
<link href="/system/modules/com.tfsla.diario.telesur/resources/css/flexslider.css" rel="stylesheet" type="text/css" media="screen" />
<!-- jQuery -->
<%--<script src="/system/modules/com.tfsla.diario.telesur/resources/js/jquery-1.11.0.min.js"></script>--%>
