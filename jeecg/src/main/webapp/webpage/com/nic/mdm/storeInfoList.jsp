<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>

<t:datagrid name="storeInfoList" title="仓库信息维护" actionUrl="storeInfoController.do?datagrid" fit="true" fitColumns="true"
            idField="id" queryMode="group" checkbox="false">
    <t:dgCol title="ID" field="id" hidden="true"></t:dgCol>
    <t:dgCol title="仓库编码" sortable="false" field="storeCode" query="true" width="80"></t:dgCol>
    <t:dgCol title="仓库名称" sortable="false" field="storeName" query="true" width="100"></t:dgCol>
    <t:dgCol title="仓库地址" sortable="false" field="address" query="true" width="200"></t:dgCol>
    <t:dgCol title="管理员" sortable="false" field="manager" width="80"></t:dgCol>
    <t:dgCol title="联系电话" sortable="false" field="telphone" width="80"></t:dgCol>
    <t:dgCol title="操作" field="opt" width="60"></t:dgCol>
    <t:dgFunOpt funname="delStoreInfo(id)" title="删除" urlclass="ace_button"
                urlfont="fa-trash-o"></t:dgFunOpt>
    <t:dgToolBar title="录入" icon="icon-add" url="storeInfoController.do?addorupdate"
                 funname="add" height="280"></t:dgToolBar>
    <t:dgToolBar title="修改" langArg="common.user" icon="icon-edit" url="storeInfoController.do?addorupdate"
                 funname="update" height="280"></t:dgToolBar>
</t:datagrid>
<script>
    //删除角色
    function delStoreInfo(id) {
        var tabName = 'storeInfoList';
        var url = 'storeInfoController.do?delStoreInfo&id=' + id;
        $.dialog.confirm('<t:mutiLang langKey="confirm.delete.this.record"/>', function () {
            doSubmit(url, tabName);
        }, function () {
        });
    }
</script>