SELECT u.application_column_name, u.end_user_column_name, u.column_seq_num,
            c.descriptive_flex_context_code
      FROM  fnd_descr_flex_col_usage_vl u,fnd_descr_flex_contexts_vl c
      WHERE u.application_id = c.application_id  and
            u.descriptive_flexfield_name = c.descriptive_flexfield_name and
            u.descriptive_flex_context_code = c.descriptive_flex_context_code and
            u.enabled_flag = 'Y' and
            u.display_flag = 'Y' and
            c.enabled_flag = 'Y' and
            c.application_id = 222 and
            c.descriptive_flexfield_name = 'AR_IREC_SELFREG_CUST_QS';