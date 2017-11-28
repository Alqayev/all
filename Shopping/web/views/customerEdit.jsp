<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 19.06.2016
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--L.ID,L.NAME,L.SURNAME,L.EMAIL,L.LOGIN_DATE,L.TASK,L.ACTIVE--%>
<script>
    $(function() {
        $( "#customerEditLoginDateTextId" ).datepicker({
            changeMonth: true,
            changeYear: true
        });
        $('#updateCustomerInfoId').click(function () {
            updateCustomer();

//

        })
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
                <div style="display: inline-block" class="bonucClass"> LOGIN DATE: </div>  <input type="text" class="form-control"  style="width: 33%;" id="customerEditLoginDateTextId" value="${editCustomerList.logginDate}"><p></p>
                <div style="display: none"><input type="text" id="customerActiveId" value="${editCustomerList.active}"></div>
                <div style="display: none"><input type="text" id="customerTaskId" value="${editCustomerList.tasks}"></div>
                <div style="display: none"><input type="text" id="defoultDate" value="${editCustomerList.logginDate}"></div>
                <div style="display: inline-block" class="bonucClass"> TASK :</div>
                <select class="form-control" style="width: 50%;"  id="customerTaskTextId"><p></p>
                    <option value="2"> Choose tasks </option>
                    <option value="USER"> User </option>
                    <option value="ADMIN"> Admin </option>
                </select>
                <div style="display: inline-block" class="bonucClass">Active : </div>
                <select class="form-control"  style="width: 50%;" id="customerActiveTextId"><p></p>
                    <option value="2"> Choose tasks </option>
                    <option value="0"> Ignore User </option>
                    <option value="1"> Active user </option>
                </select>
            </div>
        </div>

        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" id="updateCustomerInfoId" onclick="" class="btn btn-primary">Save changes
            </button>
        </div>
    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
