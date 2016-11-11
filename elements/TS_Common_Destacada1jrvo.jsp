<%@ include file="TS_Common_Libraries.jsp" %>
<%
    org.opencms.jsp.CmsJspActionElement cmsO = new CmsJspActionElement(pageContext, request, response);
    Boolean isProjectOnline = cmsO.getCmsObject().getRequestContext().currentProject().isOnlineProject();
    String index = "TS_NEWS_ONLINE"; 
    if (!isProjectOnline) index = "TS_NEWS_OFFLINE";
%>


<!--<link href="/system/modules/com.tfsla.diario.telesur/resources/css/css.css" rel="stylesheet" type="text/css"/>-->

<script defer src="<cms:link>/system/modules/com.tfsla.diario.telesur/resources/js/jquery.hc-sticky.min.js</cms:link>"></script>
    
        <div class="banners top1">
            <cms:include page="../elements/TS_Common_Banners.jsp">
                <cms:param name="template">Home</cms:param>
                <cms:param name="key">Advert-728x90-home</cms:param>
            </cms:include>          
        </div>      
        <br><br>        
<%--
    <div id="destacados">
        <!-- Aside-->
        <aside class="v1">
        <div class="bnrs-side">
    <cms:include page="TS_Common_Banners.jsp">
        <cms:param name="template">Home</cms:param>
        <cms:param name="key">Advert-160x600</cms:param>
    </cms:include>

<%--
     <cms:include page="TS_Common_Banners.jsp">
        <cms:param name="template">Home</cms:param>
        <cms:param name="key">Advert-183x374-b</cms:param>
    </cms:include>
        </div><!-- Banners laterales -->
      </aside>
      <!-- Aside -->
--%>
      <!-- Overlfow -->
   <div class="contentv1">
        <!-- Nota Importante -->
       <nt:news-list order="priority desc,user-modification-date" zone="destacada" onmainpage="homejrvo" size="1" searchindex="<%=index%>"> 
            <meta itemprop="sameAs url" content="<nt:link/>"/>
        <article class="importante">
            <div class="wpImg" >
                     <nt:conditional-include oncondition="${news.homePreview == 'imagen'}">
                    <div itemprop="image" itemscope itemtype="http://schema.org/ImageObject">

                        <nt:preview-image>

                            <c:set var="imageDescription" scope="page"><nt:image-description/></c:set>

                            <nt:conditional-include oncondition="${imageDescription == ''}">
                                <c:set var="imageDescription" scope="page"><nt:image-path /></c:set>
                            </nt:conditional-include>

                            <a href="<nt:link/>" title="${imageDescription}">   
                                <meta itemprop="description" content='${imageDescription}'>
                                <img itemprop="contentURL" src="<nt:image-path width='1200' height='300' scaletype='2'/>" title="${imageDescription}" alt="${imageDescription}" />
                            </a>
                        </nt:preview-image>         
                    </div>
                </nt:conditional-include>
  <!--previsualizacion de videos -iframe - embedded- video flash-->
                <nt:conditional-include oncondition="${news.homePreview == 'videoYouTube'}">
                    <nt:video-youtube>
                        <nt:conditional-include onposition='1'>
                            <div itemprop="video" itemscope itemtype="http://schema.org/VideoObject">
                                <meta itemprop="name" content="<nt:video-title/>" />
                                <meta itemprop="publisher" content="<nt:video-publisher/>" />
                                <meta itemprop="thumbnailUrl" content="//i1.ytimg.com/vi/<nt:video-youtubeid/>/hqdefault.jpg" />
                                <meta itemprop="contentURL" content="http://www.youtube.com/v/<nt:video-youtubeid/>" />             
                            </div>
                            <iframe width="100%" height="353" src="//www.youtube.com/embed/<nt:video-youtubeid/>" frameborder="0" allowfullscreen></iframe>
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
                                    <cms:param name="width" value="628"/>
                                    <cms:param name="height" value="353"/>
                                </cms:include>
                            </nt:conditional-include>   
                        </div>                      
                    </nt:video-flash>
                </nt:conditional-include>
                 
  </div>  
  
  <div class="descripcionnd">  
     <h2> <a href="<nt:link/>" title="<nt:title value='home' />"> <nt:title value='home' /> </a></h2>
      
         
          <h4><nt:sub-title maxlength="200" /> | <a href="<nt:link/>">LEER MÁS</a></h4>
    </div> <!--fin descripcionnd--> 
              
        </article> <!-- Importante -->
        </nt:news-list>
        <!-- Nota Importante -->
      </div>
      
     <!-- Twitter -->
        <div class="col-md-6 col-md-offset-3">
        <cms:include page="../elements/TS_Common_Blocksjrvo.jsp">
        <cms:param name="template">TwitterPoll</cms:param>
        </cms:include>
    </div>  
        

        
        
      
       <%--<h6><a href="#" class="plus less"></a></h6>--%>
          
       
        

      </div> 
      <!-- Overlfow -->
      
  


<script>
$(document).ready(function(e) {
    // mostrar mas
    $('#destacados h6 a').click(function(e) {
        e.preventDefault();
        if($(this).hasClass('less')){
            $('.listNotas').removeClass('abierto'); 
            $(this).removeClass('less')
        }else{
            $('.listNotas').addClass('abierto');        
            $(this).addClass('less')            
        }
    });
    (function($) {
    // barra fija
    $('aside.v1').hcSticky({
    });
    })(jQuery);
});
</script> 