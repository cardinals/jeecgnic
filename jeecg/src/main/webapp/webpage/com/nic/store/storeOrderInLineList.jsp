<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<script type="text/javascript">
    $('#addStoreOrderLineBtn').linkbutton({
        iconCls: 'icon-add'
    });
    $('#delStoreOrderLineBtn').linkbutton({
        iconCls: 'icon-remove'
    });
    $('#addStoreOrderLineBtn').bind('click', function () {
        var tr = $("#add_storeOrderLine_table_template tr").clone();
        $("#add_storeOrderLine_table").append(tr);
        resetTrNum('add_storeOrderLine_table');
        return false;
    });
    $('#delStoreOrderLineBtn').bind('click', function () {
        $("#add_storeOrderLine_table").find("input:checked").parent().parent().remove();
        resetTrNum('add_storeOrderLine_table');
        return false;
    });
    $(document).ready(function () {
        $(".datagrid-toolbar").parent().css("width", "auto");
        if (location.href.indexOf("load=detail") != -1) {
            $(":input").attr("disabled", "true");
            $(".datagrid-toolbar").hide();
        }
    });
</script>
<div style="padding: 3px; height: 25px;width:auto;" class="datagrid-toolbar">
    <a id="addStoreOrderLineBtn" href="#">添加</a> <a id="delStoreOrderLineBtn" href="#">删除</a>
</div>
<table border="0" cellpadding="2" cellspacing="0" id="jfromOrderLine_table">
    <tr bgcolor="#E6E6E6">
        <td align="center" bgcolor="#EEEEEE" style="width: 25px;">序号</td>
        <td align="center" bgcolor="#EEEEEE" style="width: 25px;">操作</td>
        <td align="center" bgcolor="#EEEEEE" style="width: 126px;">
            设备名称
        </td>
        <td align="center" bgcolor="#EEEEEE" style="width: 110px;">
            单位
        </td>
        <td align="center" bgcolor="#EEEEEE" style="width: 110px;">
            型号
        </td>
        <td align="center" bgcolor="#EEEEEE" style="width: 110px;">
            规格
        </td>
        <td align="center" bgcolor="#EEEEEE" style="width: 110px;">
            入库数
        </td>
    </tr>
    <tbody id="add_storeOrderLine_table">
    <c:if test="${fn:length(orderLines)  <= 0 }">
        <tr>
            <td align="center">
                <div style="width: 25px;" name="xh">1</div>
            </td>
            <td align="center"><input style="width:20px;" type="checkbox" name="ck"/></td>
                <%--<input name="orderLines[0].id" type="hidden"/>--%>
            <td align="center">
                <input id="matnr[0]" name="orderLines[0].matnr" type="hidden" datatype="*"/>
                <input id="maktx[0]" name="orderLines[0].maktx" type="text" class="inputxt"
                       placeholder="点击选择设备" onclick="openMaraSelect(this);"
                       style="width:120px;">
                <label class="Validform_label" style="display: none;">设备名称</label>
            </td>
            <td align="center">
                <input id="unit[0]" name="orderLines[0].unit" type="text" class="inputxt" style="width:110px;"
                       readonly="readonly">
                <label class="Validform_label" style="display: none;">单位</label>
            </td>
            <td align="center">
                <input id="model[0]" name="orderLines[0].model" type="text" class="inputxt" style="width:110px;"
                       readonly="readonly">
                <label class="Validform_label" style="display: none;">型号</label>
            </td>
            <td align="center">
                <input id="norms[0]" name="orderLines[0].norms" type="text" class="inputxt" style="width:110px;"
                       readonly="readonly">
                <label class="Validform_label" style="display: none;">规格</label>
            </td>
            <td align="center">
                <input id="num[0]" name="orderLines[0].num" type="text" class="inputxt" style="width:110px;"
                       datatype="n">
                <label class="Validform_label" style="display: none;">入库数</label>
            </td>
        </tr>
    </c:if>
    <c:if test="${fn:length(orderLines)  > 0 }">
        <c:forEach items="${orderLines}" var="poVal" varStatus="stuts">
            <tr>
                <td align="center">
                    <div style="width: 25px;" name="xh">${stuts.index+1 }</div>
                </td>
                <td align="center"><input style="width:20px;" type="checkbox" name="ck"/></td>
                    <%--<input name="orderLines[${stuts.index }].id" type="hidden" value="${poVal.id }"/>
                    <input name="orderLines[${stuts.index }].orderNo" type="hidden" value="${poVal.orderNo }"/>--%>
                <td align="center">
                    <input id="matnr[${stuts.index }]" name="orderLines[${stuts.index }].matnr" type="hidden"
                           datatype="*" value="${poVal.matnr }"/>
                    <input id="maktx[${stuts.index }]" name="orderLines[${stuts.index }].maktx" type="text"
                           placeholder="点击选择设备" onclick="openMaraSelect(this);"
                           class="inputxt" style="width:120px;" value="${poVal.maktx }"/>
                    <label class="Validform_label" style="display: none;">设备名称</label>
                </td>
                <td align="center">
                    <input id="unit[${stuts.index}]" name="orderLines[${stuts.index}].unit" type="text" class="inputxt"
                           style="width:110px;" readonly="readonly" value="${poVal.unit }">
                    <label class="Validform_label" style="display: none;">单位</label>
                </td>
                <td align="center">
                    <input id="model[${stuts.index}]" name="orderLines[${stuts.index}].model" type="text"
                           class="inputxt" style="width:110px;" readonly="readonly" value="${poVal.model}">
                    <label class="Validform_label" style="display: none;">型号</label>
                </td>
                <td align="center">
                    <input id="norms[${stuts.index}]" name="orderLines[${stuts.index}].norms" type="text"
                           class="inputxt" style="width:110px;" readonly="readonly" value="${poVal.norms }">
                    <label class="Validform_label" style="display: none;">规格</label>
                </td>
                <td align="center">
                    <input id="num[${stuts.index}]" name="orderLines[${stuts.index }].num" type="text" class="inputxt"
                           style="width:110px;" datatype="n" value="${poVal.num }"/>
                    <label class="Validform_label" style="display: none;">入库数</label>
                </td>
            </tr>
        </c:forEach>
    </c:if>
    </tbody>
</table>
<script>
    //选择设备信息
    function openMaraSelect(obj) {
        $.dialog.setting.zIndex = getzIndex();
        var id = $(obj).attr("id");
        $.dialog({
            content: 'url:maraController.do?maraSelectList&id=' + id,
            zIndex: getzIndex(),
            title: '设备信息列表',
            lock: true,
            width: '800px',
            height: '380px',
            opacity: 0.4,
            button: [{
                name: '确定',
                callback: callbackMaraSelect,
                focus: true
            },
                {
                    name: '取消',
                    callback: function () {
                    }
                }]
        }).zindex();
    }

    function callbackMaraSelect() {
        var iframe = this.iframe.contentWindow;
        var rowsData = iframe.$("#maraSelectList").datagrid('getSelections');
        if (rowsData.length == 0) {
            iframe.tip("请选择需要添加的设备！");
            return false;
        } else if (rowsData.length > 1) {
            iframe.tip("只能选择一条设备信息进行添加！");
            return false;
        } else {
            var rdata = rowsData[0];
            var hid = iframe.$("#hid").val();
            var s = hid.indexOf("[");
            var e = hid.indexOf("]");
            var indexId = hid.substring(s + 1, e);
            $("#matnr\\[" + indexId + "\\]").val(rdata.matnr);
            $("#maktx\\[" + indexId + "\\]").val(rdata.maktx);
            $("#unit\\[" + indexId + "\\]").val(rdata.unit);
            $("#model\\[" + indexId + "\\]").val(rdata.model);
            $("#norms\\[" + indexId + "\\]").val(rdata.norms);
        }
    }
</script>
