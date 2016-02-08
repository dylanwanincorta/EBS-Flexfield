
       
select fifs.ID_FLEX_NUM, fifs.SEGMENT_NAME, fifs.SEGMENT_NUM, fifs.APPLICATION_COLUMN_NAME, fifs.flex_value_set_id
from   FND_ID_FLEX_SEGMENTS fifs
where  fifs.application_id = 101
AND    fifs.id_flex_code = 'GL#'
AND    EXISTS (
  select 1
  from FND_FLEX_VALUE_NORM_HIERARCHY ffvnh
  where  ffvnh.flex_value_set_id = fifs.flex_value_set_id
  and ROWNUM = 1
);