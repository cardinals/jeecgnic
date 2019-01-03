<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户信息</title>
    <t:base type="jquery,easyui,tools"></t:base>
</head>
<body>
<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table"
             action="storeMoveController.do?save">
    <input id="id" name="id" type="hidden" value="${storeMove.id }"/>
    <table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">单据号: </label>
            </td>
            <td class="value" width="10%">
                <input id="orderNo" class="inputxt" name="orderNo" value="${storeMove.orderNo }" datatype="*"/>
                <label class="Validform_checktip">请填写单据号</label>
            </td>
        </tr>
        <tr>
            <td align="right" width="25%" nowrap>
                <label class="Validform_label">转出仓: </label>
            </td>
            <td class="value" width="85%">
                <t:dictSelect field="storeFromCode" type="list" datatype="*" id="storeFromCode"
                              dictTable="store_info" dictField="store_code" dictText="store_name"
                              defaultVal="${storeMove.storeFromCode }"
                              hasLabel="false" title="仓库"></t:dictSelect>
                <label class="Validform_checktip">请选择转出仓</label>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">设备名称: </label>
            </td>
            <td class="value" width="10%">
                <input id="matnr" class="inputxt" name="matnr" value="${storeMove.matnr }"
                       datatype="*"/>
                <input id="maktx" class="inputxt" name="maktx" value="${storeMove.maktx }" readonly="readonly"
                       placeholder="点击选择设备" onclick="openMaraSelect(this);"/>
                <span class="Validform_checktip">请选择设备</span>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">单位: </label>
            </td>
            <td class="value" width="10%">
                <input id="unit" class="inputxt" name="unit" value="${storeMove.unit }" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">型号: </label>
            </td>
            <td class="value" width="10%">
                <input id="model" class="inputxt" name="model" value="${storeMove.model }" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">规格: </label>
            </td>
            <td class="value" width="10%">
                <input id="norms" class="inputxt" name="norms" value="${storeMove.norms }" readonly="readonly"/>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">转入仓: </label>
            </td>
            <td class="value" width="85%">
                <t:dictSelect field="storeToCode" type="list" datatype="*" id="storeToCode"
                              dictTable="store_info" dictField="store_code" dictText="store_name"
                              defaultVal="${storeMove.storeToCode }"
                              hasLabel="false" title="仓库"></t:dictSelect>
                <label class="Validform_checktip">请选择转入仓</label>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">转仓数量: </label>
            </td>
            <td class="value" width="10%">
                <input id="num" class="inputxt" name="num" value="${storeMove.num }"
                       datatype="numrange" min="0" max="1000000"/>
                <span class="Validform_checktip">填写转仓数量</span>
            </td>
        </tr>
    </table>
</t:formvalid>
</body>
<script>

    $(function () {
        $("#storeFromCode").change(function () {
            $("#matnr").val("");
            $("#maktx").val("");
            $("#unit").val("");
            $("#model").val("");
            $("#norms").val("");
            //清空转仓数
            $("#num").val("");
            $("#num").attr("max", "1000000");
        });
    });

    //选择设备信息
    function openMaraSelect(obj) {
        var storeCode = $("#storeFromCode").val();
        if (storeCode == "") {
            tip("请先选择转出仓！");
            return false;
        } else {
            $.dialog.setting.zIndex = getzIndex();
            var id = $(obj).attr("id");
            $.dialog({
                content: 'url:storeDetailController.do?selectStoreDetail&id=' + id + '&storeCode=' + storeCode,
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
    }

    function callbackMaraSelect() {
        var iframe = this.iframe.contentWindow;
        var rowsData = iframe.$("#selectStoreDetailList").datagrid('getSelections');
        if (rowsData.length == 0) {
            iframe.tip("请选择需要添加的设备！");
            return false;
        } else if (rowsData.length > 1) {
            iframe.tip("只能选择一条设备信息进行添加！");
            return false;
        } else {
            var rdata = rowsData[0];
            $("#matnr").val(rdata.matnr);
            $("#maktx").val(rdata.maktx);
            $("#unit").val(rdata.unit);
            $("#model").val(rdata.model);
            $("#norms").val(rdata.norms);
            $("#num").attr("max", rdata.totalNum);
        }
    }

</script>