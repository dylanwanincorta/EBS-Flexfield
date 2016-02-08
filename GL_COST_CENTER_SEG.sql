-- GL_COST_CENTER_SEG

select fifs.id_flex_num
, fifs.application_column_name
, fifs.segment_name
, ffv.flex_value COST_CENTER_SEG_VALUE
, ffv.description 
, gcc.code_combination_id
from fnd_id_flex_segments fifs
, fnd_flex_values_vl ffv
, fnd_segment_attribute_values fsav
, gl_code_combinations gcc
where fifs.id_flex_code = 'GL#'
and fifs.id_flex_num = fsav.id_flex_num
and fifs.id_flex_code = fsav.id_flex_code
and fsav.segment_attribute_type= 'FA_COST_CTR'
and fsav.attribute_value = 'Y'
and fifs.APPLICATION_COLUMN_NAME=fsav.application_column_name
and fifs.flex_value_set_id = ffv.flex_value_set_id
and decode(fifs.application_column_name,'SEGMENT1',gcc.segment1
           , 'SEGMENT2', gcc.segment2, 'SEGMENT3', gcc.segment3
           , 'SEGMENT4', gcc.segment4, 'SEGMENT5',gcc.segment5) = ffv.flex_value
and gcc.chart_of_accounts_id = fifs.id_flex_num