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
				
	<title>teleSUR JRVO</title>
	

	<!-- Bootstrap -->
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
	<!-- Icon font -->
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<!-- Fonts -->
	<!-- Custom styles -->
	<link href="/system/modules/com.tfsla.diario.telesur/resources/css/estilosintegracion.css" rel="stylesheet" type="text/css" />

	<!--[if lt IE 9]> <script src="assets/js/html5shiv.js"></script> <![endif]-->
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

<body>
			<!--MENU DEL HEADER-->
<div class="divmenu">
	<cms:include page="/system/modules/com.tfsla.diario.telesur/elements/TS_Common_Menujrvo.jsp" >
		<cms:param name="pageSeccion"><%=pageSeccion%></cms:param>        
	</cms:include> 
</div>	
			<!--FIN MENU DEL HEADER-->

<main id="main">

	<div class="container">
		
		<div class="row topspace">
			<div class="col-sm-8 col-sm-offset-2">
															
 				<article class="post">
					<header class="entry-header">
 						<div class="entry-meta"> 
 							<span class="posted-on"><time class="entry-date published" date="2013-06-17">June 17, 2013</time></span>			
 						</div> 
 						<h1 class="entry-title"><a href="single.html" rel="bookmark">Vivamus Lacus Mauris</a></h1>
					</header> 
					<div class="entry-content"> 
						<p><img alt="" src="/arte/imagenes_integracion/mac.jpg"></p>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, rerum voluptates veniam. Esse, nihil, ea, eaque, quos cum id tempore voluptate nisi nemo debitis impedit officiis culpa repellat voluptatum in aperiam error quo minima ratione ex pariatur maxime eligendi dolore nesciunt molestiae enim alias atque commodi delectus perferendis. Blanditiis, iste placeat nostrum in! Eligendi, omnis, unde, quos ullam nesciunt molestias quis a saepe nisi distinctio molestiae voluptate obcaecati officiis consequuntur similique aspernatur rerum sequi placeat iure quaerat itaque libero officia recusandae ad corrupti aperiam cum beatae. Adipisci ad natus deleniti.
						</p>
						<p>
							Dolores harum alias consequatur blanditiis. Inventore, quod, ullam veritatis eum ratione neque quis fugit quae optio facilis in ipsa! Maiores, quia, possimus repellendus iusto nostrum nisi doloribus qui excepturi ducimus veritatis molestiae autem consequatur quae ex nihil id sapiente minima adipisci. Quibusdam, aperiam, sapiente, nobis, possimus vero laudantium delectus esse minus quo nihil perspiciatis accusamus. Cupiditate sapiente illum accusantium animi pariatur sed minima nam. 
						</p>
						
						<blockquote>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, itaque, porro, non sequi sunt vel quibusdam harum ea ratione ipsum eius eos maxime vitae hic ab dignissimos natus assumenda similique earum laboriosam possimus debitis molestiae. Commodi, facilis, et, officia hic quos quas ipsam harum amet illum quia reprehenderit sequi repellat. Asperiores, fugiat, optio reiciendis nam nisi assumenda alias non similique modi ducimus nostrum quasi consequatur ipsa animi soluta!
						</blockquote>
						<p>
							Harum, consectetur, quia nisi fugiat quasi ea amet cum inventore aperiam optio qui perspiciatis debitis molestiae laborum minima doloremque ullam eum nesciunt repellendus dolor dicta cumque deserunt. Quaerat, saepe, maxime, quod, dolor nisi assumenda aut est quos optio animi aliquid quidem voluptates adipisci hic recusandae dicta quis eligendi illo ducimus asperiores reiciendis odit distinctio natus? In, reprehenderit, facere, ipsam, vel architecto autem temporibus a quidem voluptatum at nesciunt quas facilis. Soluta, excepturi, nihil, illum dicta hic ratione tenetur voluptate dolorum a tempore dignissimos reprehenderit voluptas expedita officiis enim minus adipisci?</p>
						
						<h3>Deserunt, ullam, quo voluptate rem sed alias numquam eum natus!</h3>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, aperiam, ab neque est cum iste reprehenderit quidem eligendi ad dicta ducimus quod nihil amet! Possimus, qui, dolorem, animi quas nesciunt corporis esse maiores iusto optio deserunt sequi aspernatur voluptatem velit suscipit nam temporibus eaque neque hic quaerat molestiae nisi dolor numquam similique quae voluptas quos ex! Pariatur, voluptas, voluptatibus corporis animi nihil beatae asperiores explicabo odio at aspernatur ea sapiente voluptatem placeat fugit quas magni tempore aliquid minima eos tempora in id eveniet et maxime iste a quaerat dolorum consequuntur?</p>
						
						<h4>Perferendis, odit, optio, exercitationem quas ipsa eius quod ut aperiam facilis iste ratione odio laborum?</h4>
						<p>Dolore aliquid ipsum cum sint velit! Esse, perferendis illo hic temporibus reprehenderit nemo veritatis omnis velit quas impedit at facilis voluptatibus blanditiis qui maiores quod incidunt nobis maxime.</p>
						<p>A, quo quibusdam iusto repellendus blanditiis. Repellendus, doloribus, veritatis blanditiis dolores cumque in pariatur magni velit quibusdam doloremque amet harum dicta neque voluptas possimus dignissimos corporis voluptatibus nemo nostrum quae fuga enim beatae voluptate ex maxime sequi iusto. Voluptate, neque, quisquam, ipsum reprehenderit pariatur magnam excepturi libero quis nam inventore recusandae molestiae temporibus explicabo vel eius facere sit quae deleniti laboriosam voluptatibus necessitatibus sequi distinctio!</p>
					</div> 
				</article><!-- #post-## -->

			</div> 
		</div> <!-- /row post  -->

		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">

				<div id="comments">	
					<h3 class="comments-title">3 Comments</h3>
					<a href="#comment-form" class="leave-comment">Leave a Comment</a>
					
					<ol class="comments-list">
						<li class="comment">
							<div>
								<img src="/arte/imagenes_integracion/avatar_man.png" alt="Avatar" class="avatar">
												
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
										<img src="/arte/imagenes_integracion/avatar_man.png" alt="Avatar" class="avatar">
																
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
								<img src="/arte/imagenes_integracion/avatar_woman.png" alt="Avatar" class="avatar">
								
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
				</div>
			</div>
		</div> <!-- /row comments -->
		<div class="clearfix"></div>

	</div>	<!-- /container -->

</main>

<footer id="footer" class="topspace">
	<div class="container">
		<div class="row">
			<div class="col-md-3 widget">
				<h3 class="widget-title">Contact</h3>
				<div class="widget-body">
					<p>+234 23 9873237<br>
						<a href="mailto:#">some.email@somewhere.com</a><br>
						<br>
						234 Hidden Pond Road, Ashland City, TN 37015
					</p>	
				</div>
			</div>

			<div class="col-md-3 widget">
				<h3 class="widget-title">Follow me</h3>
				<div class="widget-body">
					<p class="follow-me-icons">
						<a href=""><i class="fa fa-twitter fa-2"></i></a>
						<a href=""><i class="fa fa-dribbble fa-2"></i></a>
						<a href=""><i class="fa fa-github fa-2"></i></a>
						<a href=""><i class="fa fa-facebook fa-2"></i></a>
					</p>
				</div>
			</div>

			<div class="col-md-3 widget">
				<h3 class="widget-title">Text widget</h3>
				<div class="widget-body">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque, nihil natus explicabo ipsum quia iste aliquid repellat eveniet velit ipsa sunt libero sed aperiam id soluta officia asperiores adipisci maxime!</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque, nihil natus explicabo ipsum quia iste aliquid repellat eveniet velit ipsa sunt libero sed aperiam id soluta officia asperiores adipisci maxime!</p>
				</div>
			</div>

			<div class="col-md-3 widget">
				<h3 class="widget-title">Form widget</h3>
				<div class="widget-body">
					<p>+234 23 9873237<br>
						<a href="mailto:#">some.email@somewhere.com</a><br>
						<br>
						234 Hidden Pond Road, Ashland City, TN 37015
					</p>	
				</div>
			</div>

		</div> <!-- /row of widgets -->
	</div>
</footer>

<footer id="underfooter">
	<div class="container">
		<div class="row">
			
			<div class="col-md-6 widget">
				<div class="widget-body">
					<p>234 Hidden Pond Road, Ashland City, TN 37015 </p>
				</div>
			</div>

			<div class="col-md-6 widget">
				<div class="widget-body">
					<p class="text-right">
						Copyright &copy; 2014, Your awesome name here<br> 
						Design: <a href="http://www.gettemplate.com" rel="designer">Initio by GetTemplate</a> </p>
				</div>
			</div>

		</div> <!-- /row of widgets -->
	</div>
</footer>



<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="/system/modules/com.tfsla.diario.telesur/resources/js/template_jquery_integracion.js"></script>
</body>
</html>
