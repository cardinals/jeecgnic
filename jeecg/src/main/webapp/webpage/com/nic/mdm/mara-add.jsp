<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>设备信息维护</title>
    <t:base type="jquery,easyui,tools"></t:base>
</head>
<body>
<t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table"
             action="maraController.do?save">
    <input id="id" name="id" type="hidden" value="${mara.id }"/>
    <table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">设备类型: </label>
            </td>
            <td class="value" width="10%">
                <t:dictSelect field="maraType" type="list"
                              dictTable="mara_type" dictField="code" dictText="name" defaultVal="${mara.maraType }"
                              hasLabel="false" title="设备类型"></t:dictSelect>
                <span class="Validform_checktip">请选择设备类型</span>
            </td>
        </tr>
        <tr>
            <td align="right" width="25%" nowrap>
                <label class="Validform_label">设备编码: </label>
            </td>
            <td class="value" width="85%">
                <c:if test="${mara.id!=null }"> ${mara.matnr } </c:if>
                <c:if test="${mara.id==null }">
                    <input id="matnr" class="inputxt" name="matnr" validType="mara,matnr,id"
                           value="${mara.matnr }" maxlength="20" datatype="s2-20"/>
                    <span class="Validform_checktip">设备编码范围在2~20位字符</span>
                </c:if>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">设备名称: </label>
            </td>
            <td class="value" width="10%">
                <input id="maktx" class="inputxt" name="maktx" value="${mara.maktx }" maxlength="100"
                       datatype="s2-100"/>
                <span class="Validform_checktip">填写设备名称</span>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">单位: </label>
            </td>
            <td class="value" width="10%">
                <input id="unit" class="inputxt" name="unit" value="${mara.unit }"
                       datatype="*"/>
                <span class="Validform_checktip">填写单位</span>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">型号: </label>
            </td>
            <td class="value" width="10%">
                <input id="model" class="inputxt" name="model" value="${mara.model }"
                       datatype="*"/>
                <span class="Validform_checktip">填写型号</span>
            </td>
        </tr>
        <tr>
            <td align="right" width="10%" nowrap>
                <label class="Validform_label">规格: </label>
            </td>
            <td class="value" width="10%">
                <input id="norms" class="inputxt" name="norms" value="${mara.norms }"
                       datatype="*"/>
                <span class="Validform_checktip">填写规格称</span>
            </td>
        </tr>
    </table>
</t:formvalid>
</body>