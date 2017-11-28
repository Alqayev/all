<%@ page import="net.org.pack.model.Model" %>
<%@ page import="java.util.ResourceBundle" %>
<%@ page import="java.util.Locale" %>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%if (request.getSession().getAttribute("language") == null) {
	request.getSession().setAttribute("language", "az");
}%>

<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="net.org.pack.web.changeLanguage" />
<!DOCTYPE html>
<html lang="${language}">
<head>
	<fmt:message key="header.ad" var="wind" />
<title>${wind}</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<%Model model=(Model) session.getAttribute("adnch");%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Proprietary a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>	
<!-- font files -->

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" media="all" rel="stylesheet" type="text/css">
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- /font files -->
	<%--manual files--%>
	<link href="profile/manualstyl/manualcss.css" rel="stylesheet" type="text/css" media="all" />
	<%--manual files--%>
<!-- css files -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/update.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/photoGallery.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/progressbar.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- /css files -->
<!-- js files -->
	<script src="js/writeJs/jsu.js"></script>
	<script src="js/writeJs/secJs.js"></script>
	<a href="#0" class="cd-top">Top</a>
	<!-- js files -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<!-- js for banner section -->
	<script src="js/bgfader.js"></script>
	<%--<script src="js/jquery-1.12.3.js"></script>--%>
	<script type="text/javascript">

		$(function () {
			allJs();
			chpar();
			portfoliolist(5);
		});
	</script>
<!-- /js files -->

</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<!-- navigation -->
<div class="navbar-wrapper">
	<%--<fmt:message key="servicetext1.ab" var="service1"/>--%>
	<%--<p style="display: inline-block" class="text-center slideanim">${service1}</p>--%>
	<form style="margin-right: 2%;" method="post">
		<ul style="display: inline; float: right">
			<li style="display: inline;" ><input name="language" type="image" value="az"  ${language == 'az' ? 'selected' : ''} src="css/icon/language/az-flag.png"></li>
			<li style="display: inline;"><input name="language" type="image" value="eng"  ${language == 'eng' ? 'selected' : ''} src="css/icon/language/en-flag.png" > </li>
			<li style="display: inline;"><input name="language" type="image" value="rus"  ${language == 'rus' ? 'selected' : ''} src="css/icon/language/rs-flag.png" ></li>
		</ul>
	</form>
    <div class="container">
		<nav class="navbar navbar-inverse navbar-static-top cl-effect-21">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.jsp"><h1><span>Wind</span>stop</h1></a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<fmt:message key="home.ad" var="home" />
						<li><a href="index.jsp">${home}</a></li>
						<fmt:message key="About.ad" var="About" />
						<li><a href="#about">${About}</a></li>
						<fmt:message key="Services.ad" var="Services" />
						<li><a href="#service">${Services}</a></li>
						<fmt:message key="OurSkills.ad" var="OurSkills" />
						<li><a href="#skill">${OurSkills}</a></li>
						<fmt:message key="Gallery.ad" var="Gallery" />
						<li><a href="#gallery">${Gallery}</a></li>
						<fmt:message key="News.ad" var="News" />
						<li><a href="#news">${News}</a></li>
						<fmt:message key="Contact.ad" var="Contact" />
						<li><a href="#contact">${Contact}</a></li>
					</ul>
				</div>
			</div>
        </nav>
    </div>
</div>
<!-- /navigation -->
<!-- banner section -->
<div class='header'>
</div>
<!-- /banner section -->
<!-- about section -->
<section class="about-us" id="about">
	<fmt:message key="Aboutus.ad" var="Aboutus" />
	<h2 class="text-center slideanim"><strong style="color: #204d74">${Aboutus}</strong></h2>
	<fmt:message key="Header.ab" var="Headerab"/>
	<p class="text-center slideanim"> <strong>${Headerab}</strong></p>
	<div class="container"> 
		<div class="row">
			<div class="col-lg-12">
				<fmt:message key="MisComp.ab" var="MisAb"/>
				<h3 class="text-center slideanim"><strong style="color: #204d74">${MisAb}</strong></h3>
				<fmt:message key="MisAbtext.ab" var="MisAbtext"/>
				<p class="abt slideanim"> ${MisAbtext} </p>

				<fmt:message key="MisAbtext1.ab" var="MisAbtext1"/>
				<p class="abt slideanim"> ${MisAbtext1} </p>
				<fmt:message key="MisAbtext2.ab" var="MisAbtext2"/>
				<p class="abt slideanim"> ${MisAbtext2} </p>
				<fmt:message key="MisAbtext3.ab" var="MisAbtext3"/>
				<p class="abt slideanim"> ${MisAbtext3} </p>
				<fmt:message key="MisAbtext4.ab" var="MisAbtext4"/>
				<p class="abt slideanim"> ${MisAbtext4} </p>
				<fmt:message key="MisAbtext5.ab" var="MisAbtext5"/>
				<p class="abt slideanim"> ${MisAbtext5} </p>
				<fmt:message key="MisAbtext6.ab" var="MisAbtext6"/>
				<p class="abt slideanim"> ${MisAbtext6} </p>
				<fmt:message key="MisAbtext7.ab" var="MisAbtext7"/>
				<p class="abt slideanim"> ${MisAbtext7} </p>
				<fmt:message key="MisAbtext8.ab" var="MisAbtext8"/>
				<p class="abt slideanim"> ${MisAbtext8} </p>
				<fmt:message key="MisAbtext9.ab" var="MisAbtext9"/>
				<p class="abt slideanim"> ${MisAbtext9} </p>
			</div>
		</div>
	</div>
</section>
<!-- /about section -->
<!-- services section -->
<section class="our-services slideanim" id="service">
	<fmt:message key="servicetext9.ab" var="service"/>
	<h3 class="text-center slideanim">${service}</h3>
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6">
				<div class="row">
					<div class="col-xs-6 news-info">
						<div class="view view-eighth slideanim">
							<img src="upload/dsc_0005_vacib.370x250.mz.jpg" />
							<div class="mask">
								<fmt:message key="Qrup1Text1.ab" var="Qrup1Text1"/>
								<p>${Qrup1Text1}</p>
								<fmt:message key="Qrup1Text2.ab" var="Qrup1Text2"/>
								<a href="surmeli.jsp" class="info" >${Qrup1Text2}</a></br>
								<fmt:message key="Qrup1Text3.ab" var="Qrup1Text3"/>
								<a href="perdeli.jsp" class="info" >${Qrup1Text3}</a>
							</div>
						</div>
					</div>
					<div class="col-xs-6 news-info">
						<%if (model!=null&&model.getAdName().equals("AdmiN")){%>
						<a href="fonts/security/Logout.jsp" >Log Out</a>
						<img src="css/icon/parameter.png" alt="Paramters" style="background-color: #1b6d85" id="parameterPng">
						<%}%>


						<div class="modal fade" id="pardiv">

						</div><!-- /.modal -->

						<div class="modal fade" id="ourworkdiv">

						</div><!-- /.modal -->

						<div class="update-details slideanim">
							<fmt:message key="Qrup1Text4.ab" var="Qrup1Text4"/>
							<p class="abtextclass" >${Qrup1Text4}</p>
							<fmt:message key="Qrup1Text5.ab" var="Qrup1Text5"/>
							<a class="abtextclass" href="#contact">${Qrup1Text5}</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<div class="row">
					<div class="col-xs-6 news-info">
						<div class="view view-eighth slideanim">
							<img src="upload/vacib.370x250.mz.jpg" />
							<div class="mask">
								<%--<h4>Dec-22-2016</h4>--%>
								<fmt:message key="Qrup2Text1.ab" var="Qrup2Text1"/>
								<p>${Qrup2Text1}</p>
								<fmt:message key="Qrup2Text2.ab" var="Qrup2Text2"/>
								<a href="sabitshushelenme.jsp" class="info" >${Qrup2Text2}</a>
								<fmt:message key="Qrup2Text3.ab" var="Qrup2Text3"/>
								<a href="daxiliarakesme.jsp" class="info" >${Qrup2Text3}</a>
							</div>
						</div>
					</div>
					<div class="col-xs-6 news-info">
						<div class="update-details slideanim">
							<fmt:message key="Qrup2Text4.ab" var="Qrup2Text4"/>
							<p class="abtextclass">${Qrup2Text4}</p>
							<fmt:message key="Qrup2Text5.ab" var="Qrup2Text5"/>
							<a class="abtextclass"  href="#contact">${Qrup2Text5}</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row update">
			<div class="col-lg-6 col-md-6">
				<div class="row">
					<div class="col-xs-6 news-info">
						<div class="view view-eighth slideanim">
							<img src="upload/aluminyum-pencere-kapi.370x250.mz.jpg" />
							<div class="mask">
								<%--<h4>Dec-27-2016</h4>--%>
									<fmt:message key="Qrup3Text1.ab" var="Qrup3Text1"/>
								<p>${Qrup3Text1}</p>
									<fmt:message key="Qrup3Text2.ab" var="Qrup3Text2"/>
								<a href="silikoncebhe.jsp" class="info" >${Qrup3Text2} </a>
									<fmt:message key="Qrup3Text3.ab" var="Qrup3Text3"/>
							    <a href="qapaqlicebhe.jsp" class="info" >${Qrup3Text3} </a>
									<fmt:message key="Qrup3Text4.ab" var="Qrup3Text4"/>
								<a href="monetsistem.jsp" class="info" >${Qrup3Text4} </a>
									<fmt:message key="Qrup3Text5.ab" var="Qrup3Text5"/>
								<a href="izosistem.jsp" class="info" >${Qrup3Text5} </a>
									<fmt:message key="Qrup3Text6.ab" var="Qrup3Text6"/>
								<a href="aluwood.jsp" class="info" >${Qrup3Text6}</a>
							</div>
						</div>
					</div>
					<div class="col-xs-6 news-info">
						<div class="update-details slideanim">
							<fmt:message key="Qrup3Text7.ab" var="Qrup3Text7"/>
							<p class="abtextclass">${Qrup3Text7}</p>
							<fmt:message key="Qrup3Text8.ab" var="Qrup3Text8"/>
							<a class="abtextclass" href="#contact">${Qrup3Text8}</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<div class="row">
					<div class="col-xs-6 news-info">
						<div class="view view-eighth slideanim">
							<img src="upload/mg_6477.370x250.mz.jpg" />
							<div class="mask">
								<%--<h4>Dec-29-2016</h4>--%>
									<fmt:message key="Qrup4Text1.ab" var="Qrup4Text1"/>
								<p>${Qrup4Text1} </p>
									<fmt:message key="Qrup4Text2.ab" var="Qrup4Text2"/>
								<a href="ytavan.jsp" class="info" >${Qrup4Text2} </a>
									<fmt:message key="Qrup4Text3.ab" var="Qrup4Text3"/>
								<a href="camtavan.jsp" class="info" >${Qrup4Text3} </a>
									<fmt:message key="Qrup4Text4.ab" var="Qrup4Text4"/>
								<a href="tent.jsp" class="info" >${Qrup4Text4} </a>
									<fmt:message key="Qrup4Text5.ab" var="Qrup4Text5"/>
								<a href="skylight.jsp" class="info" >${Qrup4Text5}</a>
									<fmt:message key="Qrup4Text6.ab" var="Qrup4Tex6"/>
								<a href="polikarbonat.jsp" class="info" >${Qrup4Tex6} </a>
									<fmt:message key="Qrup4Text7.ab" var="Qrup4Tex7"/>
								<a href="membran.jsp" class="info" >${Qrup4Tex7} </a>
									<fmt:message key="Qrup4Text8.ab" var="Qrup4Text8"/>
								<a href="hovuzlar.jsp" class="info" >${Qrup4Text8}</a>

							</div>
						</div>
					</div>
					<div class="col-xs-6 news-info">
						<div class="update-details slideanim">
							<fmt:message key="Qrup4Text9.ab" var="Qrup4Text9"/>
							<p class="abtextclass">${Qrup4Text9}</p>
							<fmt:message key="Qrup4Text10.ab" var="Qrup4Text10"/>
							<a class="abtextclass" href="#contact">${Qrup4Text10}</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div class="row update">
		<div class="col-lg-6 col-md-6">
			<div class="row">
				<div class="col-xs-6 news-info">
					<div class="view view-eighth slideanim">
						<img src="upload/vacib1.370x250.mz.jpg" />
						<div class="mask">
							<%--<h4>Dec-27-2016</h4>--%>
								<fmt:message key="Qrup5Text1.ab" var="Qrup5Text1"/>
							<p>${Qrup5Text1}</p>
								<fmt:message key="Qrup5Text2.ab" var="Qrup5Text2"/>
							<a href="alakmahaccar.jsp" class="info" >${Qrup5Text2}</a>
								<fmt:message key="Qrup5Text3.ab" var="Qrup5Text3"/>
							<a href="pasakmahaccar.jsp" class="info" >${Qrup5Text3} </a>
						</div>
					</div>
				</div>
				<div class="col-xs-6 news-info">
					<div class="update-details slideanim">
						<fmt:message key="Qrup5Text4.ab" var="Qrup5Text4"/>
						<p class="abtextclass">${Qrup5Text4}</p>
						<fmt:message key="Qrup5Text5.ab" var="Qrup5Text5"/>
						<a class="abtextclass" href="surmeli.jsp">${Qrup5Text5}</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-6 col-md-6">
			<div class="row">
				<div class="col-xs-6 news-info">
					<div class="view view-eighth slideanim">
						<img src="upload/aksesuarnan_olan.370x250.jpg" />
						<div class="mask">
							<%--<h4>Dec-29-2016</h4>--%>
								<fmt:message key="Qrup6Text1.ab" var="Qrup6Text1"/>
							<p>${Qrup6Text1} </p>
								<fmt:message key="Qrup6Text2.ab" var="Qrup6Text2"/>
							<a href="asqili.jsp" class="info" >${Qrup6Text2} </a>
								<fmt:message key="Qrup6Text3.ab" var="Qrup6Text3"/>
							<a href="pompali.jsp" class="info" >${Qrup6Text3}</a>
								<fmt:message key="Qrup6Text4.ab" var="Qrup6Text4"/>
							<a href="fotoselli.jsp" class="info" >${Qrup6Text4} </a>
								<fmt:message key="Qrup6Text5.ab" var="Qrup6Text5"/>
							<a href="petleliqapilar.jsp" class="info" >${Qrup6Text5}</a>
						</div>
					</div>
				</div>
				<div class="col-xs-6 news-info">
					<div class="update-details slideanim">
						<fmt:message key="Qrup6Text6.ab" var="Qrup6Text6"/>
						<p class="abtextclass">${Qrup6Text6}</p>
						<fmt:message key="Qrup6Text7.ab" var="Qrup6Text7"/>
						<a class="abtextclass" href="#contact">${Qrup6Text7}</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</section>
<!-- /services section -->
<!-- skill section -->
<section class="our-skills" id="skill">
	<h3 class="text-center slideanim">Bizim son yeniliklerimiz </h3>
	<p class="text-center slideanim">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
	<div class="container">
		<h1>T E Z L I K L Ə  &nbsp;&nbsp;  B U R A D A</h1>
		<%--<div class="row">--%>
			<%--<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 slideanim">	--%>
				<%--<ul class='skills'>--%>
					<%--<li class='progressbarPhp' data-width='70' data-target='100'>Marketing 70%</li>--%>
				<%--</ul>--%>
			<%--</div>--%>
			<%--<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 slideanim">	--%>
				<%--<ul class='skills'>--%>
					<%--<li class='progressbarPhp' data-width='90' data-target='100'>Development 90%</li>--%>
				<%--</ul>--%>
			<%--</div>--%>
		<%--</div>--%>
		<%--<div class="row">--%>
			<%--<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 slideanim">	--%>
				<%--<ul class='skills'>--%>
					<%--<li class='progressbarPhp' data-width='65' data-target='100'>Business 65%</li>--%>
				<%--</ul>--%>
			<%--</div>--%>
			<%--<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 slideanim">	--%>
				<%--<ul class='skills'>--%>
					<%--<li class='progressbarPhp' data-width='80' data-target='100'>Trading 80%</li>--%>
				<%--</ul>--%>
			<%--</div>--%>
		<%--</div>--%>
	</div>	
</section>
<!-- skill section -->
<!-- gallery section -->
<section class="our-gallery slideanim" id="gallery">
	<%if (model!=null&&model.getAdName().equals("AdmiN")){%>
	<img src="css/icon/parameter.png" alt="Paramters" style="background-color: #1b6d85" id="parameterourworkPng">
	<a href="fonts/security/Logout.jsp" >Log Out</a>
	<%}%>
	<fmt:message key="PortfolioText1.ab" var="PortfolioText1"/>
	<h3 class="text-center slideanim">${PortfolioText1}</h3>
	<div style="text-align: center;padding-bottom: 1%;" class="navbar-collapse collapse">
		<ul class="nav navbar-nav navbar" style="margin-left: 31%;">
			<fmt:message key="PortfolioText2.ab" var="PortfolioText2"/>
			<li><a href="javaScript:portfoliolist(5)" class="oldPortfolio"><strong>${PortfolioText2}</strong> </a></li>
			<fmt:message key="PortfolioText3.ab" var="PortfolioText3"/>
			<li><a href="javaScript:portfoliolist(1)" class="oldPortfolio"><strong>${PortfolioText3}</strong> </a></li>
			<fmt:message key="PortfolioText4.ab" var="PortfolioText4"/>
			<li><a href="javaScript:portfoliolist(2)" class="oldPortfolio"><strong>${PortfolioText4} </strong></a></li>
			<fmt:message key="PortfolioText5.ab" var="PortfolioText5"/>
			<li><a href="javaScript:portfoliolist(3)" class="oldPortfolio"><strong>${PortfolioText5}</strong></a></li>
			<fmt:message key="PortfolioText6.ab" var="PortfolioText6"/>
			<li><a href="javaScript:portfoliolist(4)" class="oldPortfolio"><strong>${PortfolioText6}</strong></a></li>
		</ul>

	</div>
	<div class="container">
		<div id="photoGallery-container">


		</div>
	</div>
</section>
<!-- /gallery section -->
<!-- news section -->
<%--<section class="our-updates" id="news">--%>

	<%--<%if (model!=null&&model.getAdName().equals("AdmiN")){%>--%>
    <%--<pre>BURA HELEKI BOSDURBURA HELEKI BOSDUR--%>

	<%--</pre>--%>
	<%--<%}%>--%>
<%--</section>--%>
<!-- /news section -->
<!-- map section -->
<section class="map">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 slideanim">
				<iframe class="googlemaps" src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d380510.6741687111!2d-88.01234121699822!3d41.83390417061058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1455598377120" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>	
		</div>
	</div>
</section>
<!-- /map section -->
<!-- contact section -->
<section class="contact-us slideanim" id="contact">
	<fmt:message key="ContactText1.ab" var="ContactText1"/>
	<h3 class="text-center slideanim">${ContactText1}</h3>
	<fmt:message key="ContactText2.ab" var="ContactText2"/>
	<p class="text-center slideanim">${ContactText2}</p>
	<div class="container">
		<div class="row">
			<div class="col-lg-7 col-md-7">
				<form action="" method="post" id="contactForm">
					<div class="row">
						<div class="col-sm-12 form-group slideanim">
							<fmt:message key="ContactText3.ab" var="ContactText3"/>
							<input class="form-control" id="name" name="name" placeholder="${ContactText3}" type="text" required>
						</div>
					</div>
					<div class="row email-bar">
						<div class="col-sm-12 form-group slideanim">
							<fmt:message key="ContactText4.ab" var="ContactText4"/>
							<input class="form-control" id="email" name="email" placeholder="${ContactText4}" type="email" required>
						</div>
					</div>
					<fmt:message key="ContactText5.ab" var="ContactText5"/>
					<textarea class="form-control slideanim" id="comments" name="comments" placeholder="${ContactText5}" rows="5"></textarea><br>
					<h3 id="responseMail" style="color: aliceblue"></h3>
					<div class="row">
						<div class="col-sm-12 form-group slideanim">
							<fmt:message key="ContactText6.ab" var="ContactText6"/>
							<button class="btn btn-outline1 btn-lg" type="submit">${ContactText6}</button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-lg-5 col-md-5">
				<div class="contact-info slideanim">
					<fmt:message key="ContactText7.ab" var="ContactText7"/>
					<h4>${ContactText7}</h4>
					<div class="contact-details">
						<div>
							<span class="glyphicon glyphicon-phone-alt slideanim"></span>
							<p class="p1 slideanim">+994 667 41 34</p>
							<p class="p2 slideanim">+994 544 48 88</p>
						</div>
						<div>
							<span class="glyphicon glyphicon-envelope slideanim"></span>
							<p class="p1 slideanim">${ContactText4} : <a href="mailto:name1@example1.com">name1@example1.com</a></p>
							<p class="p2 slideanim">${ContactText4} : <a href="mailto:name2@example2.com">name2@example2.com</a></p>
						</div>
					</div>	
				</div>
			</div>
		</div>
	</div>
</section>
<!-- /contact section -->
<!-- footer section -->
<footer class="text-center">
    <div class="footer-above">
        <div class="container">
            <div class="row">
                <div class="footer-col col-md-4">
					<fmt:message key="ContactText8.ab" var="ContactText8"/>
                    <h4>${ContactText8}</h4>
                    <p>3481 Melrose Place<br>Beverly Hills, Chicago 90210</p>
                </div>
                <div class="footer-col col-md-4">
					<fmt:message key="ContactText9.ab" var="ContactText9"/>
                    <h4>${ContactText9}</h4>
                    <ul class="list-inline">
                        <li>
                            <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                        </li>
                        <li>
                            <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                        </li>
                        <li>
                            <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                        </li>
                        <li>
                            <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="footer-col col-md-4">
					<fmt:message key="Aboutus.ad" var="Con"/>
                    <h4>${Con}</h4>
					<fmt:message key="Header.ab" var="Con1"/>
                    <p>${Con1}</p>
                </div>
            </div>
        </div>
	</div>
    <div class="footer-below">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>© - 2016 . All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">W3layouts</a></p>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- /footer section -->

<script>
var myBgFader = $('.header').bgfader([
  'images/back/back2.jpg',
  'images/back/back3.jpg',
  'images/back/back4.jpg',
  'images/back/back5.jpg',
//  'images/back/back6.jpg',
], {
  'timeout': 2000,
  'speed': 2000,
  'opacity': 0.4
})

myBgFader.start()
</script>
<!-- /js for banner section -->
<!-- js for skill section -->
<script src="js/progressbar.js"></script>
<script>
    // Display the progress bar calling progressbar.js
	$('.progressbarPhp').progressBar({
		shadow : true,
		percentage : false,
		animation : true,
		animateTarget : true,
		barColor : "rgb(49, 112, 143)",
	});
	//Menu
	$(".spinDown").click(function() {
		var target = $(this).data("target");
		var scrollFix = -80;
		target = "#" + target;
		$("html,body").animate({
			scrollTop : $(target).offset().top + scrollFix
		}, 1000);
		return false;
	});
</script>
<!-- /js for skill section -->
<!-- js for gallery -->
<script type="text/javascript" src="js/photoGallery.js"></script>
<script type="text/javascript">
	$(function(){
		var photoGallery = new PhotoGallery();
	});
</script>
<!-- /js for gallery -->
<!-- js for back to top -->
<script src="js/main.js"></script> 
<!-- /js for back to top -->
<!-- js for smooth navigation -->
<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, section.our-updates a, footer a[href='#myPage']").on('click', function(event) {

  // Store hash
  var hash = this.hash;

  // Using jQuery's animate() method to add smooth page scroll
  // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area

//  $('html, body').animate({
//    scrollTop: $(hash).offset().top
//  }, 900, function(){
//
//    // Add hash (#) to URL when done scrolling (default click behavior)
//    window.location.hash = hash;
//    });
  });
})
</script>
<!-- /js for smooth navigation -->
<!-- js for slide animations -->
<script>
$(window).scroll(function() {
  $(".slideanim").each(function(){
    var pos = $(this).offset().top;

    var winTop = $(window).scrollTop();
    if (pos < winTop + 600) {
      $(this).addClass("slide");
    }
  });
});
</script>
<!-- /js for slide animations -->
<!-- /js files -->
</body>
</html>