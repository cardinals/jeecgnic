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
             action="maraTypeController.do?save">
    <input id="id" name="id" type="hidden" value="${maraType.id }"/>
    <table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
        <tr>
            <td align="right" width="25%" nowrap>
                <label class="Validform_label">编码: </label>
            </td>
            <td class="value" width="85%">
                <c:if test="${maraType.id!=null }"> ${maraType.code } </c:if>
                <c:if test="${maraType.id==null }">
                    <input id="code" class="inputxt" name="code" validType="mara_type,code,id"
                           value="${maraType.code }" maxlength="20" datatype="s2-20"/>
                    <span class="Validform_checktip">编码范围在2~20位字符</span>
                </c:if>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">名称: </label>
            </td>
            <td class="value" width="10%">
                <input id="name" class="inputxt" name="name" value="${maraType.name }" maxlength="30"
                       datatype="s2-30"/>
                <span class="Validform_checktip">填写名称</span>
            </td>
        </tr>
    </table>
</t:formvalid>
</body>