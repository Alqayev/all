<!DOCTYPE html>
<%--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">--%>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>--%>
<%--<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>--%>
<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>Admin Panel</title>
    <!-- Latest compiled and minified CSS -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <c:set var="val" value="${admin}"/>
    <c:choose>
        <c:when test="${val.equalsIgnoreCase('admin')}">
            <script>
                window.location.href = "vgr/security/vgrPanel/admin.jsp";
            </script>
        </c:when>
        <c:otherwise>
            <%--Jquery--%>
            <script src="../../../bootstrap/fonts/js/jquery.min.js"></script>
            <script src="../../../js/admin/jquery/jquery-1.10.2.js"></script>
            <script src="../../../js/admin/jquery/jquery.dataTables.min.js"></script>
            <link rel="stylesheet" href="../../../css/jquery/jquery.dataTables.min.css">

            <%--ucluk--%>
            <script src="../../../bootstrap/fonts/js/bootstrap.min.js"></script>
            <script src="../../../bootstrap/fonts/js/jquery-ui.js"></script>
            <link rel="stylesheet" href="../../../bootstrap/fonts/css/bootstrap.min.css">
            <%--ucluk--%>

            <link rel="stylesheet" href="../../../css/main.css">

            <script src="../../../js/admin/adminpanel.js"></script>
            <script src="../../../js/admin/selectBoxControl.js"></script>
            <script src="../../../js/admin/selectBoxControl2.js"></script>
            <script src="../../../js/admin/loadSelectBox.js"></script>
            <script src="../../../js/admin/loadEidtJs.js"></script>
            <script src="../../../js/admin/otherWorks/other.js"></script>

        </c:otherwise>
    </c:choose>

    <div id="test">

    </div>


</head>

<body>


<script>
    $(function () {
//        history.pushState(null, null, 'admin.jsp');
//        window.addEventListener('popstate', function (event) {
//            history.pushState(null, null, 'admin.jsp');
//        });
        vitraControlProduct();
        duravitControlProduct();
        hansgroheControlProduct();
        axorControlProduct();
        geberitControlProduct();
        farnkeControlProduct();
        teucoControlProduct();
        fapControlProduct();
        seutoControlProduct();
        dysonControlProduct();
        devonControlProduct();
        schluterControlProduct();
        burgbadControlProduct();
        eurodesignControlProduct();
        oazisControlProduct();
        toscecuatroControlProduct();

    })
</script>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Front </a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="javaScript:selectOperating(4)">Productu göstər</a></li>
                <li><a href="javaScript:selectOperating(1)">Producta düzəliş et</a></li>
                <li><a href="javaScript:selectOperating(2)">Product Daxil Et</a></li>
                <li><a href="javaScript:selectOperating(3)">Product Sil</a></li>
                <%--<li><a href="javaScript:selectOperating(2)">Producta Duzelish et</a></li>--%>
                <%--<li><a href="javaScript:selectOperating(3)">Product Sil</a></li>--%>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="row" style="height:1000px;">
        <div class="col-sm-2 sidenav" id="left_bar">
            <div id="insertProductAdmin" class="pre-scrollable" style="background-color: currentColor;">
                <span style="color: red" id="infoOperating"></span>
                <%--<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">--%>
                <input type="button" id="vitraAdmin" value="Vitra" class="menuButtonDesign">
                <input type="button" id="DuravitAdmin" value="Duravit" class="menuButtonDesign">
                <input type="button" id="HansgroheAdmin" value="Hansgrohe Markası" class="menuButtonDesign">
                <input type="button" id="AxorAdmin" value="Axor Markası" class="menuButtonDesign">
                <input type="button" id="geberitAdmin" value="Geberit" class="menuButtonDesign">
                <input type="button" id="frankeAdmin" value="Franke" class="menuButtonDesign">
                <input type="button" id="teucoAdmin" value="Teuco" class="menuButtonDesign">
                <input type="button" id="fapAdmin" value="Fap" class="menuButtonDesign">
                <input type="button" id="setaAdmin" value="Seta" class="menuButtonDesign">
                <input type="button" id="dysonAdmin" value="Dyson" class="menuButtonDesign">
                <input type="button" id="DevonAdmin" value="Devon" class="menuButtonDesign">
                <input type="button" id="SchluterAdmin" value="Schluter" class="menuButtonDesign">
                <input type="button" id="BurgbadAdmin" value="Burgbad" class="menuButtonDesign">
                <input type="button" id="EurodesignAdmin" value="Eurodesign" class="menuButtonDesign">
                <input type="button" id="OazisAdmin" value="Oazis" class="menuButtonDesign">
                <input type="button" id="ToscecuatroAdmin" value="Toscecuatro" class="menuButtonDesign">
                <%--</nav>--%>
            </div>
        </div>

        <div class="col-sm-8" style="overflow:auto;height:1000px; width: 82%;background-color: darkgrey;">

            <%--V I T R A--%>
            <div id="vitraSelect" style="display: none">
                <%--<%@include file="../content/_content_vitra_insert.jsp" %>--%>
            </div>

            <div id="vitraInsert" style="display: none">
                <%--<%@include file="../content/_content_vitra_insert.jsp" %>--%>
            </div>

            <div id="vitraUpdate" style="display: none">
                <%--<%@include file="../content/_content_vitra_insert.jsp" %>--%>
            </div>

            <div id="vitraDelete" style="display: none">
                <%--<%@include file="../content/_content_vitra_insert.jsp" %>--%>
            </div>
            <%--E N D    V I T R A--%>

            <%-- G E B E R I T--%>

            <div class="modal fade" id="geberitInsert">

            </div>

            <div class="modal fade" id="geberitEdit">

            </div>

            <div id="geberitSelect" style="display: none">
                <%--<%@include file="../content/_content_vitra_insert.jsp" %>--%>
            </div>

            <%--E N D    G E B E R I T--%>

            <%-- H A N S G R O H E      MAR--%>

            <div class="modal fade" id="hansgroheInsert">

            </div>

            <div class="modal fade" id="hansgroheEdit">

            </div>

            <div id="hansgroheSelect" style="display: none">
                <%--<%@include file="../content/_content_vitra_insert.jsp" %>--%>
            </div>

            <%--E N D    H A N S G R O H E      MAR--%>

            <%-- A X O R    MAR--%>

            <div class="modal fade" id="AxorInsert">

            </div>

            <div class="modal fade" id="AxorEdit">

            </div>

            <div id="AxorSelect" style="display: none">
                <%--<%@include file="../content/_content_vitra_insert.jsp" %>--%>
            </div>

            <%--E N D   A X O R    MAR--%>

            <%--F R A N K E    M A R--%>

            <div class="modal fade" id="frankeInsert">

            </div>

            <div class="modal fade" id="frankeEdit">

            </div>

            <div id="frankeSelect" style="display: none">
                <%--<%@include file="../content/_content_vitra_insert.jsp" %>--%>
            </div>

            <%--E N D   F R A N K E    M A R--%>

            <%-- T E U C O    M A R--%>

            <div class="modal fade" id="teucoInsert">

            </div>

            <div class="modal fade" id="teucoEdit">

            </div>

            <div id="teucoSelect" style="display: none">
                <%--<%@include file="../content/_content_vitra_insert.jsp" %>--%>
            </div>

            <%--E N D   T E U C O    M A R--%>

            <%-- F A P    M A R--%>

            <div class="modal fade" id="fapInsert">

            </div>

            <div class="modal fade" id="fapEdit">

            </div>

            <div id="fapSelect" style="display: none">
                <%--<%@include file="../content/_content_vitra_insert.jsp" %>--%>
            </div>

            <%--E N D   F A P    M A R--%>

            <%-- S E T A    M A R--%>

            <div class="modal fade" id="setaInsert">

            </div>

            <div class="modal fade" id="setaEdit">

            </div>

            <div id="setaSelect" style="display: none">
                <%--<%@include file="../content/_content_vitra_insert.jsp" %>--%>
            </div>

            <%--E N D  S E T A    M A R--%>
            <%--O T H E R   P R O D U C T--%>
            <div class="modal fade" id="otherProductInsert">

            </div>
            <div class="modal fade" id="otherProductEdit">

            </div>

            <div id="otherProductSelect" style="display: none">
                    <%--<%@include file="../content/_content_vitra_insert.jsp" %>--%>
            </div>
        </div>
    </div>
</div>
<footer class="container-fluid text-center" style="height:100px;background-color:#000;">
    <p>Footer Taleh</p>
</footer>
</body>

</html>