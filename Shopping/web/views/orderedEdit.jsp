<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 22.06.2016
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    $(function() {

        $('#updateOrderdActiveInfoId').click(function () {
            updateOrderdActive();
            getOrderedList();
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
        <div class="modal-body" id="customerModalDiv">

            <div class="form-inline">
                <div style="display: inline-block" class="bonucClass">Active : </div>
                <select class="form-control"  style="width: 50%;" id="orderedActiveTextId"><p></p>
                    <option value="2"> Choose tasks </option>
                    <option value="0"> Ignore User </option>
                    <option value="1"> Active user </option>
                </select>
            </div>
        </div>

        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" id="updateOrderdActiveInfoId" onclick="" class="btn btn-primary">Save changes
            </button>
        </div>
    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
