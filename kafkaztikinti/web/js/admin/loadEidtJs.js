function editd(  name,cod,url,sub1,sub2,sub3,seri,ebat,renk,tarz,genislik,derinlik,
                 yukseklik,sekil,montaj,baglantiT,yikamaS,kapakTas,gucKay,yavasKap,bunyeTip, akrilikP,
                 kapakY,kapakR,duvarY,kalinlik,normal,hidromasaj,uygulamaS,fonksyonS,cocuklar,yeni,img,active,id) {
    $('#vitraProducName_edit').val(name);
    $('#vitraProducCod_edit').val(cod);
    $('#vitraProducInfoUrlId_edit').val(url);
    $('#vitraUrun_yeni').val(sub1);
    $('#sub2Table_edit').val(sub2);
    $('#sub3Table_edit').val(sub3);

    $('#seriCesitleri_edit').val(seri);
    $('#ebatCesitleri_edit').val(ebat);
    $('#renkCesitleri_edit').val(renk);
    $('#tarzCesitleri_edit').val(tarz);
    $('#genislikCesitleri_edit').val(genislik);
    $('#derinlikCesitleri_edit').val(derinlik);

    $('#yukseklikCesitleri_edit').val(yukseklik);
    $('#sekilCesitleri_edit').val(sekil);
    $('#montajTipiCesitleri_edit').val(montaj);
    $('#baglantiTipiCesitleri_edit').val(baglantiT);
    $('#yikamaSeceneyiCesitleri_edit').val(yikamaS);
    $('#kapakTasarimiCesitleri_edit').val(kapakTas);

    $('#gucKaynagiCesitleri_edit').val(gucKay);
    $('#yavasKapanirCesitleri_edit').val(yavasKap);
    $('#bunyeTipiCesitleri_edit').val(bunyeTip);
    $('#akrilikPlakaCesitleri_edit').val(akrilikP);

    $('#kapakYonuCesitleri_edit').val(kapakY);
    $('#kapakRengiCesitleri_edit').val(kapakR);

    $('#duvarYerlesimCesitleri_edit').val(duvarY);
    $('#kalinlikCesitleri_edit').val(kalinlik);
    $('#normalCesitleri_edit').val(normal);
    $('#hidromasajSeceneyiCesitleri_edit').val(hidromasaj);
    $('#uygulamaSeceneyiCesitleri_edit').val(uygulamaS);
    $('#fonksyonSayisiCesitleri_edit').val(fonksyonS);
    $('#topStatus_edit').val(active);
    $('#product_id_edit').val(id);
    $('#oldImageId').attr('src', '../../../upload/'+img);

    if (cocuklar==1){
        $('#cocuklar_editId1').attr('checked', true);

    }else if (cocuklar==0){
        $('#cocuklar_editId1').attr('checked', true);
    }
    if (yeni==1){
        $('#yeni_editId1').attr('checked', true);

    }else if (yeni==0){
        $('#yeni_editId2').attr('checked', true);
    }
}

function editChecked(ch) {
    $('#editChecked').html(ch);

    $('#vitraProducName_edit').val('');
    $('#vitraProducCod_edit').val('');
    $('#vitraProducInfoUrlId_edit').val('');
    $('#vitraUrun_yeni').val(0);
    $('#sub2Table_edit').val(0);
    $('#sub3Table_edit').val(0);

    $('#seriCesitleri_edit').val(0);
    $('#ebatCesitleri_edit').val(0);
    $('#renkCesitleri_edit').val(0);
    $('#tarzCesitleri_edit').val(0);
    $('#genislikCesitleri_edit').val(0);
    $('#derinlikCesitleri_edit').val(0);

    $('#yukseklikCesitleri_edit').val(0);
    $('#sekilCesitleri_edit').val(0);
    $('#montajTipiCesitleri_edit').val(0);
    $('#baglantiTipiCesitleri_edit').val(0);
    $('#yikamaSeceneyiCesitleri_edit').val(0);
    $('#kapakTasarimiCesitleri_edit').val(0);

    $('#gucKaynagiCesitleri_edit').val(0);
    $('#yavasKapanirCesitleri_edit').val(0);
    $('#bunyeTipiCesitleri_edit').val(0);
    $('#akrilikPlakaCesitleri_edit').val(0);

    $('#kapakYonuCesitleri_edit').val(0);
    $('#kapakRengiCesitleri_edit').val(0);

    $('#duvarYerlesimCesitleri_edit').val(0);
    $('#kalinlikCesitleri_edit').val(0);
    $('#normalCesitleri_edit').val(0);
    $('#hidromasajSeceneyiCesitleri_edit').val(0);
    $('#uygulamaSeceneyiCesitleri_edit').val(0);
    $('#fonksyonSayisiCesitleri_edit').val(0);
    $('#oldImageId').attr('style', 'display:none');

        $('#cocuklar_editId2').attr('checked', true);

        $('#yeni_editId1').attr('checked', true);

}

