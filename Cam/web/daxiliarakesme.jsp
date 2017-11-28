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
            daxiliarakesme();
        });
    </script>
    <!-- /js files -->

</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<!-- navigation -->
<div class="navbar-wrapper">
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
                    <a class="navbar-brand" href="index.jsp"><h1><span>P</span>roprietary</h1></a>
                </div>
            </div>
        </nav>
    </div>
</div>
<!-- /navigation -->
<!-- gallery section -->
<section class="our-gallery slideanim" id="gallery">
    <fmt:message key="Caregory2alt2ic1.ab" var="Caregory2alt1ic1"/>
    <h3 class="text-center slideanim">${Caregory2alt1ic1}</h3>
    <fmt:message key="Caregory2alt2ic2.ab" var="Caregory2alt1ic2"/>
    <p class="text-center slideanim">${Caregory2alt1ic2}</p>
    <fmt:message key="Caregory2alt2ic3.ab" var="Caregory2alt1ic3"/>
    <p class="text-center slideanim">${Caregory2alt1ic3}</p>
    <ul style="color: aliceblue;">
        <fmt:message key="Caregory2alt2ic4.ab" var="Caregory2alt1ic4"/>
        <p class="text-center slideanim"><li >- ${Caregory2alt1ic4}</li></p>
        <fmt:message key="Caregory2alt2ic5.ab" var="Caregory2alt1ic5"/>
        <p class="text-center slideanim"><li >- ${Caregory2alt1ic5} </li></p>
        <fmt:message key="Caregory2alt2ic6.ab" var="Caregory2alt1ic6"/>
        <p class="text-center slideanim"><li >- ${Caregory2alt1ic6}</li></p>
        <fmt:message key="Caregory2alt2ic7.ab" var="Caregory2alt1ic7"/>
        <p class="text-center slideanim"><li >- ${Caregory2alt1ic7}</li></p>
    </ul><br>
    <div class="container">
        <div id="photoGallery-container">

        </div>
    </div>
</section>
<!-- /gallery section -->

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