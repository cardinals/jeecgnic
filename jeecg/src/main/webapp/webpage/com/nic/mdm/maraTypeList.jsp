<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>

<t:datagrid name="maraTypeList" title="设备类型配置" actionUrl="maraTypeController.do?datagrid" fit="true" fitColumns="true"
            idField="id" queryMode="group" checkbox="false">
    <t:dgCol title="ID" field="id" hidden="true"></t:dgCol>
    <t:dgCol title="编码" sortable="false" field="code" query="true" width="50"></t:dgCol>
    <t:dgCol title="名称" sortable="false" field="name" query="true" width="100"></t:dgCol>
    <%--<t:dgCol title="创建人" sortable="false" field="createName" width="60"></t:dgCol>
    <t:dgCol title="创建时间" sortable="false" field="createDate" width="80"></t:dgCol>--%>
    <t:dgCol title="操作" field="opt" width="60"></t:dgCol>
    <t:dgFunOpt funname="delMaraType(id)" title="删除" urlclass="ace_button"
                urlfont="fa-trash-o"></t:dgFunOpt>
    <t:dgToolBar title="录入" icon="icon-add" url="maraTypeController.do?addorupdate"
                 funname="add" height="280"></t:dgToolBar>
    <t:dgToolBar title="修改" langArg="common.user" icon="icon-edit" url="maraTypeController.do?addorupdate"
                 funname="update" height="280"></t:dgToolBar>
</t:datagrid>
<script>
    //删除
    function delMaraType(id) {
        var tabName = 'maraTypeList';
        var url = 'maraTypeController.do?delMaraType&id=' + id;
        $.dialog.confirm('<t:mutiLang langKey="confirm.delete.this.record"/>', function () {
            doSubmit(url, tabName);
        }, function () {
        });
    }
</script>