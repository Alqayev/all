<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 23.06.2016
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    $(function() {

        $('#sendMailCustomersButton').click(function (data) {
            var id=$('#inputScreet').val();
            $('#sendMailFormFiled').submit();
        });

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
        <div class="modal-body" >

            <div class="form-inline">
                <form action="sm?action=sendMailCustomer" onreset="" method="post" enctype="multipart/form-data" id="sendMailFormFiled">
                <input id="inputScreet" style="display: none" type="text" name="inputScreetName" >
                <div style="display: inline-block" class="bonucClass"> Subject : </div> <input id="sendMailSubId" type="text" class="form-control" placeholder="Subject" autocomplete="off" style="width: 50%;" name="senMailTextSubject" ><p></p>
                <div style="display: inline-block" class="bonucClass"> Text : </div> <textarea class="form-control" name="senMailTextArea" placeholder="Insert text"  style="width: 50%;"  rows="5" id="comment"></textarea>
                <div style="display: inline-block;height: 27px" class="bonucClass" >Choose file: </div>   <input  type="file"  style="width: 21%;height: 27px" name="filename">
                <input type="submit" value="Update picture" style="display: none">
                </form>

            </div>
        </div>

        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" id="sendMailCustomersButton"  class="btn btn-primary">Send mail
            </button>
        </div>
    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
