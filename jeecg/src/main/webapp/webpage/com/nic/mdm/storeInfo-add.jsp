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
             action="storeInfoController.do?save">
    <input id="id" name="id" type="hidden" value="${storeInfo.id }"/>
    <table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
        <tr>
            <td align="right" width="25%" nowrap>
                <label class="Validform_label">仓库编码: </label>
            </td>
            <td class="value" width="85%">
                <c:if test="${storeInfo.id!=null }"> ${storeInfo.storeCode } </c:if>
                <c:if test="${storeInfo.id==null }">
                    <input id="storeCode" class="inputxt" name="storeCode" validType="store_info,store_code,id"
                           value="${storeInfo.storeCode }" maxlength="20" datatype="s2-20"/>
                    <span class="Validform_checktip">仓库编码范围在2~20位字符</span>
                </c:if>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">仓库名称: </label>
            </td>
            <td class="value" width="10%">
                <input id="storeName" class="inputxt" name="storeName" value="${storeInfo.storeName }"
                       datatype="*"/>
                <span class="Validform_checktip">填写仓库名称</span>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">仓库地址: </label>
            </td>
            <td class="value" width="10%">
                <input id="address" class="inputxt" name="address" value="${storeInfo.address }"
                       datatype="*"/>
                <span class="Validform_checktip">填写仓库地址</span>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">管理员: </label>
            </td>
            <td class="value" width="10%">
                <input id="manager" class="inputxt" name="manager" value="${storeInfo.manager }"/>
                <span class="Validform_checktip">填写仓库管理员</span>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">管理员电话: </label>
            </td>
            <td class="value" width="10%">
                <input id="telphone" class="inputxt" name="telphone" value="${storeInfo.telphone }"/>
                <span class="Validform_checktip">填写联系电话</span>
            </td>
        </tr>
    </table>
</t:formvalid>
</body>