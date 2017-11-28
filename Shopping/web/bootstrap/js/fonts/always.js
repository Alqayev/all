/**
 * Created by TALEH on 23.06.2016.
 */
//                               T H R E A D      A R E A
function alwaysRunning() {
    $.ajax({
        url:'th?action=alwaysRunning',
        type:'POST',
        dataType:'html',
        complete:function (data) {

        }
    });
};


function sendMailOldUsers() {
    // alert('sdfsdfsdf')
    $.ajax({
        url:'th?action=sendMailOldUsers',
        type:'POST',
        dataType:'html',
        success:function () {
            // alert('sdfsdf')
        }
    });
};

//                       E N D        T H R E A D      A R E A
