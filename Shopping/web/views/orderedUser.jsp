<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
  $(function () {
      $('#savebtn').click(function () {
          customerOrderedRegistr();
      });
      $('#lastDateOfDelivery').datepicker({
          changeMonth: true,
          changeYear: true
      });
  });
</script>
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">Ordered </h3>
        </div>
        <div class="modal-body" id="">

            <div class="form-inline">
                <div style="display: inline-block" class="bonucClass"> Search address : </div>  <input type="text" class="form-control" style="width: 50%;" id="userAddress" >
                <div style="display: inline-block" class="bonucClass"> Last date of delivery : </div>  <input type="text" class="form-control" style="width: 50%;" id="lastDateOfDelivery" >
                <div style="display: inline-block" class="bonucClass"> Write mobile : </div>  <input type="text" class="form-control" style="width: 50%;" id="userMobile" >
                <div style="display: inline-block" class="bonucClass"> Additional mobile : </div>  <input type="text" class="form-control" style="width: 50%;" id="userAdditionalMobile">
                <div style="display: inline-block" class="bonucClass"> Order count : </div>  <input type="number" class="form-control" style="width: 50%;" id="orderCount">
                <h4 style="color: red;display: none" id="showErr36">Please don't use additional characters</h4>
                <h4 style="color: #2e6da4;display: none" id="showErr37">Thanks dear customer !!</h4>
            </div>
        </div>

        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button"  id="savebtn" class="btn btn-primary">Save changes</button>
        </div>
    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->

