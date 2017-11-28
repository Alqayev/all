<%--
  Created by IntelliJ IDEA.
  User: TALEH
  Date: 19.06.2016
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%--B.PRIMARY_ID,B.BONUCE_NAME,B.BONUCE_QUONTITY,B.OPEN_BONUCE_DATE,B.ACTIVE--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--  P.ID,P.NAME,P.PICTURE,P.PRICE,P.BONUCE_VALUE,P.IMPORTED_DATE,P.ACTIVE--%>

<script>
    $(function() {
        $( "#EditBonOpDateTextId" ).datepicker({
            changeMonth: true,
            changeYear: true
        });
        $('#updateBonuceBtn').click(function () {
            updateBonuce();
        })
    });
</script>
<%--Name : <input type="text" class="form-control" id="exampleInputName2" placeholder="Bonuce Name:" style="width: 50%">--%>

<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <h4 class="modal-title">Modal title</h4>
        </div>
        <div class="modal-body" id="bonuceModalDivContent">


            <div class="form-inline">
                <div class="bonucClass">Name : </div><input type="text" class="form-control"  id="EditBonuceNameTextId" placeholder="Bonuce Name:" value="${editBonuceList.bonuceName}" style="width: 50%;"/><p></p>
                <div class="bonucClass">Bonuce quontity:</div> <input type="text" class="form-control"  id="EditBonQuontityTextId" placeholder="Bonuce quontity:" value="${editBonuceList.bonuceQuontity}" style="width: 50%;"/><p></p>
                <div class="bonucClass">Bonuce bonuce open date:</div><input type="text" class="form-control"  id="EditBonOpDateTextId" placeholder="Bonuce bonuce open date:" value="${editBonuceList.bonuceOpenDate}" style="width: 50%;"><p></p>
                <div style="display: none"><input type="text" id="defoultBonuceDay" value="${editBonuceList.bonuceOpenDate}" > </div>
                <div style="display: none"><input type="text" id="bonuceActiveId" value="${editBonuceList.bonuceActive}" ></div>
                <div class="bonucClass" >Active :</div>
                <select class="form-control"  id="bonuceActiveTextId" style="width: 50%;"><p></p>
                    <option value="2"> Choose tasks </option>
                    <option value="0"> Ignore User </option>
                    <option value="1"> Active user </option>
                </select>
            </div>



        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" id="updateBonuceBtn" class="btn btn-primary">Save changes
            </button>
        </div>
    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->


<%--<div style="display: inline-block" class="form-control"> Bonuce Name: </div>  <input type="text" class="edit-list"  id="EditBonuceNameTextId" value="${editBonuceList.bonuceName}"><p></p>--%>
<%--<div style="display: inline-block" class="form-control"> Bonuce quontity: </div>  <input type="text" class="edit-list"  id="EditBonQuontityTextId" value="${editBonuceList.bonuceQuontity}"><p></p>--%>
<%--<div style="display: inline-block" class="form-control"> Bonuce open date: </div>  <input type="text" class="edit-list"  id="EditBonOpDateTextId" value="${editBonuceList.bonuceOpenDate}"><p></p>--%>
<%--<div style="display: none"><input type="text" id="defoultBonuceDay" value="${editBonuceList.bonuceOpenDate}"></div>--%>
<%--<div style="display: none"><input type="text" id="bonuceActiveId" value="${editBonuceList.bonuceActive}"></div>--%>
<%--<div style="display: inline-block" class="form-control">Active : </div>--%>
<%--<select class="edit-list"  id="bonuceActiveTextId"><p></p>--%>
    <%--<option value="2"> Choose tasks </option>--%>
    <%--<option value="0"> Ignore User </option>--%>
    <%--<option value="1"> Active user </option>--%>
<%--</select>--%>
