SELECT
	s.id,
	s.order_no,
	s.order_type,
	s.store_code,
	t.store_name,
	s.operator_name,
	s.operator_time
FROM
	store_order s
LEFT JOIN store_info t ON s.store_code = t.store_code
where s.order_type = :orderPage.orderType
 <#if orderPage.orderNo ?exists && orderPage.orderNo ?length gt 0>
     and s.order_no like  :orderPage.orderNo
  </#if>
<#if orderPage.storeCode ?exists && orderPage.storeCode ?length gt 0>
     and s.store_code like  :orderPage.storeCode
  </#if>
<#if orderPage.storeName ?exists && orderPage.storeName ?length gt 0>
     and t.store_name like  :orderPage.storeName
  </#if>