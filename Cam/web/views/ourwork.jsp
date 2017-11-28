<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    $('#save').click(function () {
        var sup=$('#superid').val();
        if (sup!=0){
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

            <form  action="cnt?action=insertOurworkForm" method="post" enctype="multipart/form-data" id="insertPicForm">
                Super Category <select class="form-control" style="width: 50%;" id="superid" name="supername">
                <option value="0"> Choose category</option>
                <option value="1"> Kafe ve restoranlar</option>
                <option value="2"> Patio ve hovuzlar</option>
                <option value="3"> Qis bagcalari</option>
                <option value="4"> Qarajlar</option>
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