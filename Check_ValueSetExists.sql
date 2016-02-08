SELECT fifs.ID_FLEX_NUM, fifs.SEGMENT_NAME, fifs.SEGMENT_NUM, fifs.APPLICATION_COLUMN_NAME
 	     FROM  FND_ID_FLEX_SEGMENTS fifs
 	     WHERE fifs.application_id = 101
             AND   fifs.id_flex_code = 'GL#'
 	     AND   fifs.flex_value_set_id is NOT NULL;