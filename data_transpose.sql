SELECT publishdate, 
CASE col_name
WHEN 'H1' THEN to_char(publishdate,'MM/DD/YYYY') || ' 0:00'
WHEN 'H2' THEN to_char(publishdate,'MM/DD/YYYY') || ' 1:00'
WHEN 'H3' THEN to_char(publishdate,'MM/DD/YYYY') || ' 2:00'
WHEN 'H4' THEN to_char(publishdate,'MM/DD/YYYY') || ' 3:00'
WHEN 'H5' THEN to_char(publishdate,'MM/DD/YYYY') || ' 4:00'
WHEN 'H6' THEN to_char(publishdate,'MM/DD/YYYY') || ' 5:00'
WHEN 'H7' THEN to_char(publishdate,'MM/DD/YYYY') || ' 6:00'
WHEN 'H8' THEN to_char(publishdate,'MM/DD/YYYY') || ' 7:00'
WHEN 'H9' THEN to_char(publishdate,'MM/DD/YYYY') || ' 8:00'
WHEN 'H10' THEN to_char(publishdate,'MM/DD/YYYY') || ' 9:00'
WHEN 'H11' THEN to_char(publishdate,'MM/DD/YYYY') || ' 10:00'
WHEN 'H12' THEN to_char(publishdate,'MM/DD/YYYY') || ' 11:00'
WHEN 'H13' THEN to_char(publishdate,'MM/DD/YYYY') || ' 12:00'
WHEN 'H14' THEN to_char(publishdate,'MM/DD/YYYY') || ' 13:00'
WHEN 'H15' THEN to_char(publishdate,'MM/DD/YYYY') || ' 14:00'
WHEN 'H16' THEN to_char(publishdate,'MM/DD/YYYY') || ' 15:00'
WHEN 'H17' THEN to_char(publishdate,'MM/DD/YYYY') || ' 16:00'
WHEN 'H18' THEN to_char(publishdate,'MM/DD/YYYY') || ' 17:00'
WHEN 'H19' THEN to_char(publishdate,'MM/DD/YYYY') || ' 18:00'
WHEN 'H20' THEN to_char(publishdate,'MM/DD/YYYY') || ' 19:00'
WHEN 'H21' THEN to_char(publishdate,'MM/DD/YYYY') || ' 20:00'
WHEN 'H22' THEN to_char(publishdate,'MM/DD/YYYY') || ' 21:00'
WHEN 'H23' THEN to_char(publishdate,'MM/DD/YYYY') || ' 22:00'
WHEN 'H24' THEN to_char(publishdate,'MM/DD/YYYY') || ' 23:00'
END COL_NAME1,col_name,val from
(
SELECT * FROM temp_05192017 UNPIVOT (VAL FOR col_name IN (H1,H2,H3,H4,H5,H6,H7,H8,H9,H10,H11,H12,H13,H14,H15,H16,H17,H18,H19,H20,H21,H22,H23,H24))
ORDER BY publishdate , to_number(substr(col_name,2))
)



SELECT publishdate, 
CASE col_name
WHEN 'H1' THEN to_char(publishdate,'MM/DD/YYYY') || ' 0:00'
WHEN 'H2' THEN to_char(publishdate,'MM/DD/YYYY') || ' 1:00'
WHEN 'H3' THEN to_char(publishdate,'MM/DD/YYYY') || ' 2:00'
WHEN 'H4' THEN to_char(publishdate,'MM/DD/YYYY') || ' 3:00'
WHEN 'H5' THEN to_char(publishdate,'MM/DD/YYYY') || ' 4:00'
WHEN 'H6' THEN to_char(publishdate,'MM/DD/YYYY') || ' 5:00'
WHEN 'H7' THEN to_char(publishdate,'MM/DD/YYYY') || ' 6:00'
WHEN 'H8' THEN to_char(publishdate,'MM/DD/YYYY') || ' 7:00'
WHEN 'H9' THEN to_char(publishdate,'MM/DD/YYYY') || ' 8:00'
WHEN 'H10' THEN to_char(publishdate,'MM/DD/YYYY') || ' 9:00'
WHEN 'H11' THEN to_char(publishdate,'MM/DD/YYYY') || ' 10:00'
WHEN 'H12' THEN to_char(publishdate,'MM/DD/YYYY') || ' 11:00'
WHEN 'H13' THEN to_char(publishdate,'MM/DD/YYYY') || ' 12:00'
WHEN 'H14' THEN to_char(publishdate,'MM/DD/YYYY') || ' 13:00'
WHEN 'H15' THEN to_char(publishdate,'MM/DD/YYYY') || ' 14:00'
WHEN 'H16' THEN to_char(publishdate,'MM/DD/YYYY') || ' 15:00'
WHEN 'H17' THEN to_char(publishdate,'MM/DD/YYYY') || ' 16:00'
WHEN 'H18' THEN to_char(publishdate,'MM/DD/YYYY') || ' 17:00'
WHEN 'H19' THEN to_char(publishdate,'MM/DD/YYYY') || ' 18:00'
WHEN 'H20' THEN to_char(publishdate,'MM/DD/YYYY') || ' 19:00'
WHEN 'H21' THEN to_char(publishdate,'MM/DD/YYYY') || ' 20:00'
WHEN 'H22' THEN to_char(publishdate,'MM/DD/YYYY') || ' 21:00'
WHEN 'H23' THEN to_char(publishdate,'MM/DD/YYYY') || ' 22:00'
WHEN 'H24' THEN to_char(publishdate,'MM/DD/YYYY') || ' 23:00'
END COL_NAME1,col_name,val from
(
SELECT * FROM temp_05192017 UNPIVOT INCLUDE NULLS (VAL FOR col_name IN (H1,H2,H3,H4,H5,H6,H7,H8,H9,H10,H11,H12,H13,H14,H15,H16,H17,H18,H19,H20,H21,H22,H23,H24))
ORDER BY publishdate , to_number(substr(col_name,2))
)
