<%@ include file="TS_Common_Libraries.jsp" %>
<%
String path = ( request.getParameter("path") != null ) ? request.getParameter("path") : "";
%>


<div class="secundaria">
<nt:news path="<%=path%>">
<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
	
		<article itemscope itemtype="http://schema.org/Article" style="height:180px ; width:310px" >
		<%--
		<span class="cover">
		<span class="more">Vea Mas →</span>
		 </span>--%>
		<meta itemprop="url" content="<nt:link/>"/>
		
		<nt:conditional-include oncondition="${news.homePreview == 'imagen'}">
			<div itemprop="image" itemscope itemtype="http://schema.org/ImageObject">
				
				<nt:preview-image>
							
					<c:set var="imageDescription" scope="page"><nt:image-description/></c:set>
	      				
					<nt:conditional-include oncondition="${imageDescription == ''}">
						<c:set var="imageDescription" scope="page">${news.titles[news.titleHomeNum]}</c:set>
					</nt:conditional-include>
					<div class="imagensec">
					<a href="<nt:link/>" title="${imageDescription}" alt="${imageDescription}">	
						<meta itemprop="description" content='${imageDescription}'>
						<img itemprop="contentURL" src="<nt:image-path width='306' height='172' scaletype='2'/>" data-original="<nt:image-path width='306' height='172' scaletype='2'/>" width='306' height='172' alt="${imageDescription}" />
					</a>
					
					
				</nt:preview-image>
				</div>
			</div>
		</nt:conditional-include>
		
		<nt:conditional-include oncondition="${news.homePreview == 'videoYouTube'}">
			<nt:video-youtube>
				<nt:conditional-include onposition='1'>
					<div itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
					 	<meta itemprop="name" content="<nt:video-title/>" />
					 	<meta itemprop="publisher" content="<nt:video-publisher/>" />
					 	<meta itemprop="thumbnailUrl" content="//i1.ytimg.com/vi/<nt:video-youtubeid/>/hqdefault.jpg" />
					 	<meta itemprop="contentURL" content="http://www.youtube.com/v/<nt:video-youtubeid/>" /> 			
					</div>
					<iframe width="100%" height="169" src="//www.youtube.com/embed/<nt:video-youtubeid/>" frameborder="0" allowfullscreen></iframe>
				</nt:conditional-include>
			</nt:video-youtube>
		</nt:conditional-include>
		
		<nt:conditional-include oncondition="${news.homePreview == 'iframe'}">
			<nt:iframe/>
		</nt:conditional-include>
		
		<nt:conditional-include oncondition="${news.homePreview == 'videoEmbedded'}">
			<nt:video-embedded>
				<nt:conditional-include onposition='1'>
					<div itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
						<meta itemprop="name" content='<nt:video-title/>' />
					</div>
					<nt:video-code/>
				</nt:conditional-include>
			</nt:video-embedded>
		</nt:conditional-include>
		
		<nt:conditional-include oncondition="${news.homePreview == 'videoFlash'}">
			<c:set var="videopath" value=""/>
			<nt:video-flash>	
				<div itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
					<meta itemprop="name" content="<nt:video-title/>" />
					<meta itemprop="publisher" content="<nt:video-publisher/>" />
					<meta itemprop="thumbnailUrl" content="<nt:video-thumbnail />" />
					<meta itemprop="contentURL" content="<nt:video-path/>" />
					<meta itemprop="keywords" content="<nt:video-tags/>" />	
					<nt:conditional-include onposition="1">
						<c:set var="videopath">${videopath}<nt:video-path/>,<nt:video-thumbnail/>,<nt:video-title/></c:set>
					</nt:conditional-include>
					<nt:conditional-exclude onposition="1">
						<c:set var="videopath">${videopath};<nt:video-path/>,<nt:video-thumbnail/>,<nt:video-title/></c:set>
					</nt:conditional-exclude>
					<nt:conditional-include onposition="last">
						 <cms:include page="TS_Common_VideoFlash.jsp">
							<cms:param name="video">${videopath}</cms:param>
							<cms:param name="width" value="306"/>
							<cms:param name="height" value="172"/>
						</cms:include>
					</nt:conditional-include>	
				</div>						
			</nt:video-flash>
		</nt:conditional-include>
		
		<%--<nt:conditional-include oncondition="${news.imagepreviewset == 'false' && news.homePreview == 'imagen'}">
			<cms:img src="/arte/sinFoto_420x260.jpg" width="306" height="172" alt="<nt:title value='home'/>"  />
		</nt:conditional-include>--%>



<h2 itemprop="name headline">
			<a href="<nt:link/>" title="<nt:title value='home' />" alt="<nt:title value='home' />">
				<nt:title value="home" maxlength="63" />
			</a>
</h2>
<span class="details"><a href="<nt:link/>" title="${imageDescription}" alt="${imageDescription}">Sobre la noticia</a></span>

		

		<div style="position:absolute;left:11;top:0;">
			<nt:edit-buttons hasNew="true" hasDelete="true"/>
		</div>
		
		</article>
		
	</div><!--fin div col boost-->
</nt:news>
</div><!--cierre secundaria-->

