select   FS.ID_FLEX_NUM
,        FS.ID_FLEX_STRUCTURE_CODE
,        FS.CONCATENATED_SEGMENT_DELIMITER  DELI -- if we need to concatenate ourselves
,        COUNT(DISTINCT SG.APPLICATION_COLUMN_NAME) NO_OF_SEG
,        LISTAGG('<'||SG.SEGMENT_NAME||'>', FS.CONCATENATED_SEGMENT_DELIMITER)  WITHIN GROUP (ORDER BY SEGMENT_NUM)  SEG_STRUCT
--,        SG.*
from     APPLSYS.FND_ID_FLEXS  F
,        APPLSYS.FND_ID_FLEX_STRUCTURES FS
,        APPLSYS.FND_ID_FLEX_SEGMENTS  SG
where    F.ID_FLEX_CODE = FS.ID_FLEX_CODE
and      FS.ID_FLEX_NUM = SG.ID_FLEX_NUM
and      FS.ID_FLEX_CODE = SG.ID_FLEX_CODE
and      F.ID_FLEX_CODE = 'GL#'
group by FS.ID_FLEX_NUM
,        FS.ID_FLEX_STRUCTURE_CODE
,        FS.CONCATENATED_SEGMENT_DELIMITER
order by 1, 2,3
/
