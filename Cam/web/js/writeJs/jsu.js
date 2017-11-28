function allJs() {
    $('#contactForm').submit(function () {
        var name=$('#name').val();
        var email=$('#email').val();
        var text=$('#comments').val();
        $.ajax({
            url:'cnt?action=checkedContact',
            type:'post',
            data:'name='+name+'&email='+email+'&text='+text,
            dataType:'text',
            success:function (data) {
                var ch=data;
                if (ch==''||ch.trim()==0){
                    $('#responseMail').html('Biz sizinle qisa muddetde elaqe saxlayacagiq')
                }else{
                    $('#responseMail').css('color', 'red');
                    $('#responseMail').html('Sebekeyle elaqedar prolem yarandi yeniden cehd edin')
                }
                var refInterval = window.setInterval(function () {
                    window.location.href = "index.jsp";
                }, 4000);
            }
        });
        return false;
    });
}

function surmeli() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+2,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function perdeli() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+3,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}

function shushelenmeSabit() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+4,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function daxiliarakesme() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+5,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}

function silikoncebhe() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+6,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}

function qapaqlicebhe() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+7,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}

function monetsistem() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+8,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function izosistem() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+9,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}

function aluwood() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+10,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}

function ytavan() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+11,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function camtavan() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+12,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}

function tent() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+13,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function skylight() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+14,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function polikarbonat() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+15,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function membran() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+16,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function hovuzlar() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+17,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function alakmahaccar() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+18,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function pasakmahaccar() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+19,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function asqili() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+20,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function pompali() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+21,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function fotoselli() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+22,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function petleliqapilar() {
    $.ajax({
        url:'cnt?action=showourproducts',
        type:'post',
        data:'id='+23,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}
function portfoliolist(pass) {
    $.ajax({
        url:'cnt?action=showportfoliolist',
        type:'post',
        data:'id='+pass,
        dataType:'html',
        success:function (data) {
            $('#photoGallery-container').html(data);
        }
    });
}