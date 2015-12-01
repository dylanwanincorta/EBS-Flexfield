select   TRANSLATE(SG.ID_FLEX_CODE,'1!@#$%','1')||'_'
       ||SG.ID_FLEX_NUM||'_'
       ||UPPER(TRANSLATE(SG.SEGMENT_NAME,'1!@#$%^&*()-+/?><,. ','1')) SEG_NAME -- Get the name of the column
,      SG.*
,       VS.*
from   APPLSYS.FND_ID_FLEX_SEGMENTS  SG
       LEFT OUTER JOIN  APPLSYS.FND_FLEX_VALUE_SETS VS
       ON SG.FLEX_VALUE_SET_ID = VS.FLEX_VALUE_SET_ID
where  1=1
and     SG.ENABLED_FLAG = 'Y'
and    SG.ID_FLEX_CODE = 'MCAT' --'GL#'
and    SG.ID_FLEX_NUM = 51848
--and    SG.FLEX_VALUE_SET_ID is null
order by 1