<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<!DOCTYPE html >
<html>
<head>
    <title>角色集合</title>
    <t:base type="jquery,easyui,tools"></t:base>
</head>
<body style="overflow-y: hidden" scroll="no">
<t:datagrid pagination="false" name="userChooseList" title="选择用户"
            actionUrl="userController.do?datagridUserChoose" idField="id" checkbox="true" showRefresh="false" fit="true"
            queryMode="group" onLoadSuccess="initCheck">
    <t:dgCol title="编号" field="id" hidden="true"></t:dgCol>
    <t:dgCol title="common.username" sortable="false" field="userName" width="60"></t:dgCol>
    <t:dgCol title="common.real.name" sortable="false" field="realName" query="true" width="100"></t:dgCol>
</t:datagrid>
</body>
</html>
<script type="text/javascript">
    function initCheck(data) {
        var ids = "${ids}";
        var idArr = ids.split(",");
        for (var i = 0; i < idArr.length; i++) {
            if (idArr[i] != "") {
                $("#userChooseList").datagrid("selectRecord", idArr[i]);
            }
        }
    }
</script>