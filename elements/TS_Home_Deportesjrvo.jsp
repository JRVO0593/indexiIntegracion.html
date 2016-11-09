<%@ include file="TS_Common_Libraries.jsp" %>

<nt:news-list category="/system/categories/SubSecciones/news/sport/" size="9" order="user-modification-date desc">
	<nt:conditional-include onposition="first">
		<div class="blocksports">
			<a href="http://www.telesurtv.net/SubSecciones/news/sport/index.html"><h6><strong>DEPORTES<cms:img src="/arte/redes/deportes.png" scaleType="2" alt="Telesur" /></strong></h6></a>
			</nt:conditional-include>
				<cms:include page="TS_Common_BoxArticlejrvo.jsp">			
				<cms:param name="path"><nt:local-path /></cms:param>
				</cms:include>
			<nt:conditional-include onposition="last">
		</div>
	</nt:conditional-include>
</nt:news-list>

<%--<div class="block stats">
	<h6>Estadísticas</h6>
	<cms:include page="TS_Widget_Deporte.jsp" /> 
</div> --%> 