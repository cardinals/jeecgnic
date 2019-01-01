<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>

<t:datagrid name="schoolAreaList" title="校区管理" actionUrl="schoolAreaController.do?datagrid" fit="true" fitColumns="true"
            idField="id" queryMode="group" checkbox="false">
    <t:dgCol title="ID" field="id" hidden="true"></t:dgCol>
    <t:dgCol title="校区编码" sortable="false" field="areaCode" query="true" width="50"></t:dgCol>
    <t:dgCol title="校区名称" sortable="false" field="areaName" query="true" width="100"></t:dgCol>
    <t:dgCol title="校区管理员" sortable="false" field="managers" width="200"></t:dgCol>
    <t:dgCol title="创建人" sortable="false" field="createName" width="60"></t:dgCol>
    <t:dgCol title="创建时间" sortable="false" field="createDate" width="80"></t:dgCol>
    <t:dgCol title="操作" field="opt" width="60"></t:dgCol>
    <t:dgFunOpt funname="delSchoolArea(id)" title="删除" urlclass="ace_button"
                urlfont="fa-trash-o"></t:dgFunOpt>
    <t:dgToolBar title="录入" icon="icon-add" url="schoolAreaController.do?addorupdate"
                 funname="add" height="280"></t:dgToolBar>
    <t:dgToolBar title="修改" langArg="common.user" icon="icon-edit" url="schoolAreaController.do?addorupdate"
                 funname="update" height="280"></t:dgToolBar>
</t:datagrid>
<script>
    //删除角色
    function delSchoolArea(id) {
        var tabName = 'schoolAreaList';
        var url = 'schoolAreaController.do?delSchoolArea&id=' + id;
        $.dialog.confirm('<t:mutiLang langKey="confirm.delete.this.record"/>', function () {
            doSubmit(url, tabName);
        }, function () {
        });
    }
</script>