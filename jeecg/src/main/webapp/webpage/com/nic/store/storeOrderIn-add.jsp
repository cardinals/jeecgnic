<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>订单列表</title>
    <t:base type="jquery,easyui,tools,DatePicker"></t:base>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#tt').tabs({
                onSelect: function (title) {
                    $('#tt .panel-body').css('width', 'auto');
                }
            });
            $(".tabs-wrap").css('width', '100%');
        });
    </script>
</head>
<body style="overflow-x: hidden;">
<t:formvalid formid="formobj" dialog="true" usePlugin="password" beforeSubmit="checkLines"
             layout="table" tiptype="1" action="storeOrderController.do?save">
    <%--orderType为0，表示是入库单--%>
    <input id="orderType" name="orderType" type="hidden" value="0"/>
    <input id="id" name="id" type="hidden" value="${storeOrder.id }"/>
    <table cellpadding="0" cellspacing="1" class="formtable">
        <tr>
            <td align="right">
                <label class="Validform_label">单据号:</label>
            </td>
            <td class="value">
                <c:if test="${storeOrder.id!=null }">
                    <input id="orderNo" class="inputxt" name="orderNo"
                           value="${storeOrder.orderNo }" disabled="disabled"/>
                </c:if>
                <c:if test="${storeOrder.id==null }">
                    <input id="orderNo" class="inputxt" name="orderNo" validType="store_order,order_no,id"
                           value="${storeOrder.orderNo }" maxlength="20" datatype="s2-20"/>
                    <span class="Validform_checktip"></span>
                    <label class="Validform_label" style="display: none;">单据号</label>
                </c:if>

            </td>
            <td align="right">
                <label class="Validform_label">仓库:</label>
            </td>
            <td class="value">
                <t:dictSelect field="storeCode" type="list" datatype="*" id="storeCode"
                              dictTable="store_info" dictField="store_code" dictText="store_name"
                              defaultVal="${storeOrder.storeCode }"
                              hasLabel="false" title="仓库"></t:dictSelect>
                <label class="Validform_label" style="display: none;">请选择仓库</label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <label class="Validform_label">入库人:</label>
            </td>
            <td class="value">
                <c:if test="${storeOrder.id==null }">
                    <input id="operatorName" class="inputxt" name="operatorName"
                           value="${username}" datatype="*"/>
                </c:if>
                <c:if test="${storeOrder.id!=null }">
                    <input id="operatorName" class="inputxt" name="operatorName"
                           value="${storeOrder.operatorName }" datatype="*"/>
                </c:if>
                <span class="Validform_checktip"></span>
                <label class="Validform_label" style="display: none;">入库人</label>
            </td>
            <td align="right">
                <label class="Validform_label">入库时间:</label>
            </td>
            <td class="value">
                <input id="operatorTime" name="operatorTime" type="text" style="width: 150px"
                       class="Wdate" onclick="WdatePicker()" datatype="*" value="${storeOrder.operatorTime }">
                <label class="Validform_label" style="display: none;">入库时间</label>
            </td>
        </tr>
    </table>
    <div style="width: auto;height: 200px;">
            <%-- 增加一个div，用于调节页面大小，否则默认太小 --%>
        <div style="width:800px;height:1px;"></div>
        <t:tabs id="tt" iframe="false" tabPosition="top" fit="false">
            <t:tab href="storeOrderController.do?storeOrderInLineList&orderNo=${storeOrder.orderNo}" icon="icon-search"
                   title="设备信息" id="storeOrderLine"></t:tab>
        </t:tabs>
    </div>
</t:formvalid>
<!-- 添加 附表明细 模版 -->
<table style="display:none">
    <tbody id="add_storeOrderLine_table_template">
    <tr>
        <td align="center">
            <div style="width: 25px;" name="xh"></div>
        </td>
        <td align="center"><input style="width:20px;" type="checkbox" name="ck"/></td>
        <td align="center">
            <input id="matnr[#index#]" name="orderLines[#index#].matnr" type="hidden" datatype="*"/>
            <input id="maktx[#index#]" name="orderLines[#index#].maktx" type="text" class="inputxt"
                   style="width:120px;" placeholder="点击选择设备" onclick="openMaraSelect(this);"/>
            <label class="Validform_label" style="display: none;">设备名称</label>
        </td>
        <td align="center">
            <input id="unit[#index#]" name="orderLines[#index#].unit" type="text" class="inputxt" style="width:110px;"
                   readonly="readonly">
            <label class="Validform_label" style="display: none;">单位</label>
        </td>
        <td align="center">
            <input id="model[#index#]" name="orderLines[#index#].model" type="text" class="inputxt" style="width:110px;"
                   readonly="readonly">
            <label class="Validform_label" style="display: none;">型号</label>
        </td>
        <td align="center">
            <input id="norms[#index#]" name="orderLines[#index#].norms" type="text" class="inputxt" style="width:110px;"
                   readonly="readonly">
            <label class="Validform_label" style="display: none;">规格</label>
        </td>
        <td align="center">
            <input id="num[#index#]" name="orderLines[#index#].num" type="text" class="inputxt"
                   style="width:110px;" datatype="numrange" min="0" max="1000000"/>
            <label class="Validform_label" style="display: none;">数量</label>
        </td>
    </tr>
    </tbody>
</table>
</body>
<script src="webpage/com/nic/store/storeOrder.js"></script>
<script>
    function checkLines() {
        var len = $("#add_storeOrderLine_table").find(">tr").length;
        if (len == 0) {
            tip("请添加设备信息！");
            return false;
        }
    }
</script>
