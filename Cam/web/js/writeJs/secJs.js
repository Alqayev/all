function logPan(){
  $('#secForm').submit(function () {
      var name=$('#checkedName').val();
      var pass=$('#checkedPass').val();


      var name1 = name.replace('^', '#');
      var name2 = name.replace('*', '#');
      var name3 = name.replace('+', '#');
      var name4 = name.replace('.', '#');
      var name5 = name.replace('?', '#');
      var name6 = name.replace('|', '#');
      var name7 = name.replace('\\', '#');

      var pass1 = name.replace('^', '#');
      var pass2 = name.replace('*', '#');
      var pass3 = name.replace('+', '#');
      var pass4 = name.replace('.', '#');
      var pass5 = name.replace('?', '#');
      var pass6 = name.replace('|', '#');
      var pass7 = name.replace('\\', '#');

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
      if (name != null && name != '' && name.trim().length != 0 && !reg1.test(name) && !reg2.test(name) && !reg3.test(name) && !reg4.test(name) && !reg5.test(name)
          && !reg6.test(name) && !reg7.test(name) && !reg8.test(name) && !reg9.test(name) && !reg10.test(name)&& !reg11.test(name)&& !reg12.test(name)
          && !reg7.test(name1) && !reg7.test(name2) && !reg7.test(name3) && !reg7.test(name4) && !reg7.test(name5) && !reg7.test(name6)&& !reg7.test(name7)
          && pass != null && pass != '' && pass.trim().length != 0 && !reg1.test(pass) && !reg2.test(pass) && !reg3.test(pass) && !reg4.test(pass) && !reg5.test(pass)
          && !reg6.test(pass) && !reg7.test(pass) && !reg8.test(pass) && !reg9.test(pass) && !reg10.test(pass)&& !reg11.test(pass) && !reg12.test(pass)
          && !reg7.test(pass1) && !reg7.test(pass2) && !reg7.test(pass3) && !reg7.test(pass4) && !reg7.test(pass5) && !reg7.test(pass6)&& !reg7.test(pass7))
          {
              $.ajax({
                  url:'../../ch',
                  type:'POST',
                  data:'name='+name+'&pass='+pass,
                  dataType:'html',
                  success:function (data) {
                      alert('dom')
                      // var refInterval = window.setInterval(function () {
                      //     window.location.href = "index.jsp";
                      // }, 4000);
                  }
              });
      }else {
          alert('Bad simvol')
      }
      return false;
  });
};
function chpar() {
    $('#parameterPng').click(function () {
        $('#pardiv').load("views/modal.jsp",function () {
            $('#pardiv').modal('show');
        });
    });
    $('#parameterourworkPng').click(function () {
        $('#ourworkdiv').load("views/ourwork.jsp",function () {
            $('#ourworkdiv').modal('show');
        });
    });
}