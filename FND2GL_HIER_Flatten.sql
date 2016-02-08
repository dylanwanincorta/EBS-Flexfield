
-- See Fix_Norm_Table
SELECT DISTINCT ffvnh.flex_value_set_id
,               ffvnh.parent_flex_value
,               glsvh.child_flex_value
,               glsvh.summary_flag   -- Y for parents, N for child only 
FROM    FND_FLEX_VALUE_NORM_HIERARCHY ffvnh
,       GL_SEG_VAL_HIERARCHIES glsvh -- 
WHERE   ffvnh.flex_value_set_id = 1002470 -- a value set id
AND     glsvh.flex_value_set_id   = ffvnh.flex_value_set_id
AND     glsvh.parent_flex_value   = 'T' -- when parent is T, we have all value under a given value set
AND     glsvh.summary_flag        = DECODE(ffvnh.range_attribute, 'P','Y', 'C','N')
AND     glsvh.child_flex_value BETWEEN ffvnh.child_flex_value_low AND ffvnh.child_flex_value_high
        -- ffvnh is the parent, glsvh are the children
AND     glsvh.child_flex_value <> 'T'
AND NOT EXISTS  -- avoid the duplicate data, make the process rerunable
  (SELECT 1
  FROM GL_SEG_VAL_NORM_HIERARCHY glsvnh2
  WHERE glsvnh2.flex_value_set_id = ffvnh.flex_value_set_id
  AND glsvnh2.parent_flex_value   = ffvnh.parent_flex_value
  AND glsvnh2.child_flex_value    = glsvh.child_flex_value
  AND glsvnh2.summary_flag        = DECODE(ffvnh.range_attribute , 'P','Y', 'C', 'N')
  );