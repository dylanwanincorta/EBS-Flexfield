-- What is the table structure
select * from FND_SEGMENT_ATTRIBUTE_VALUES
where     ID_FLEx_code = 'GL#';

-- any other important qualifier?
select distinct ID_FLEX_CODE, SEGMENT_ATTRIBUTE_TYPE from FND_SEGMENT_ATTRIBUTE_VALUES where ID_FLEX_CODE != 'GL#' order by 1;

-- Generate the case statement 
select    F.ID_FLEX_NAME
,         S.ID_FLEX_STRUCTURE_CODE
,         F.APPLICATION_TABLE_NAME
,         F.SET_DEFINING_COLUMN_NAME
,         S.ID_FLEX_NUM
,         SA.APPLICATION_COLUMN_NAME
,         'WHEN '||F.SET_DEFINING_COLUMN_NAME||' = '||S.ID_FLEX_NUM||' THEN '||COALESCE(SA.APPLICATION_COLUMN_NAME, '''N/A''')
from      APPLSYS.FND_ID_FLEX_STRUCTURES S 
          INNER JOIN  APPLSYS.FND_ID_FLEXS F
          ON F.ID_FLEX_CODE = S.ID_FLEX_CODE
          LEFT OUTER JOIN  APPLSYS.FND_SEGMENT_ATTRIBUTE_VALUES SA
          ON     S.ID_FLEX_NUM = SA.ID_FLEX_NUM 
            AND  S.ID_FLEX_CODE = SA.ID_FLEX_CODE 
            AND  SA.SEGMENT_ATTRIBUTE_TYPE =  'FA_COST_CTR'
            AND  SA.ATTRIBUTE_VALUE = 'Y'
where     S.ID_FLEX_CODE = 'GL#'
--and       SA.SEGMENT_ATTRIBUTE_TYPE NOT IN( 'FA_COST_CTR', 'GL_BALANCING', 'GL_ACCOUNT', 'GL_INTERCOMPANY', 'GL_GLOBAL')
order by S.ID_FLEX_NUM
/