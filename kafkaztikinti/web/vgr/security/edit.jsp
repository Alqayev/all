<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 11/11/2016
  Time: 7:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>

<c:set var="val" value="${editVitraProduct}"/>
<c:choose>
    <c:when test="${val==null}">
        <script>
            editChecked("Kod bazada movcud deyil ")
//            $('#vitraUrun_yeni').val()
        </script>
    </c:when>
    <c:otherwise>
        <script>
            editd(
                    '${val.productName}',
                    '${val.productCod}',
                    '${val.url}',
                    ${val.sub1Table},
                    ${val.sub2Table},
                    ${val.sub3Table},
                    ${val.seriCesitleri},
                    ${val.ebatCesitleri},
                    ${val.renkCesitleri},
                    ${val.tarzCesitleri},
                    ${val.genislikCesitleri},
                    ${val.derinlikCesitleri},
                    ${val.yukseklikCesitleri},
                    ${val.sekilCesitleri},
                    ${val.montajTipiCesitleri},
                    ${val.baglantiTipiCesitleri},
                    ${val.yikamaSeceneyiCesitleri},
                    ${val.kapakTasarimiCesitleri},
                    ${val.gucKaynagiCesitleri},
                    ${val.yavasKapanirCesitleri},
                    ${val.bunyeTipiCesitleri},
                    ${val.akrilikPlakaCesitleri},
                    ${val.kapakYonuCesitleri},
                    ${val.kapakRengiCesitleri},
                    ${val.duvarYerlesimCesitleri},
                    ${val.kalinlikCesitleri},
                    ${val.normalCesitleri},
                    ${val.hidromasajSeceneyiCesitleri},
                    ${val.uygulamaSeceneyiCesitleri},
                    ${val.fonksyonSayisiCesitleri},
                    ${val.cocuklarIcin},
                    ${val.yeniIcin},
                    '${val.productProfilPicName}',
                    ${val.active},
                    ${val.product_id}
            );

        </script>
    </c:otherwise>
</c:choose>

