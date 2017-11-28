<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    $('#save').click(function () {
        var sup=$('#superid').val();
        var subid=$('#subid').val();
        var subsubid=$('#subsubid').val();
        if (sup!=0&&subid!=0&&subsubid!=0){
            $('#insertPicForm').submit();
        }
        else{
            $('#chsecVal').html('hamisini secin');
        }
    });
</script>
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">Modal title</h4>
        </div>
        <div class="modal-body">

        <form  action="cnt?action=insertPicForm" method="post" enctype="multipart/form-data" id="insertPicForm">
                Super Category <select class="form-control" style="width: 50%;" id="superid" name="supername">
                <option value="0"> Choose category</option>
                <option value="1">Elimizdeki Mehsullarimiz</option>
                <option value="2"> Islediklerimiz</option>
            </select><br>
                Teklif etdiklerimizin novleri <select class="form-control" style="width: 50%;" id="subid" name="subname">
                <option value="0"> Choose category</option>
                <option value="1">Cambalkon</option>
                <option value="2">Shushelenme</option>
                <option value="3">Fasad</option>
                <option value="4">Tavan</option>
                <option value="5"> Mahaccar</option>
                <option value="6"> Qapilar</option>
            </select>
                Teklif etdiklerimizin alt novleri <select class="form-control" style="width: 50%;" id="subsubid"
                                                          name="subsubname">
                <option value="0"> Choose category</option>
                <optgroup label="Cambalkon">
                    <option value="2">Surmeli</option>
                    <option value="3">perdeli</option>
                </optgroup>
                <optgroup label="Shushelenme">
                    <option value="4">Sabit shushelenme</option>
                    <option value="5"> Daxili arakesme</option>
                </optgroup>
                <optgroup label="Fasad">
                    <option value="6"> Slikon cebhe</option>
                    <option value="7"> Qapaqli cebhe</option>
                    <option value="8"> Monet sistem</option>
                    <option value="9"> Izo sistem</option>
                    <option value="10"> Aluwood</option>
                </optgroup>
                <optgroup label="Tavan">
                    <option value="11"> Yuvarlanan tavan</option>
                    <option value="12"> Cam Tavan</option>
                    <option value="13"> Tent</option>
                    <option value="14"> SkyLight</option>
                    <option value="15"> Polikarbonant damlar</option>
                    <option value="16"> Membran</option>
                    <option value="17"> Hovuzlar</option>
                </optgroup>
                <optgroup label="Mahaccar">
                    <option value="18"> alümin aksesuarlarla şüşə məhəccərlər</option>
                    <option value="19"> paslanmaz aksesuarlarla şüşə məhəccərlər</option>
                </optgroup>
                <optgroup label="Qapilar">
                    <option value="20"> Asqili</option>
                    <option value="21"> Pompali</option>
                    <option value="22"> Fotoselli</option>
                    <option value="23"> Petləli(menteşeli) qapılar</option>
                </optgroup>
            </select><br>
                <input type="file" name="filename">
                <input type="submit" value="Update picture" style="display: none" >
            </form>
            <h3 id="chsecVal" style="color: red"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="save">Save changes</button>
        </div>
    </div><!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
