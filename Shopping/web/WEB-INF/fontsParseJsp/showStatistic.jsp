<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 18.07.2016
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script type="text/javascript">

//    var text = '[' +
//            '{ "firstName":"John" , "lastName":"Doe" },' +
//            '{ "firstName":"Anna" , "lastName":"Smith" },' +
//            '{ "firstName":"Peter" , "lastName":"Jones" } ]';
//    var obj1 = JSON.parse(text);
//    var na=[];
//    var sur=[];
//    var data1 = [];
////    alert (obj)
//    for (i=0;i<obj1.length;i++){
//        var val=obj1[i];
//        var ob={};
//        na[i]=val.firstName;
//        sur[i]=val.lastName;
//        data1.push(ob)
//    }
//    $('#demo').html(na);

    var getJsonLine= '${convertGson}';
    getJsonLine = JSON.parse(getJsonLine);
    var monthData=[];
    var monthCount=[];
    var data = [];

    for(var i=0; i<getJsonLine.length; i++){
        var val = getJsonLine[i];
        var obj = {};

        monthData[i]= val.chartMonth;
        monthCount[i]=val.prCount;
        obj.name =    monthData[i];
        obj.y    =    monthCount[i];
        data.push(obj);
    }
    $(function () {
        $('#container').highcharts({
            title: {
                text: 'Monthly Sticker count in 2016',
                x: -20 //center
            },
            subtitle: {
                text: 'Source: HomeRentals.com',
                x: -20
            },

            xAxis: {
                type: 'category',
                title: {
                    text: ""
                }
            },
            yAxis: {
                title: {
                    text: 'Sticker count'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                valueSuffix: ''
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle',
                borderWidth: 0
            },
            series: [
                {
                name: 'Home stickers',
                data: data
            }
            ]
        });
    });
</script>
<p id="demo"></p>
<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
