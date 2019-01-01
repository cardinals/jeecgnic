<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>

<div>
    <input id="hid" name="hid" type="hidden" value="${hid}"/>
</div>
<t:datagrid name="maraSelectList" title="设备信息列表" actionUrl="maraController.do?datagrid" fit="true" fitColumns="true"
            idField="id" queryMode="group" checkbox="true" singleSelect="true">
    <t:dgCol title="ID" field="id" hidden="true"></t:dgCol>
    <t:dgCol title="设备类型" sortable="false" field="maraType" query="true" dictionary="mara_type,code,name"
             width="60"></t:dgCol>
    <t:dgCol title="设备编码" sortable="false" field="matnr" width="80"></t:dgCol>
    <t:dgCol title="设备名称" sortable="false" field="maktx" query="true" width="150"></t:dgCol>
    <t:dgCol title="单位" sortable="false" field="unit" width="60"></t:dgCol>
    <t:dgCol title="型号" sortable="false" field="model" width="100"></t:dgCol>
    <t:dgCol title="规格" sortable="false" field="norms" width="100"></t:dgCol>
</t:datagrid>
<script>
    //删除角色
    function delMara(id) {
        var tabName = 'maraList';
        var url = 'maraController.do?delMara&id=' + id;
        $.dialog.confirm('<t:mutiLang langKey="confirm.delete.this.record"/>', function () {
            doSubmit(url, tabName);
        }, function () {
        });
    }
</script>