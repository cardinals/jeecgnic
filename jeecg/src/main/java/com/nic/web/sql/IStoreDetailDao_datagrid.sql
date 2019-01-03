SELECT
	d.id,
	d.store_code,
	s.store_name,
	s.address,
	d.matnr,
	m.maktx,
	m.mara_type,
	m.unit,
	m.model,
	m.norms,
	d.total_num
FROM
	store_detail d
LEFT JOIN store_info s ON s.store_code = d.store_code
LEFT JOIN mara m ON m.matnr = d.matnr
where d.total_num>0
<#if storeDetail.matnr ?exists && storeDetail.matnr ?length gt 0>
     and d.matnr like  :storeDetail.matnr
  </#if>
<#if storeDetail.maktx ?exists && storeDetail.maktx ?length gt 0>
     and m.maktx like  :storeDetail.maktx
  </#if>
<#if storeDetail.maraType ?exists && storeDetail.maraType ?length gt 0>
     and m.mara_type =  :storeDetail.maraType
  </#if>
<#if storeDetail.storeCode ?exists && storeDetail.storeCode ?length gt 0>
     and d.store_code =  :storeDetail.storeCode
  </#if>