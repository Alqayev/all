<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<title>News - Website Template</title>
	<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%--ucluk--%>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<%--<link rel="stylesheet" href="bootstrap/3.3.6/css/bootstrap.min.css">--%>
	<%--<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>--%>
	<%--<script src="bootstrap/js/fonts/jquery/jquery.min.js" type="text/javascript"></script>--%>

	<%--ucluk--%>


	<link href="css/style.css" rel="stylesheet" type="text/css">
	<!--[if IE 6]>
	<link href="css/ie6.css" rel="stylesheet" type="text/css">
	<![endif]-->
	<!--[if IE 7]>
	<link href="css/ie7.css" rel="stylesheet" type="text/css">
	<![endif]-->
	<%--script area--%>
	<%--<script src="bootstrap/js/fonts/jquery/jquery-1.10.2.js"></script>--%>
	<script type="text/javascript" src="js/jquery/jquery-ui.js"></script>
	<link rel="stylesheet" href="bootstrap/css/jquery-ui.css" type="text/css">
	<script type="text/javascript" src="js/usScrpt.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<link href="css/main.css" rel="stylesheet" type="text/css">
	<%--end script area--%>


	<%--<script src="bootstrap/js/fonts/jquery/jquery.dataTables.min.js"></script>--%>
	<%--<script src="bootstrap/js/bootstrap.min.js"></script>--%>
	<%--<link rel="stylesheet" href="bootstrap/css/dataTables.bootstrap.min.css">--%>
	<%--<link rel="stylesheet" href="bootstrap/css/jquery-ui.css" type="text/css">--%>
	<%--<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">--%>
</head>
<body>
<script type="text/javascript">
	$(function () {
		call();
		history.pushState(null,null,'news.jsp');
		window.addEventListener('popstate',function(event) {
			history.pushState(null,null,'news.jsp');
		});
	});

</script>



	<div id="background">
		<div id="page">
			<div id="body">
				<div id="sidebar"> <a id="logo" href="index.jsp">&nbsp;</a>

					<ul>
						<li>
							<a href="index.jsp">Medicinal Trees</a>
						</li>
						<li>
							<a href="index.jsp">Ornamental <span>Trees</span></a>
						</li>
						<li>
							<a href="index.jsp">Fruit Bearing <span>Trees</span></a>
						</li>
					</ul>
				</div>
				<div id="content">
					<div id="header">
						<c:if test="${not empty checkLoggUser}">
							<input type="text" id="US" style="display: none" value="${checkLoggUser.primaryId}">
							<input type="text" id="US1" style="display: none" value="${checkLoggUser.userEmail}">
							<h3>Hello ${checkLoggUser.userName} </h3>
						</c:if>
						<ul class="navigation">
							<li class="first">
								<a href="index.jsp">Home</a>
							</li>

							<li>
								<a href="library.jsp">Library</a>
							</li>
							<li>
								<a class="active"  href="news.jsp">News</a>
							</li>
							<li>
								<a href="blog.jsp">Blog</a>
							</li>

							<li>
								<a href="about.jsp">About us</a>
							</li>
							<li>
								<a  href="contact.jsp">Contact Us</a>
							</li>

							<li>
								<a  href="login.jsp">Login</a>
							</li>
							<li>
								<a  href="logout.jsp">Log out</a>
							</li>
						</ul>
					</div>
					<div class="body">

						<div class="content" >
							<div class="modal fade" id="orderedUserModal">

							</div><!-- /.modal -->

							<div class="modal fade" id="showPictureModal">

							</div><!-- /.modal -->

							<div class="modal fade" id="orderedCheckedUserModal">

							</div><!-- /.modal -->


							<div >
							<h2 style="margin-top: 27%"> Product </h2>

								<ul class="news" id="showProductPicture">

								</ul>

							</div>
						</div>
					</div>
				</div>
				<div class="featured">
					<p>
						&#8220;This website template has been designed by <a href="http://www.freewebsitetemplates.com">freewebsitetemplates.com</a> for you, for free. You can replace all this text with your own text. You can remove any link to our website from this website template, you're free to use this website template without linking back to us. If you're having problems editing this website template, then don't hesitate to ask for help on the <a href="http://www.freewebsitetemplates.com/forums">Forums</a>.&#8221;
					</p>
				</div>
			</div>
			<div id="footer">
				<div class="section">
					<h2>Tree Gallery }</h2>
					<ul>
						<li class="first">
							<a href="index.jsp"><img src="images/tree1.jpg" width="90" height="90" alt=""></a> <a href="index.jsp"><img src="images/tree2.jpg" width="90" height="90" alt=""></a> <a href="index.jsp"><img src="images/tree3.jpg" width="90" height="90" alt=""></a> <a href="index.jsp"><img src="images/tree4.jpg" width="90" height="90" alt=""></a> <a href="index.jsp"><img src="images/tree5.jpg" width="90" height="90" alt=""></a> <a href="index.jsp"><img src="images/tree6.jpg" width="90" height="90" alt=""></a>
						</li>
						<li>
							<h1>Healing Trees</h1>
							<p>
								This website template has been designed by freewebsitetemplates for you, for free. You can replace all this text with your own text.
							</p>
						</li>
						<li>
							<h1>Preserve them</h1>
							<p>
								This website template has been designed by freewebsitetemplates for you, for free. You can replace all this text with your own text.
							</p>
						</li>
					</ul>
				</div>
				<div class="footnote"> <span>&copy; 2011 <a href="index.jsp">Magic Tree</a> . All rights Reserved.</span> </div>
			</div>
		</div>
	</div>
</body>
</html>