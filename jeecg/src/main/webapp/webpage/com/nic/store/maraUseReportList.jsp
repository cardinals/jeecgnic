<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
    <div region="center" style="padding:0px;border:0px">
        <t:datagrid name="maraUseList" checkbox="true" fitColumns="true" title="设备使用情况列表"
                    actionUrl="storeOrderController.do?queryMaraUseReport" idField="id" fit="true" queryMode="group">
            <t:dgCol title="主键" field="id" hidden="true" width="20"></t:dgCol>
            <t:dgCol title="设备编码" field="matnr" width="80"></t:dgCol>
            <t:dgCol title="设备名称" field="maktx" query="true" width="60"></t:dgCol>
            <t:dgCol title="单位" field="unit" width="60"></t:dgCol>
            <t:dgCol title="型号" field="model" width="60"></t:dgCol>
            <t:dgCol title="规格" field="norms" width="60"></t:dgCol>
            <t:dgCol title="国资编号" field="matnrNo" query="true" width="60"></t:dgCol>
            <t:dgCol title="厂家" field="vender" width="60"></t:dgCol>
            <t:dgCol title="出厂编码" field="venderNo" width="60"></t:dgCol>
            <t:dgCol title="使用地" field="usePlace" width="60"></t:dgCol>
            <t:dgCol title="领用人" field="operatorName" width="80"></t:dgCol>
            <t:dgCol title="领用时间" field="operatorTime" width="80"></t:dgCol>
            <%--<t:dgCol title="操作" field="opt" width="60"></t:dgCol>
            <t:dgFunOpt funname="delStoreOrder(orderNo)" title="删除" urlclass="ace_button"
                        urlfont="fa-trash-o"></t:dgFunOpt>--%>
            <%--<t:dgToolBar title="录入" icon="icon-add" url="storeOrderController.do?storeOrderOutPage" funname="add"
                         height="400" width="1100"></t:dgToolBar>--%>
            <%--<t:dgToolBar title="编辑" icon="icon-edit" url="storeOrderController.do?addorupdate" funname="update"
                         height="350"></t:dgToolBar>--%>
            <%--<t:dgToolBar title="查看" icon="icon-search" url="storeOrderController.do?storeOrderOutPage" funname="detail"
                         height="400" width="1100"></t:dgToolBar>--%>
            <%--<t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
            <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
            <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>--%>
        </t:datagrid>
    </div>
</div>
<script type="text/javascript">

</script>