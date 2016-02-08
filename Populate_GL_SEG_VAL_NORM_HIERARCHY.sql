SELECT DISTINCT glsvnh.flex_value_set_id,
                glsvh.parent_flex_value,
                glsvnh.child_flex_value,  -- grandchildren
                glsvnh.summary_flag, 'I'
FROM   GL_SEG_VAL_NORM_HIERARCHY glsvnh,  -- direct join only
       GL_SEG_VAL_HIERARCHIES   glsvh  
WHERE  glsvnh.flex_value_set_id =   GL_FLATTEN_SETUP_DATA.GLSTFL_VS_ID
AND    glsvnh.status_code = 'I'
AND    glsvnh.summary_flag = 'N'
AND    glsvh.flex_value_set_id = glsvnh.flex_value_set_id
AND    glsvh.child_flex_value =   glsvnh.parent_flex_value
AND    NVL(glsvh.status_code, 'X') <> 'D'
AND    NOT EXISTS  -- avoid duplicate
                           (SELECT 1
                           FROM   GL_SEG_VAL_HIERARCHIES glsvh2
                           WHERE  glsvh2.flex_value_set_id =
                                         glsvnh.flex_value_set_id
                           AND    glsvh2.parent_flex_value =
                                         glsvh.parent_flex_value
                           AND    glsvh2.child_flex_value =
                                         glsvnh.child_flex_value
                           AND    glsvh2.summary_flag =
                                         glsvnh.summary_flag
                           AND    NVL(glsvh2.status_code,'X') <>'D')
/
                           
SELECT DISTINCT  glsvnh.flex_value_set_id,
                                   glsvh1.parent_flex_value,
                                   glsvh2.child_flex_value,
                                   glsvh2.summary_flag, 'I'
                  FROM      GL_SEG_VAL_NORM_HIERARCHY glsvnh,
                            GL_SEG_VAL_HIERARCHIES   glsvh1,
                            GL_SEG_VAL_HIERARCHIES   glsvh2
                  WHERE     glsvnh.flex_value_set_id =
                                   GL_FLATTEN_SETUP_DATA.GLSTFL_VS_ID
                  AND       glsvnh.status_code = 'I'
                  AND       glsvnh.summary_flag = 'Y'
                  AND       glsvh1.flex_value_set_id =
                                   glsvnh.flex_value_set_id
                  AND       glsvh1.child_flex_value =
                                   glsvnh.parent_flex_value
                  AND       NVL(glsvh1.status_code, 'X') <>'D'
                  AND       glsvh2.flex_value_set_id =
                                   glsvnh.flex_value_set_id
                  AND       glsvh2.parent_flex_value =
                                   glsvnh.child_flex_value
                  AND       NVL(glsvh2.status_code, 'X') <>'D'
                  AND       NOT EXISTS
                               (SELECT 1
                                FROM   GL_SEG_VAL_HIERARCHIES glsvh3
                                WHERE  glsvh3.flex_value_set_id =
                                              glsvnh.flex_value_set_id
                                AND    glsvh3.parent_flex_value =
                                              glsvh1.parent_flex_value
                                AND    glsvh3.child_flex_value =
                                              glsvh2.child_flex_value
                                AND    glsvh3.summary_flag =
                                              glsvh2.summary_flag
                                AND    NVL(glsvh3.status_code,'X') <>'D');