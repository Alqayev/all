/**
 * Created by TALEH on 05.07.2016.
 */
var globId=0;
var globPrice=0;
var globBonVal=0;
function registr() {
    $('#formsd').submit(function () {
        var dont = '';
        var have = 'haveUser';
        var name = $('#ap_name').val();
        var surname = $('#ap_surname').val();
        var email = $('#ap_email').val();
        var check_email = $('#ap_email_check').val();
        var password = $('#ap_password').val();
        var password_check = $('#ap_password_check').val();
        var name2 = name.replace('^', '#');
        var name3 = name.replace('*', '#');
        var name4 = name.replace('+', '#');
        var name5 = name.replace('.', '#');
        var name6 = name.replace('?', '#');
        var name7 = name.replace('|', '#');
        var name8 = name.replace('\\', '#');

        var surname2 = surname.replace('^', '#');
        var surname3 = surname.replace('*', '#');
        var surname4 = surname.replace('+', '#');
        var surname5 = surname.replace('.', '#');
        var surname6 = surname.replace('?', '#');
        var surname7 = surname.replace('|', '#');
        var surname8 = surname.replace('\\', '#');

        var email1 = email.replace('^', '#');
        var email2 = email.replace('*', '#');
        var email3 = email.replace('+', '#');
        var email5 = email.replace('?', '#');
        var email6 = email.replace('|', '#');
        var email7 = email.replace('\\', '#');

        var pass1 = password.replace('?', '#');
        var pass2 = password.replace('*', '#');

        var reg3 = new RegExp('\'');
        var reg4 = new RegExp('\"');
        var reg5 = new RegExp('\\[');
        var reg6 = new RegExp(']');
        var reg7 = new RegExp(';');
        var reg8 = new RegExp(':');
        var reg10 = new RegExp('#');
        var reg11 = new RegExp('!');
        var reg15 = new RegExp(',');
        var reg16 = new RegExp('`');
        var reg17 = new RegExp('~');
        var reg18 = new RegExp('%');

        if (name != null && name != "" && name.trim().length != 0 && !reg10.test(name8) && !reg3.test(name) && !reg4.test(name) && !reg5.test(name) && !reg6.test(name) && !reg7.test(name)
            && !reg8.test(name) && !reg10.test(name2) && !reg10.test(name) && !reg11.test(name) && !reg10.test(name3) && !reg10.test(name4) && !reg10.test(name5)
            && !reg15.test(name) && !reg16.test(name) && !reg17.test(name) && !reg18.test(name) && !reg10.test(name6) && !reg10.test(name7)

            && surname != null && surname != "" && surname.trim().length != 0 && !reg10.test(surname8) && !reg3.test(surname) && !reg4.test(surname) && !reg5.test(surname) && !reg6.test(surname) && !reg7.test(surname)
            && !reg8.test(surname) && !reg10.test(surname2) && !reg10.test(surname) && !reg11.test(surname) && !reg10.test(surname3) && !reg10.test(surname4) && !reg10.test(surname5)
            && !reg15.test(surname) && !reg16.test(surname) && !reg17.test(surname) && !reg18.test(surname) && !reg10.test(surname6) && !reg10.test(surname7)

            && email != null && email != "" && email.trim().length != 0 && !reg10.test(email7) && !reg3.test(email) && !reg4.test(email) && !reg5.test(email) && !reg6.test(email) && !reg7.test(email)
            && !reg8.test(email) && !reg10.test(email1) && !reg10.test(email) && !reg11.test(email) && !reg10.test(email2) && !reg10.test(email3) && !reg15.test(email) && !reg16.test(email)
            && !reg18.test(email) && !reg10.test(email5) && !reg10.test(email6)

            && password != null && password != "" && password.trim().length != 0 && !reg10.test(pass1) && !reg3.test(password) && !reg4.test(password)
            && !reg15.test(password) && !reg16.test(password) && !reg10.test(pass2)) {

            if (email != check_email || password != password_check) {
                dont = 'dontHaveInsert';
                if (email != check_email && password == password_check) {

                    $('#showErr1').show();
                    $('#showErr2').show();
                    $('#ap_email_check').val("");
                    var refInterval = window.setInterval(function () {
                        $('#showErr1').hide();
                        $('#showErr2').hide();
                    }, 4000);
                }
                else if (password != password_check && email == check_email) {
                    $('#showErr3').show();
                    $('#showErr4').show();
                    $('#ap_password_check').val("");
                    var refInterval = window.setInterval(function () {
                        $('#showErr3').hide();
                        $('#showErr4').hide();
                    }, 4000);
                }
                else {
                    $('#showErr3').show();
                    $('#showErr4').show();
                    $('#ap_password_check').val("");
                    $('#showErr1').show();
                    $('#showErr2').show();
                    $('#ap_email_check').val("");
                    var refInterval = window.setInterval(function () {
                        $('#showErr3').hide();
                        $('#showErr4').hide();
                        $('#showErr1').hide();
                        $('#showErr2').hide();
                    }, 4000);
                }
            }
            else {
                if (password.trim().length < 5 || password.trim().length > 25 || password_check.trim().length < 5 || password_check.trim().length > 25) {
                    $('#showErr12').show();
                    $('#showErr13').show();
                    var refInterval = window.setInterval(function () {
                        $('#showErr12').hide();
                        $('#showErr13').hide();
                    }, 4000);
                }
                else {
                    $.ajax({
                        type: 'POST',
                        url: $(this).attr('action'),
                        dataType: 'html',
                        data: 'name=' + name + '&surname=' + surname + '&email=' + email + '&password=' + password + '&dontHaveUser=' + have,
                        success: function (data) {

                            var checkMails = data;
                            if (checkMails.trim().length == 0) {
                                $('#showErr5').show();
                                var refInterval = window.setInterval(function () {
                                    window.location.href = "registered.jsp";
                                }, 4000);
                            } else {
                                $('#showErr14').html(data);
                                $('#showErr14').show();
                                $('#ap_email_check').val("");
                                $('#ap_password_check').val("");
                                var refInterval = window.setInterval(function () {
                                    $('#showErr14').hide();
                                }, 4000);
                            }
                        }
                    });
                }
            }
        }
        else {
            if (name == null || name == "" || name.trim().length == 0 || reg10.test(name8) || reg3.test(name) || reg4.test(name) || reg5.test(name) || reg6.test(name) || reg7.test(name)
                || reg8.test(name) || reg10.test(name2) || reg10.test(name) || reg11.test(name) || reg10.test(name3) || reg10.test(name4) || reg10.test(name5)
                || reg15.test(name) || reg16.test(name) || reg17.test(name) || reg18.test(name) || reg10.test(name6) || reg10.test(name7)) {
                $('#showErr6').show();
                var refInterval = window.setInterval(function () {
                    $('#showErr6').hide();
                }, 4000);
            }
            if (surname == null || surname == "" || surname.trim().length == 0 || reg10.test(surname8) ||
                reg3.test(surname) || reg4.test(surname) || reg5.test(surname) || reg6.test(surname) || reg7.test(surname)
                || reg8.test(surname) || reg10.test(surname2) || reg10.test(surname) || reg11.test(surname) || reg10.test(surname3) || reg10.test(surname4) || reg10.test(surname5)
                || reg15.test(surname) || reg16.test(surname) || reg17.test(surname) || reg18.test(surname) || reg10.test(surname6) || reg10.test(surname7)) {
                $('#showErr7').show();
                var refInterval = window.setInterval(function () {
                    $('#showErr7').hide();
                }, 4000);
            }
            if (email == null || email == "" || email.trim().length == 0 || reg10.test(email7) || reg3.test(email) || reg4.test(email) || reg5.test(email) || reg6.test(email) || reg7.test(email)
                || reg8.test(email) || reg10.test(email1) || reg10.test(email) || reg11.test(email) || reg10.test(email2) || reg10.test(email3) || reg15.test(email) || reg16.test(email)
                || reg18.test(email) || reg10.test(email5) || reg10.test(email6)) {
                $('#showErr8').show();
                $('#showErr9').show();
                var refInterval = window.setInterval(function () {
                    $('#showErr8').hide();
                    $('#showErr9').hide();
                }, 4000);
            }
            if (password == null || password == "" || password.trim().length == 0 || reg10.test(pass1) || reg3.test(password) || reg4.test(password)
                || reg15.test(password) || reg16.test(password) || reg10.test(pass2)) {
                $('#showErr10').show();
                $('#showErr11').show();
                var refInterval = window.setInterval(function () {
                    $('#showErr10').hide();
                    $('#showErr11').hide();
                }, 4000);
            }
        }
        return false;
    });
};
function registrBonuce() {
    
    $('#registrBonuce').submit(function () {
        var a=$('#bonCheck').val()
        if (typeof a == "undefined"){
            $('#bonChk').show();
            $('#bonChk').click(function () {
                $('#bonChk').hide();
            });
        }
        var email = $('#bonuceTextemailId').val();
        var password = $('#bonucePrimaryPaswordId').val();
        var name = $('#bonuceNameId').val();
        var pass = $('#bonucepaswordId').val();

        var name2 = email.replace('^', '#');
        var name3 = email.replace('*', '#');
        var name4 = email.replace('+', '#');
        var name5 = email.replace('?', '#');
        var name6 = email.replace('|', '#');
        var name7 = email.replace('\\', '#');
        
        var password3 = password.replace('*', '#');
        
        var username2 = name.replace('^', '#');
        var username3 = name.replace('*', '#');
        var username4 = name.replace('+', '#');
        var username5 = name.replace('.', '#');
        var username6 = name.replace('?', '#');
        var username7 = name.replace('|', '#');
        var username8 = name.replace('\\', '#');
        
        
        var pass3 = pass.replace('*', '#');
        
        var reg1 = new RegExp('\'');
        var reg2 = new RegExp('\"');
        var reg3 = new RegExp('\\[');
        var reg4 = new RegExp(']');
        var reg5 = new RegExp(';');
        var reg6 = new RegExp(':');
        var reg7 = new RegExp('#');
        var reg8 = new RegExp('!');
        var reg9 = new RegExp(',');
        var reg10 = new RegExp('`');
        var reg11 = new RegExp('~');
        var reg12 = new RegExp('%');
        var ad=new RegExp('Already registered !!!');
        if (email != null && email != '' && email.trim().length != 0 && !reg1.test(email) && !reg2.test(email) && !reg3.test(email) && !reg4.test(email) && !reg5.test(email) && !reg6.test(email)
            && !reg7.test(email) && !reg8.test(email) && !reg9.test(email) && !reg10.test(email) && !reg7.test(name2) && !reg7.test(name3) && !reg7.test(name4) && !reg7.test(name5) && !reg7.test(name6) && !reg7.test(name7)
            && password != null && password != '' && password.trim().length != 0 && !reg1.test(password) && !reg2.test(password) && !reg7.test(password3)
            && name != null && name != '' && name.trim().length != 0 && !reg1.test(name) && !reg2.test(name) && !reg3.test(name) && !reg4.test(name) && !reg5.test(name) && !reg6.test(name)
            && !reg7.test(name) && !reg8.test(name) && !reg9.test(name) && !reg10.test(name) && !reg7.test(username2) && !reg7.test(username3) && !reg7.test(username4) && !reg7.test(username5) && !reg7.test(username6) && !reg7.test(username7) && !reg7.test(username8)
            && pass != null && pass != '' && pass.trim().length != 0 && !reg1.test(pass) && !reg2.test(pass) && !reg7.test(pass3)) {
        
        
            $.ajax({
                type: 'POST',
                url: $(this).attr('action'),
                dataType: 'html',
                data: 'email=' + email + '&password=' + password + '&name=' + name + '&pass=' + pass,
                success: function (data) {
                    var checkMails = data;
                    if (checkMails.trim()== 'Success registr !!!') {
                        $('#showErr20').html(data);
                        $('#showErr20').show();
                        var refInterval = window.setInterval(function () {
                            window.location.href = "news.jsp";
                        }, 4000);
                    }
                      
                    else if(ad.test(checkMails)){
                        $('#showErr20').html(data);
                        $('#showErr20').show();
                        var refInterval = window.setInterval(function () {
                            $('#showErr20').hide();
                        }, 4000);
                    }
                    else {
                        $('#showErr21').show();
                        $('#bonucePrimaryPaswordId').val("");
                        $('#bonucepaswordId').val("");
                        var refInterval = window.setInterval(function () {
                            $('#showErr21').hide();
                        }, 4000);
                    }
                }
            });
        }
        else {
            if (email == null || email == "" || email.trim().length != 0 || !reg1.test(email) || !reg2.test(email) || reg3.test(email) || reg4.test(email)
                || reg5.test(email) || reg6.test(email) || reg7.test(email) || reg8.test(email) || reg9.test(email) || reg10.test(email) || reg7.test(name2)
                || reg7.test(name3) || reg7.test(name4) || reg7.test(name5) || reg7.test(name6) || reg7.test(name7) || reg7.test(name8)) {
                $('#showErr16').show();
                var refInterval = window.setInterval(function () {
                    $('#showErr16').hide();
                }, 4000);
            }
            if (password == null || password == "" || password.trim().length == 0 || reg1.test(password) || reg2.test(password) || reg7.test(password3)) {
                $('#showErr17').show();
                var refInterval = window.setInterval(function () {
                    $('#showErr17').hide();
                }, 4000);
            }
            if (name == null || name == "" || name.trim().length == 0 || reg1.test(name) || reg2.test(name) || reg3.test(name) || reg4.test(name) || reg5.test(name)
                || reg6.test(name) || reg7.test(name) || reg8.test(name) || reg9.test(name) || reg10.test(name) || reg7.test(username2) || reg7.test(username3) || reg7.test(username4)
                || reg7.test(username5) || reg7.test(username6) || reg7.test(username7) || reg7.test(username8)) {
                $('#showErr18').show();
                var refInterval = window.setInterval(function () {
                    $('#showErr18').hide();
                }, 4000);
            }
            if (pass == null || pass == "" || pass.trim().length == 0 || reg1.test(pass) || reg2.test(pass) || reg7.test(pass3)) {
                $('#showErr19').show();
                var refInterval = window.setInterval(function () {
                    $('#showErr19').hide();
                }, 4000);
            }
        }
        return false;
    });
};
function fogotPass() {
    $('#fogotPassForm').submit(function () {
        var email = $('#forgotEmailTextId').val();
        var reg4 = new RegExp('`');
        var reg1 = new RegExp('\'');
        var reg2 = new RegExp('\"');
        var reg3 = new RegExp('%');
        var name3 = email.replace('*', '`');
        var name5 = email.replace('?', '`');
        // &&!reg1.test(email)&&!reg2.test(email)&&!reg4.test(email)&&!reg4.test(name3)&&!reg4.test(name5)
        if (email != null && email != '' && email.trim().length != 0 && !reg1.test(email) && !reg2.test(email) && !reg4.test(email) && !reg4.test(name3) && !reg4.test(name5) && !reg3.test(email)) {
            $.ajax({
                type: 'POST',
                url: $(this).attr('action'),
                dataType: 'html',
                data: 'email=' + email,
                success: function (data) {
                    var checkMails = data;
                    var ch = checkMails.trim();
                    if (checkMails.trim().length != 0) {

                        if (ch == 'Gmail not found.Please create account !') {
                            $('#showErr30').html(data);
                            $('#showErr30').show();
                            var refInterval = window.setInterval(function () {
                                $('#showErr30').hide();
                                // window.location.href = "login.jsp";
                            }, 4000);
                        }
                        else if (ch == 'Please insert correctly email !') {
                            $('#showErr30').html(data);
                            $('#showErr30').show();
                            var refInterval = window.setInterval(function () {
                                $('#showErr30').hide();
                                // window.location.href = "login.jsp";
                            }, 4000);
                        }
                        else if (ch == 'Send new password to you mail !') {
                            $('#showErr31').html(data);
                            $('#showErr31').show();
                            var refInterval = window.setInterval(function () {
                                $('#showErr31').hide();
                                window.location.href = "news.jsp";
                            }, 4000);
                        }

                    }
                }
            });
        }
        else {
            $('#showErr27').show();
            var refInterval = window.setInterval(function () {
                $('#showErr27').hide();
            }, 4000);
        }


        return false;
    });
};
//login
//function login() {
    // $('#checkedLoginForm').submit(function () {
    //     var email = $('#loginTextId').val();
    //     var password = $('#loginpaswordId').val();
    //
    //     var name2 = email.replace('^', '#');
    //     var name3 = email.replace('*', '#');
    //     var name4 = email.replace('+', '#');
    //     var name5 = email.replace('?', '#');
    //     var name6 = email.replace('|', '#');
    //     var name7 = email.replace('\\', '#');
    //     var password3 = password.replace('*', '#');
    //
    //     var reg1 = new RegExp('\'');
    //     var reg2 = new RegExp('\"');
    //     var reg3 = new RegExp('\\[');
    //     var reg4 = new RegExp(']');
    //     var reg5 = new RegExp(';');
    //     var reg6 = new RegExp(':');
    //     var reg7 = new RegExp('#');
    //     var reg8 = new RegExp('!');
    //     var reg9 = new RegExp(',');
    //     var reg10 = new RegExp('`');
    //     var reg11 = new RegExp('~');
    //     var reg12 = new RegExp('%');
    //
    //     if (email != null && email != '' && email.trim().length != 0 && !reg1.test(email) && !reg2.test(email) && !reg3.test(email) && !reg4.test(email) && !reg5.test(email) && !reg6.test(email) && !reg7.test(email) && !reg8.test(email) && !reg9.test(email) && !reg10.test(email) && !reg7.test(name2) && !reg7.test(name3) && !reg7.test(name4)
    //         && !reg7.test(name5) && !reg7.test(name6) && !reg7.test(name7) && password != null && password != '' && password.trim().length != 0 && !reg1.test(password) && !reg2.test(password) && !reg7.test(password3)) {
    //
    //
    //         $.ajax({
    //             type: 'POST',
    //             url: $(this).attr('action'),
    //             dataType: 'html',
    //             data: 'email=' + email+'&password='+password,
    //             success: function (data) {
    //                 var checkMails=data;
    //                 var ch=checkMails.trim();
    //                 if(checkMails.trim().length!=0){
    //                     if (ch=='Please insert correctly email !'||ch=='Acount not found !'){
    //                         alert('salam')
    //                         $('#showErr15').html(data);
    //                         $('#showErr15').show();
    //                         var refInterval = window.setInterval(function () {
    //                             $('#showErr15').hide();
    //                             window.location.href = "login.jsp";
    //                         }, 4000);
    //                     }
    //                     else{
    //                         window.location.href = "news.jsp";
    //                     }
    //                 }
    //             }
    //         });
    //
    //     }
    //     else {
    //         alert('olmadi')
    //     }
    //     return false;
    // });
//};        
//end login
function picture() {
    $.ajax({
        url:'ust?action=getProductPicture',
        type:'GET',
        data:'id='+0,
        dataType:'html',
        success:function (data) {
            $('#showProductPicture').html(data);
        }
    })
};
function customerOrdered(index,price,bonVal) {
    globId=index;
    globPrice=price;
    globBonVal=bonVal;
    var usId=$('#US').val();
    if (typeof usId == "undefined"){
        $('.newsHref').show();
        $('.newsHref').click(function () {
            $('.newsHref').hide();
        });
    }
    else{
        $.ajax({
            type: 'POST',
            url:'ust?action=checkedOdrHave',
            data:'id='+usId,
            dataType:'html',
            success:function (data) {
                var Dattr=data;
                if (Dattr.trim().length == 0){
                   
                    $('#orderedUserModal').load('views/orderedUser.jsp',function () {
                        $('#orderedUserModal').modal('show');
                    });
                }else{
                    $('#orderedCheckedUserModal').html(Dattr);
                    $('#orderedCheckedUserModal').modal('show');
                }
            }
        });
    }
};
function customerOrderedRegistr() {
    var prId=globId;
    var price=globPrice;
    var BonVal=globBonVal;
    var usId=$('#US').val();
    var usEmail=$('#US1').val();
    var address=$('#userAddress').val();
    var lastDateOfDelivery=$('#lastDateOfDelivery').val();
    var mobile=$('#userMobile').val();
    var additionalMobile=$('#userAdditionalMobile').val();
    var orderCount=$('#orderCount').val();

    var reg1 = new RegExp('`');
    var reg2 = new RegExp('\'');
    var reg3 = new RegExp('\"');

    if (!reg1.test(address)&&!reg2.test(address)&&!reg3.test(address)&&!reg1.test(mobile)&&!reg2.test(mobile)&&!reg3.test(mobile)
    &&!reg1.test(additionalMobile)&&!reg2.test(additionalMobile)&&!reg3.test(additionalMobile)){
        $.ajax({
            type: 'POST',
            url: 'ust?action=orderedUserAdd',
            dataType: 'html',
            data: 'prId=' + prId + '&usId=' + usId + '&usEmail=' + usEmail + '&address=' + address+'&lastDateOfDelivery=' + lastDateOfDelivery + 
            '&mobile=' + mobile + '&additionalMobile='+additionalMobile+'&orderCount='+orderCount+ '&price='+price+ '&BonVal='+BonVal,
            success: function (data) {
                    $('#showErr37').show();
                    var refInterval = window.setInterval(function () {
                        $('#showErr37').hide();
                        window.location.href = "news.jsp";
                    }, 4000);
            }
        });
    }
    else{
        $('#showErr36').show();
        var refInterval = window.setInterval(function () {
            $('#showErr36').hide();
        }, 4000);
    }
};
function showPicture(picIndex) {
    $.ajax({
        type:'POST',
        url:'ust?action=showPictureModal',
        dataType:'html',
        data:'prid='+picIndex,
        success:function (data) {
            $('#showPictureModal').html(data);
            $('#showPictureModal').modal('show');
        }
    })
}
function conTact() {
    $('#contactForm').submit(function () {
        var name=$('#contactName').val();
        var email=$('#contactEmail').val();
        var subject=$('#contactSubject').val();
        var text=$('#contactMessage').val();
        var reg2 = new RegExp('&');
        if (!reg2.test(text)){
            $.ajax({
                type:'POST',
                url: $(this).attr('action'),
                data:'name='+name+'&email='+email+'&subject='+subject+'&text='+text,
                dataType:'html',
                success:function (data) {
                    if(data.trim().length==0){
                        $('#contactsh1').show();
                        $('#contactsh1').html('Please write the correctly email')
                        $('#contactemail').val('');
                        var refInterval = window.setInterval(function () {
                            $('#contactsh1').hide();
                        }, 4000);""
                    }else{
                        $('#contactsh').show();
                        $('#contactsh').html('Thank for send mail us.Soon reply your mail')
                        var refInterval = window.setInterval(function () {
                            $('#contactsh').hide();
                            window.location.href = "news.jsp";
                        }, 4000);
                    }
                }
            });
        }else{
            $('#contactsh').show();
            $('#contactsh').html('Please don\'t use this character (&)')
            var refInterval = window.setInterval(function () {
                $('#contactsh').hide();
            }, 4000);

        }
        return false;
    });
   
    
};
function pictureIndexJsp() {
    $.ajax({
        url:'ust?action=getProductPicture',
        type:'GET',
        data:'id='+1,
        dataType:'html',
        success:function (data) {
            $('#indexjspShowProduct').html(data);
            $('#indexjspShowProduct').show();
        }
    })
};
function productLibrary() {
    $.ajax({
        url:'ust?action=productLibrary',
        type:'GET',
        dataType:'html',
        success:function (data) {
            $('#productLibrary').html(data);
        }
    });
};
function insertCheckBox() {
    $.ajax({
        url:'ust?action=insertCheckBox',
        type:'GET',
        dataType:'html',
        success:function (data) {
            $('#advProductActiveSearchUser').html(data);
        }
    });
};
function advUserProductSearch() {
    var name=$('#advProductNameIdUser').val();
    var minPrice=$('#advPriceMinUser').val();
    var maxPrice=$('#advPriceMaxUser').val();
    var minBonVal=$('#advBonucValueMinUser').val();
    var maxBonVal=$('#advBonucValueMaxUser').val();
    var category=$('#advProductActiveSearchUser').val();
    $.ajax({
        url:'ust?action=advUserProductSearch',
        type:'POST',
        data:'name='+name+'&minPrice='+minPrice+'&maxPrice='+maxPrice+'&minBon='+minBonVal+'&maxBon='+maxBonVal+'&category='+category,
        dataType:'html',
        success:function (data) {
            $('#advShowProduct').html(data);
            $('#advShowProduct').show();
            $('#indexjspShowProduct').hide()
        }
    });
};