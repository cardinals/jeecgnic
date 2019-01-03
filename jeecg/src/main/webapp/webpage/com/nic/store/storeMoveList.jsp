<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>

<t:datagrid name="storeMoveList" title="转仓订单" actionUrl="storeMoveController.do?datagrid" fit="true" fitColumns="true"
            idField="id" queryMode="group" checkbox="true">
    <t:dgCol title="ID" field="id" hidden="true"></t:dgCol>
    <t:dgCol title="单据号" sortable="false" field="orderNo" query="true" width="40"></t:dgCol>
    <t:dgCol title="转出仓编码" sortable="false" field="storeFromCode" hidden="true" width="80"
             dictionary="store_info,store_code,store_name" query="true"></t:dgCol>
    <t:dgCol title="转出仓" sortable="false" field="storeFromName" width="100"></t:dgCol>
    <t:dgCol title="设备编码" sortable="false" field="matnr" query="true" width="60"></t:dgCol>
    <t:dgCol title="设备名称" sortable="false" field="maktx" query="true" width="100"></t:dgCol>
    <t:dgCol title="单位" sortable="false" field="unit" width="30"></t:dgCol>
    <t:dgCol title="型号" sortable="false" field="model" width="50"></t:dgCol>
    <t:dgCol title="规格" sortable="false" field="norms" width="50"></t:dgCol>
    <t:dgCol title="转入仓编码" sortable="false" field="storeToCode" hidden="true" width="20"></t:dgCol>
    <t:dgCol title="转入仓" sortable="false" field="storeToName" width="100"></t:dgCol>
    <t:dgCol title="转仓数量" sortable="false" field="num" width="60"></t:dgCol>
    <t:dgToolBar title="录入" icon="icon-add" url="storeMoveController.do?addorupdate" funname="add"
                 height="350"></t:dgToolBar>
    <%--<t:dgToolBar title="查看" icon="icon-search" url="storeMoveController.do?addorupdate" funname="detail"
                 height="350"></t:dgToolBar>--%>
</t:datagrid>
<script>
</script>