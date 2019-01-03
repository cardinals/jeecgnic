SELECT
	t.order_no,
	t.store_from_code,
	s1.store_name storeFromName,
	t.store_to_code,
	s2.store_name storeToName,
	m.mara_type,
	t.matnr,
	m.maktx,
	m.unit,
	m.model,
	m.norms,
	t.num
FROM
	store_move t
LEFT JOIN store_info s1 ON s1.store_code = t.store_from_code
LEFT JOIN store_info s2 ON s2.store_code = t.store_to_code
LEFT JOIN mara m ON m.matnr = t.matnr
where 1=1
<#if storeMove.maktx ?exists && storeMove.maktx ?length gt 0>
     and m.maktx like  :storeMove.maktx
  </#if>
<#if storeMove.matnr ?exists && storeMove.matnr ?length gt 0>
     and t.matnr like  :storeMove.matnr
  </#if>
<#if storeMove.storeFromCode ?exists && storeMove.storeFromCode ?length gt 0>
     and t.store_from_code =  :storeMove.storeFromCode
  </#if>
<#if storeMove.orderNo ?exists && storeMove.orderNo ?length gt 0>
     and t.order_no like  :storeMove.orderNo
  </#if>