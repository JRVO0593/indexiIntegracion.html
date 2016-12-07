<%@ include file="TS_Common_Libraries.jsp"%>
<% 
   String template = (request.getParameter("template") != null ) ? request.getParameter("template") : "News";
   org.opencms.jsp.CmsJspActionElement cms = new CmsJspActionElement(pageContext, request, response);
   String uri = cms.getRequestContext().getUri();
%>

<div class="col-for"><!-- colmna izq col-for -->
	<div class="row clear">  
		<cms:include page="TS_Blogs_Ranking.jsp">
        		<cms:param name="template"><%=template %>_1</cms:param>
		</cms:include>	
	</div>
	
	
	<%
	   if(template.equals("NewsCategory") && uri.equals("/SubSecciones/news/opinion/index.html") ){
	%>
	<div class="cont">	            	
        	<cms:include page="TS_Blogs_Ranking.jsp" />        		
     	</div>
	
     	<%
     	   }	
     	%>
	<% if (!template.equals("BlogPage")) { %>	
	<div class="cont">	            	
        	<cms:include page="TS_Common_Blocksjrvo.jsp">
        		<cms:param name="template"><%=template %>_2</cms:param>
		</cms:include>	                           			
     	</div>
     	<% }  
     	%>
	


	<div class="row clear"> 
		<div class="col">
			<cms:include page="TS_Common_Blocksjrvo.jsp">
	        		<cms:param name="template"><%=template %>_3</cms:param>
			</cms:include> 
		</div>             
	</div>     
	
	
	
	<div class="row clear"> 
		<div class="col">
			<cms:include page="TS_Common_Blocksjrvo.jsp">
	        		<cms:param name="template"><%=template %>_4</cms:param>
			</cms:include> 
		</div>             
	</div> 
</div><!--colfor-->