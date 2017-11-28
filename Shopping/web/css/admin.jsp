<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Proyect123</title>
    <script type="text/javascript" src="js/jquery/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="js/jquery/jquery.dataTables.min.js"></script>
    <%--Atilib--%>
    <script type="text/javascript" src="js/jquery/jquery-ui.js"></script>
    <script type="text/javascript" src="js/fonts/adminMain.js"></script>
    <script type="text/javascript" src="js/fonts/scrpt.js"></script>
    <script type="text/javascript" src="js/fonts/dialog.js"></script>


    <link rel="stylesheet" href="css/main.css" type="text/css">
    <link rel="stylesheet" href="css/jquery.dataTables.min.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.css" type="text/css">
</head>


<body style="margin: 0">

<script>
    $(function () {
        sc();

    });
</script>

<div id="container" style="width: 100%;height: 80%;">

    <div id="header" style="background-color: #585858;height: 148px ;border: 1px solid;">
        <input type="button" value="asdasdsadasd" id="df"/>
        <input type="text" id="dddd" >
        <h1>Header</h1>
    </div>

    <div id="menu" style="background-color: #979797; height: 100%;width: 329px;float: left;border: 1px solid">
        <input type="button" id="showCustomersListButtonId" value="Show Customers" class="menu-button-design">
        <input type="button" id="showOrderedListButtonId" value="Show Ordered List" class="menu-button-design">
        <input type="button" id="showProductsListButtonId" value="Show Products" class="menu-button-design">
        <input type="button" id="showBonuceListButtonId" value="Show bonuce list" class="menu-button-design">


    </div>

    <div id="primarycontent" style="background-color: antiquewhite;height: 100%;width: 81%;float: left;border: 1px solid">

        <div id="accordion">
            <h3>ADVANCED SEARCH</h3>

            <div id="advSearchLoadDiv" style="height: 200px">

            </div>
        </div>


        <%--TABLES--%><%--TABLES--%><%--TABLES--%><%--TABLES--%><%--TABLES--%>
        <div id="showCustomerListdiv" style="display: none">

        </div>

        <div id="showOrderedListdiv" style="" tyle="display: none">

        </div>

        <div id="showProductList" style="display: none">

        </div>

        <div id="showBonuceList">

        </div>
        <%--END TABLES--%><%-- END TABLES--%><%--END TABLES--%><%--END TABLES--%><%--END TABLES--%>
        <div id="customerModalDiv" style="display: none;">

        </div>

        <div id="productModalDiv" style="display: none;">

        </div>

         <div id="bonuceModalDiv" style="display: none;">

         </div>

         <div id="insertProductModalDiv" style="display: none;">

         </div>


    </div>

</div>

<div id="footer" style="background-color: #2b2b2b;border: 1px solid;text-align: center;clear: both">
    Copy right
</div>

</body>
</html>
