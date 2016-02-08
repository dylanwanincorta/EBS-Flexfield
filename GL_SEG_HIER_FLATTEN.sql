select count(*) from GL_SEG_VAL_NORM_HIERARCHY;
select count(*) from GL_SEG_VAL_HIERARCHIES;

-- all rows in  GL_SEG_VAL_HIERARCHIES;
select count(*) 
from GL_SEG_VAL_NORM_HIERARCHY N
where NOT EXISTS (
  SELECT 1 
  FROM GL_SEG_VAL_HIERARCHIES V
  WHERE N.parent_flex_value = v.parent_flex_value
  AND N.child_flex_value = v.child_flex_value
  AND N.flex_value_set_id = v.flex_value_set_id );
--
select count(*) 
from GL_SEG_VAL_HIERARCHIES N
where NOT EXISTS (
  SELECT 1 
  FROM GL_SEG_VAL_NORM_HIERARCHY V
  WHERE N.parent_flex_value = v.parent_flex_value
  AND N.child_flex_value = v.child_flex_value
  AND N.flex_value_set_id = v.flex_value_set_id );
--
select * 
from GL_SEG_VAL_HIERARCHIES N
where NOT EXISTS (
  SELECT 1 
  FROM GL_SEG_VAL_NORM_HIERARCHY V
  WHERE N.parent_flex_value = v.parent_flex_value
  AND N.child_flex_value = v.child_flex_value
  AND N.flex_value_set_id = v.flex_value_set_id );
--
select N.flex_value_set_id, count(N.child_flex_value), count(V.child_flex_value)
from GL_SEG_VAL_HIERARCHIES N left outer join GL_SEG_VAL_NORM_HIERARCHY V
on N.parent_flex_value = v.parent_flex_value
  AND N.child_flex_value = v.child_flex_value
  AND N.flex_value_set_id = v.flex_value_set_id
--where N.flex_value_set_id = 1015701
group by N.flex_value_set_id
order by 2 desc
/

--1015740
select N.parent_flex_value, v.parent_flex_value, N.child_flex_value, v.child_flex_value, n.summary_flag, v.summary_flag
from GL_SEG_VAL_HIERARCHIES N 
left outer join GL_SEG_VAL_NORM_HIERARCHY V
on N.parent_flex_value = v.parent_flex_value
AND N.child_flex_value = v.child_flex_value
AND N.flex_value_set_id = v.flex_value_set_id
where N.flex_value_set_id = 1013091--1013092 --1015740
order by 1, 3
/

--> GL_SEG_VAL_HIERARCHIES has the self join
--> GL_SEG_VAL_HIERARCHIES has the parent = T where the child is a parent

--> GL_SEG_VAL_NORM_HIERARCHY has parent child direct join

SELECT count(*)
FROM   GL_SEG_VAL_HIERARCHIES h
WHERE  h.parent_flex_value <> h.child_flex_value
AND    NOT EXISTS (
SELECT 1  -- child is a parent of other nodes
FROM   GL_SEG_VAL_HIERARCHIES V
WHERE v.parent_flex_value = h.child_flex_value
AND   v.flex_value_set_id = h.flex_value_set_id
)

--> We should use GL_SEG_VAL_NORM_HIERARCHY!!!
