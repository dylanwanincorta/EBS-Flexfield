-- Find which Flexfield and segment use a given value set
-- We will build joins this way
SELECT 
  APPLICATION_ID,
  ID_FLEX_CODE,
  ID_FLEX_NUM,
  SEGMENT_NAME
FROM FND_ID_FLEX_SEGMENTS_VL
WHERE (FLEX_VALUE_SET_ID  =1009374)
/