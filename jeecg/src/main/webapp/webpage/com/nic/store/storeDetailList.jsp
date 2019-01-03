<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<t:datagrid name="storeDetailList" title="设备库存信息"
            actionUrl="storeDetailController.do?datagrid" fit="true" fitColumns="true"
            idField="id" queryMode="group" checkbox="false">
    <t:dgCol title="ID" field="id" hidden="true"></t:dgCol>
    <t:dgCol title="设备类型" sortable="false" field="maraType" query="true" dictionary="mara_type,code,name"
             width="50"></t:dgCol>
    <t:dgCol title="设备编码" sortable="false" field="matnr" query="true" width="60"></t:dgCol>
    <t:dgCol title="设备名称" sortable="false" field="maktx" query="true" width="120"></t:dgCol>
    <t:dgCol title="单位" sortable="false" field="unit" width="30"></t:dgCol>
    <t:dgCol title="型号" sortable="false" field="model" width="50"></t:dgCol>
    <t:dgCol title="规格" sortable="false" field="norms" width="50"></t:dgCol>
    <t:dgCol title="库存数量" sortable="false" field="totalNum" width="50"></t:dgCol>
    <t:dgCol title="仓库编码" sortable="false" field="storeCode" query="true" hidden="true"
             dictionary="store_info,store_code,store_name"></t:dgCol>
    <t:dgCol title="仓库名称" sortable="false" field="storeName" width="80"></t:dgCol>
    <t:dgCol title="仓库地址" sortable="false" field="address" width="140"></t:dgCol>
</t:datagrid>
<script>
</script>