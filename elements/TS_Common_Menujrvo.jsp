<%@ include file="TS_Common_Libraries.jsp" %>
<%
String pageSeccion = (request.getParameter("pageSeccion") == null || request.getParameter("pageSeccion").equals("")) ? "home" : request.getParameter("pageSeccion") ;
%>

<nav class="navbar navbar-default navbar-sticky">
		<div class="container-fluid">
			
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
			</div>

			<div class="navbar-collapse collapse">
				
				<ul class="nav navbar-nav">
					<!--<li><a href="#" <% if (pageSeccion.equals("home")) {  %> class="active" <% } %> >inicio</a></li>-->
					<li class="active"><a href="/system/modules/com.tfsla.diario.telesur/templates/indexIntegracion.jsp">HOME</a></li>
					<li><a href="/system/modules/com.tfsla.diario.telesur/elements/I_TS_NewsViewjrvo.jsp">INTERNO</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">MAS PAGINAS<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="sidebarleft_morepages_integracion.jsp">DEPORTES</a></li>
							<li><a href="sidebarright_morepages_integracion.jsp">BLOGS</a></li>
							<li><a href="single_morepages_integracion.jsp">SOY REPORTERO</a></li>
						</ul>
					</li>
					<li><a href="/system/modules/com.tfsla.diario.telesur/templates/about_integracion.jsp">VIDEOS</a></li>
				</ul>

			</div><!--/.nav-collapse-->

		</div>	
</nav>


