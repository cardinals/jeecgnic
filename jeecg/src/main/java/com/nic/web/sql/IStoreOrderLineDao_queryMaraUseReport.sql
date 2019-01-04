SELECT
	s.order_no,
	t.store_code,
	si.store_name,
	s.matnr,
	m.maktx,
	m.mara_type,
	mt.NAME maraName,
	m.unit,
	m.model,
	m.norms,
	s.matnr_no,
	s.vender,
	s.vender_no,
	s.use_place,
	t.operator_name,
	t.operator_time
FROM
	store_order_line s
INNER JOIN store_order t ON s.order_no = t.order_no
LEFT JOIN store_info si ON si.store_code = t.store_code
LEFT JOIN mara m ON m.matnr = s.matnr
LEFT JOIN mara_type mt ON mt.code = m.mara_type
WHERE
	t.order_type = '1'
 <#if orderLine.maktx ?exists && orderLine.maktx ?length gt 0>
     and m.maktx like  :orderLine.maktx
  </#if>
 <#if orderLine.matnrNo ?exists && orderLine.matnrNo ?length gt 0>
     and s.matnr_no like  :orderLine.matnrNo
  </#if>