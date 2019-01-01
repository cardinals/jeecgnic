<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>校区管理</title>
    <t:base type="jquery,easyui,tools"></t:base>
</head>
<body>
<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table"
             action="schoolAreaController.do?save">
    <input id="id" name="id" type="hidden" value="${schoolArea.id }"/>
    <table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
        <tr>
            <td align="right" width="25%" nowrap>
                <label class="Validform_label">校区编码: </label>
            </td>
            <td class="value" width="85%">
                <c:if test="${schoolArea.id!=null }"> ${schoolArea.areaCode } </c:if>
                <c:if test="${schoolArea.id==null }">
                    <input id="areaCode" class="inputxt" name="areaCode" validType="school_area,area_code,id"
                           value="${schoolArea.areaCode }" maxlength="20" datatype="s2-20"/>
                    <span class="Validform_checktip">校区编码范围在2~20位字符</span>
                </c:if>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">校区名称: </label>
            </td>
            <td class="value" width="10%">
                <input id="areaName" class="inputxt" name="areaName" value="${schoolArea.areaName }" maxlength="30"
                       datatype="s2-30"/>
                <span class="Validform_checktip">填写校区名称</span>
            </td>
        </tr>
        <tr>
            <td align="right"><label class="Validform_label">校区管理员: </label></td>
            <td class="value" nowrap>
                <input id="userId" name="userId" type="hidden" value="${userIds}"/>
                <input name="realName" id="realName" class="inputxt" value="${userNames }" readonly="readonly"
                       datatype="*"/>
                <t:choose hiddenName="userId" hiddenid="id" textname="realName" url="userController.do?userChoose"
                          name="userChooseList" icon="icon-search" title="用户列表" isclear="true"
                          isInit="true"></t:choose>
                <span class="Validform_checktip">管理员可多选</span>
            </td>
        </tr>
    </table>
</t:formvalid>
</body>