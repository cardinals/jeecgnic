<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
    <div region="center" style="padding:0px;border:0px">
        <t:datagrid name="storeOrderOutList" checkbox="true" fitColumns="true" title="出库单列表"
                    actionUrl="storeOrderController.do?datagrid&orderType=1" idField="id" fit="true" queryMode="group">
            <t:dgCol title="主键" field="id" hidden="true" width="20"></t:dgCol>
            <t:dgCol title="单据号" field="orderNo" query="true" width="80"></t:dgCol>
            <t:dgCol title="单据类型" field="orderType" width="60" replace="入库单_0,出库单_1"></t:dgCol>
            <t:dgCol title="仓库编码" field="storeCode" query="true" width="60"></t:dgCol>
            <t:dgCol title="仓库名称" field="storeName" query="true" width="80"></t:dgCol>
            <t:dgCol title="入库人" field="operatorName" width="80"></t:dgCol>
            <t:dgCol title="入库时间" field="operatorTime" width="80"></t:dgCol>
            <%--<t:dgCol title="操作" field="opt" width="60"></t:dgCol>
            <t:dgFunOpt funname="delStoreOrder(orderNo)" title="删除" urlclass="ace_button"
                        urlfont="fa-trash-o"></t:dgFunOpt>--%>
            <t:dgToolBar title="录入" icon="icon-add" url="storeOrderController.do?storeOrderOutPage" funname="add"
                         height="350"></t:dgToolBar>
            <%--<t:dgToolBar title="编辑" icon="icon-edit" url="storeOrderController.do?addorupdate" funname="update"
                         height="350"></t:dgToolBar>--%>
            <t:dgToolBar title="查看" icon="icon-search" url="storeOrderController.do?storeOrderOutPage" funname="detail"
                         height="350"></t:dgToolBar>
            <%--<t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
            <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
            <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>--%>
        </t:datagrid>
    </div>
</div>
<script type="text/javascript">

    //删除
    function delStoreOrder(orderNo) {
        var tabName = 'storeOrderInList';
        var url = 'storeOrderController.do?delStoreOrder&orderNo=' + orderNo;
        $.dialog.confirm('<t:mutiLang langKey="confirm.delete.this.record"/>', function () {
            doSubmit(url, tabName);
        }, function () {
        });
    }
</script>