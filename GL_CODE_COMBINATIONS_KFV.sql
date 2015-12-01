-- SELECT *
-- FROM all_views
-- WHERE owner   = 'APPS'
-- AND view_name = 'GL_CODE_COMBINATIONS_KFV'
-- /
desc GL_CODE_COMBINATIONS_KFV
/*
Name                          Null     Type          
----------------------------- -------- ------------- 
ROW_ID                                 ROWID         
CODE_COMBINATION_ID           NOT NULL NUMBER(15)    
CHART_OF_ACCOUNTS_ID          NOT NULL NUMBER(15)    
CONCATENATED_SEGMENTS                  VARCHAR2(311) 
PADDED_CONCATENATED_SEGMENTS           VARCHAR2(247) 
GL_ACCOUNT_TYPE               NOT NULL VARCHAR2(1)   
GL_CONTROL_ACCOUNT                     VARCHAR2(25)  
RECONCILIATION_FLAG                    VARCHAR2(1)   
DETAIL_BUDGETING_ALLOWED      NOT NULL VARCHAR2(1)   
DETAIL_POSTING_ALLOWED        NOT NULL VARCHAR2(1)   
TEMPLATE_ID                            NUMBER(15)    
LEDGER_SEGMENT                         VARCHAR2(20)  
ATTRIBUTE1                             VARCHAR2(150) 
REVALUATION_ID                         NUMBER(15)    
SEGMENT_ATTRIBUTE17                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE18                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE19                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE20                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE21                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE22                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE23                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE24                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE25                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE26                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE27                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE28                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE29                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE30                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE31                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE32                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE33                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE34                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE35                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE36                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE37                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE38                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE39                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE40                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE41                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE42                    VARCHAR2(60)  
JGZZ_RECON_CONTEXT                     VARCHAR2(30)  
REFERENCE1                             VARCHAR2(1)   
REFERENCE2                             VARCHAR2(1)   
REFERENCE4                             VARCHAR2(1)   
REFERENCE5                             VARCHAR2(1)   
PRESERVE_FLAG                          VARCHAR2(1)   
REFRESH_FLAG                           VARCHAR2(1)   
IGI_BALANCED_BUDGET_FLAG               VARCHAR2(1)   
COMPANY_COST_CENTER_ORG_ID             NUMBER(15)    
ALTERNATE_CODE_COMBINATION_ID          NUMBER(15)    
LAST_UPDATE_DATE              NOT NULL DATE          
LAST_UPDATED_BY               NOT NULL NUMBER        
ENABLED_FLAG                  NOT NULL VARCHAR2(1)   
SUMMARY_FLAG                  NOT NULL VARCHAR2(1)   
SEGMENT1                               VARCHAR2(25)  
SEGMENT2                               VARCHAR2(25)  
SEGMENT3                               VARCHAR2(25)  
SEGMENT4                               VARCHAR2(25)  
SEGMENT5                               VARCHAR2(25)  
SEGMENT6                               VARCHAR2(25)  
SEGMENT7                               VARCHAR2(25)  
SEGMENT8                               VARCHAR2(25)  
SEGMENT9                               VARCHAR2(25)  
SEGMENT10                              VARCHAR2(25)  
SEGMENT11                              VARCHAR2(25)  
SEGMENT12                              VARCHAR2(25)  
SEGMENT13                              VARCHAR2(25)  
SEGMENT14                              VARCHAR2(25)  
SEGMENT15                              VARCHAR2(25)  
SEGMENT16                              VARCHAR2(25)  
SEGMENT17                              VARCHAR2(25)  
SEGMENT18                              VARCHAR2(25)  
SEGMENT19                              VARCHAR2(25)  
SEGMENT20                              VARCHAR2(25)  
SEGMENT21                              VARCHAR2(25)  
SEGMENT22                              VARCHAR2(25)  
SEGMENT23                              VARCHAR2(25)  
SEGMENT24                              VARCHAR2(25)  
SEGMENT25                              VARCHAR2(25)  
SEGMENT26                              VARCHAR2(25)  
SEGMENT27                              VARCHAR2(25)  
SEGMENT28                              VARCHAR2(25)  
SEGMENT29                              VARCHAR2(25)  
SEGMENT30                              VARCHAR2(25)  
DESCRIPTION                            VARCHAR2(240) 
ALLOCATION_CREATE_FLAG                 VARCHAR2(1)   
START_DATE_ACTIVE                      DATE          
END_DATE_ACTIVE                        DATE          
ATTRIBUTE2                             VARCHAR2(150) 
ATTRIBUTE3                             VARCHAR2(150) 
ATTRIBUTE4                             VARCHAR2(150) 
ATTRIBUTE5                             VARCHAR2(150) 
ATTRIBUTE6                             VARCHAR2(150) 
ATTRIBUTE7                             VARCHAR2(150) 
ATTRIBUTE8                             VARCHAR2(150) 
ATTRIBUTE9                             VARCHAR2(150) 
ATTRIBUTE10                            VARCHAR2(150) 
CONTEXT                                VARCHAR2(150) 
SEGMENT_ATTRIBUTE1                     VARCHAR2(60)  
SEGMENT_ATTRIBUTE2                     VARCHAR2(60)  
SEGMENT_ATTRIBUTE3                     VARCHAR2(60)  
SEGMENT_ATTRIBUTE4                     VARCHAR2(60)  
SEGMENT_ATTRIBUTE5                     VARCHAR2(60)  
SEGMENT_ATTRIBUTE6                     VARCHAR2(60)  
SEGMENT_ATTRIBUTE7                     VARCHAR2(60)  
SEGMENT_ATTRIBUTE8                     VARCHAR2(60)  
SEGMENT_ATTRIBUTE9                     VARCHAR2(60)  
SEGMENT_ATTRIBUTE10                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE11                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE12                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE13                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE14                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE15                    VARCHAR2(60)  
SEGMENT_ATTRIBUTE16                    VARCHAR2(60)  
*/
select CONCATENATED_SEGMENTS , PADDED_CONCATENATED_SEGMENTS
from  GL_CODE_COMBINATIONS_KFV
where CONCATENATED_SEGMENTS <> PADDED_CONCATENATED_SEGMENTS
and rownum < 200;

SELECT ROWID, CODE_COMBINATION_ID, CHART_OF_ACCOUNTS_ID,  
 (DECODE(CHART_OF_ACCOUNTS_ID,  
      101, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      50194, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4,  
      50195, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      50214, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5,  
      50234, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4,  
      50274, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4,  
      50317, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6,  
      50558, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5 || '-' || SEGMENT6 || '-' || SEGMENT7,  
      50560, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4,  
      50569, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6,  
      50572, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      50577, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4,  
      50581, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7 || '.' || SEGMENT8,  
      50589, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7 || '.' || SEGMENT8,  
      50590, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6,  
      50671, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      50712, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4,  
      50713, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4,  
      50714, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5 || '-' || SEGMENT6,  
      50731, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      50957, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6,  
      50958, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7,  
      50978, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5,  
      51088, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5 || '-' || SEGMENT6 || '-' || SEGMENT7 || '-' || SEGMENT8,  
      51213, SEGMENT6 || '-' || SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      51253, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      51286, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4,  
      51306, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3,  
      51505, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5,  
      51549, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7 || '.' || SEGMENT8 || '.' || SEGMENT9 || '.' || SEGMENT10 || '.' || SEGMENT11,  
      51569, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3,  
      51623, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7,  
      51704, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7 || '.' || SEGMENT8,  
      51825, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      51827, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT4 || '-' || SEGMENT3 || '-' || SEGMENT5 || '-' || SEGMENT6 || '-' || SEGMENT7 || '-' || SEGMENT8 || '-' || SEGMENT9,  
      51845, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5,  
      51846, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      51847, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5 || '-' || SEGMENT6,  
      51868, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5 || '-' || SEGMENT6 || '-' || SEGMENT7,  
      51869, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5,  
      51889, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7,  
      51933, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      51974, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      52034, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      52074, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      52075, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      52076, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      52077, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      52078, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4,  
      52079, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5,  
      52341, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5,  
      52342, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5,  
      52362, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4,  
      52369, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7 || '.' || SEGMENT8,  
      52594, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7 || '.' || SEGMENT8 || '.' || SEGMENT9 || '.' || SEGMENT10 || '.' || SEGMENT11 || '.' || SEGMENT12,  
      52634, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7,  
      52695, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5,  
      52902, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4,  
      52922, SEGMENT1 || '-' || SEGMENT2 || '-' || SEGMENT3 || '-' || SEGMENT4 || '-' || SEGMENT5 || '-' || SEGMENT6 || '-' || SEGMENT7 || '-' || SEGMENT8 || '-' || SEGMENT9,  
      52962, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3,  
      53028, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5,  
      53108, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7,  
      53173, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3,  
      53213, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7,  
      53253, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7 || '.' || SEGMENT8,  
      53254, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5 || '.' || SEGMENT6 || '.' || SEGMENT7,  
      53255, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5,  
      53256, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5,  
      53257, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4 || '.' || SEGMENT5,  
      53380, SEGMENT1 || '.' || SEGMENT2 || '.' || SEGMENT3 || '.' || SEGMENT4, NULL)),  
 (DECODE(CHART_OF_ACCOUNTS_ID,  
      101, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 3),  
      50194, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 2),  
      50195, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 3),  
      50214, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 4) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 3),  
      50234, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 3),  
      50274, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 4) || '.' || RPAD(NVL(SEGMENT3, ' '), 4) || '.' || RPAD(NVL(SEGMENT4, ' '), 3),  
      50317, RPAD(NVL(SEGMENT1, ' '), 3) || '.' || RPAD(NVL(SEGMENT2, ' '), 4) || '.' || RPAD(NVL(SEGMENT3, ' '), 3) || '.' || RPAD(NVL(SEGMENT4, ' '), 6) || '.' || RPAD(NVL(SEGMENT5, ' '), 4) || '.' || RPAD(NVL(SEGMENT6, ' '), 3),  
      50558, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 4) || '-' || RPAD(NVL(SEGMENT3, ' '), 3) || '-' || RPAD(NVL(SEGMENT4, ' '), 5) || '-' || RPAD(NVL(SEGMENT5, ' '), 3) || '-' || RPAD(NVL(SEGMENT6, ' '), 3) || '-' || RPAD(NVL(SEGMENT7, ' '), 3),  
      50560, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 4) || '.' || RPAD(NVL(SEGMENT3, ' '), 3) || '.' || RPAD(NVL(SEGMENT4, ' '), 3),  
      50569, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 6) || '.' || RPAD(NVL(SEGMENT3, ' '), 3) || '.' || RPAD(NVL(SEGMENT4, ' '), 3) || '.' || RPAD(NVL(SEGMENT5, ' '), 3) || '.' || RPAD(NVL(SEGMENT6, ' '), 3),  
      50572, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 3) || '-' || RPAD(NVL(SEGMENT5, ' '), 3),  
      50577, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 6) || '-' || RPAD(NVL(SEGMENT3, ' '), 3) || '-' || RPAD(NVL(SEGMENT4, ' '), 3),  
      50581, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 4) || '.' || RPAD(NVL(SEGMENT3, ' '), 7) || '.' || RPAD(NVL(SEGMENT4, ' '), 3) || '.' || RPAD(NVL(SEGMENT5, ' '), 5) || '.' || RPAD(NVL(SEGMENT6, ' '), 5) || '.' || RPAD(NVL(SEGMENT7, ' '), 5) || '.' || RPAD(NVL(SEGMENT8, ' '), 5),  
      50589, RPAD(NVL(SEGMENT1, ' '), 3) || '.' || RPAD(NVL(SEGMENT2, ' '), 4) || '.' || RPAD(NVL(SEGMENT3, ' '), 6) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 10) || '.' || RPAD(NVL(SEGMENT6, ' '), 10) || '.' || RPAD(NVL(SEGMENT7, ' '), 10) || '.' || RPAD(NVL(SEGMENT8, ' '), 10),  
      50590, RPAD(NVL(SEGMENT1, ' '), 3) || '.' || RPAD(NVL(SEGMENT2, ' '), 4) || '.' || RPAD(NVL(SEGMENT3, ' '), 6) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 4) || '.' || RPAD(NVL(SEGMENT6, ' '), 3),  
      50671, RPAD(NVL(SEGMENT1, ' '), 3) || '-' || RPAD(NVL(SEGMENT2, ' '), 4) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 4),  
      50712, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 6) || '.' || RPAD(NVL(SEGMENT3, ' '), 3) || '.' || RPAD(NVL(SEGMENT4, ' '), 3),  
      50713, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 6) || '-' || RPAD(NVL(SEGMENT3, ' '), 3) || '-' || RPAD(NVL(SEGMENT4, ' '), 3),  
      50714, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 6) || '-' || RPAD(NVL(SEGMENT3, ' '), 3) || '-' || RPAD(NVL(SEGMENT4, ' '), 3) || '-' || RPAD(NVL(SEGMENT5, ' '), 3) || '-' || RPAD(NVL(SEGMENT6, ' '), 4),  
      50731, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 3),  
      50957, RPAD(NVL(SEGMENT1, ' '), 3) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 4) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 3) || '.' || RPAD(NVL(SEGMENT6, ' '), 4),  
      50958, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 4) || '.' || RPAD(NVL(SEGMENT3, ' '), 3) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 3) || '.' || RPAD(NVL(SEGMENT6, ' '), 3) || '.' || RPAD(NVL(SEGMENT7, ' '), 2),  
      50978, RPAD(NVL(SEGMENT1, ' '), 3) || '.' || RPAD(NVL(SEGMENT2, ' '), 5) || '.' || RPAD(NVL(SEGMENT3, ' '), 4) || '.' || RPAD(NVL(SEGMENT4, ' '), 3) || '.' || RPAD(NVL(SEGMENT5, ' '), 3),  
      51088, RPAD(NVL(SEGMENT1, ' '), 4) || '-' || RPAD(NVL(SEGMENT2, ' '), 5) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 4) || '-' || RPAD(NVL(SEGMENT6, ' '), 4) || '-' || RPAD(NVL(SEGMENT7, ' '), 5) || '-' || RPAD(NVL(SEGMENT8, ' '), 6),  
      51213, RPAD(NVL(SEGMENT6, ' '), 2) || '-' || RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 5) || '-' || RPAD(NVL(SEGMENT3, ' '), 5) || '-' || RPAD(NVL(SEGMENT4, ' '), 6) || '-' || RPAD(NVL(SEGMENT5, ' '), 4),  
      51253, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 3),  
      51286, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 3),  
      51306, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4),  
      51505, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 5) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 3),  
      51549, RPAD(NVL(SEGMENT1, ' '), 4) || '.' || RPAD(NVL(SEGMENT2, ' '), 12) || '.' || RPAD(NVL(SEGMENT3, ' '), 6) || '.' || RPAD(NVL(SEGMENT4, ' '), 6) || '.' || RPAD(NVL(SEGMENT5, ' '), 6) || '.' || RPAD(NVL(SEGMENT6, ' '), 10) || '.' || RPAD(NVL(SEGMENT7, ' '), 6) || '.' || RPAD(NVL(SEGMENT8, ' '), 6) || '.' || RPAD(NVL(SEGMENT9, ' '), 4) || '.' || RPAD(NVL(SEGMENT10, ' '), 1) || '.' || RPAD(NVL(SEGMENT11, ' '), 1),  
      51569, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4),  
      51623, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 11) || '.' || RPAD(NVL(SEGMENT3, ' '), 6) || '.' || RPAD(NVL(SEGMENT4, ' '), 6) || '.' || RPAD(NVL(SEGMENT5, ' '), 6) || '.' || RPAD(NVL(SEGMENT6, ' '), 7) || '.' || RPAD(NVL(SEGMENT7, ' '), 6),  
      51704, RPAD(NVL(SEGMENT1, ' '), 8) || '.' || RPAD(NVL(SEGMENT2, ' '), 10) || '.' || RPAD(NVL(SEGMENT3, ' '), 5) || '.' || RPAD(NVL(SEGMENT4, ' '), 15) || '.' || RPAD(NVL(SEGMENT5, ' '), 8) || '.' || RPAD(NVL(SEGMENT6, ' '), 12) || '.' || RPAD(NVL(SEGMENT7, ' '), 12) || '.' || RPAD(NVL(SEGMENT8, ' '), 10),  
      51825, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 3),  
      51827, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 5) || '-' || RPAD(NVL(SEGMENT4, ' '), 2) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 4) || '-' || RPAD(NVL(SEGMENT6, ' '), 5) || '-' || RPAD(NVL(SEGMENT7, ' '), 2) || '-' || RPAD(NVL(SEGMENT8, ' '), 3) || '-' || RPAD(NVL(SEGMENT9, ' '), 2),  
      51845, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 4) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 3),  
      51846, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 5) || '-' || RPAD(NVL(SEGMENT3, ' '), 3) || '-' || RPAD(NVL(SEGMENT4, ' '), 3) || '-' || RPAD(NVL(SEGMENT5, ' '), 3),  
      51847, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 4) || '-' || RPAD(NVL(SEGMENT3, ' '), 6) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 3) || '-' || RPAD(NVL(SEGMENT6, ' '), 1),  
      51868, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 10) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 2) || '-' || RPAD(NVL(SEGMENT5, ' '), 2) || '-' || RPAD(NVL(SEGMENT6, ' '), 3) || '-' || RPAD(NVL(SEGMENT7, ' '), 3),  
      51869, RPAD(NVL(SEGMENT1, ' '), 4) || '.' || RPAD(NVL(SEGMENT2, ' '), 10) || '.' || RPAD(NVL(SEGMENT3, ' '), 3) || '.' || RPAD(NVL(SEGMENT4, ' '), 3) || '.' || RPAD(NVL(SEGMENT5, ' '), 2),  
      51889, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 4) || '.' || RPAD(NVL(SEGMENT4, ' '), 3) || '.' || RPAD(NVL(SEGMENT5, ' '), 4) || '.' || RPAD(NVL(SEGMENT6, ' '), 3) || '.' || RPAD(NVL(SEGMENT7, ' '), 2),  
      51933, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 3) || '-' || RPAD(NVL(SEGMENT5, ' '), 4),  
      51974, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 3),  
      52034, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || LPAD(NVL(SEGMENT3, ' '), 10) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 3),  
      52074, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 3),  
      52075, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 3),  
      52076, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 3),  
      52077, RPAD(NVL(SEGMENT1, ' '), 1) || '-' || RPAD(NVL(SEGMENT2, ' '), 2) || '-' || RPAD(NVL(SEGMENT3, ' '), 6) || '-' || RPAD(NVL(SEGMENT4, ' '), 3) || '-' || RPAD(NVL(SEGMENT5, ' '), 3),  
      52078, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 3) || '-' || RPAD(NVL(SEGMENT3, ' '), 5) || '-' || RPAD(NVL(SEGMENT4, ' '), 3),  
      52079, RPAD(NVL(SEGMENT1, ' '), 3) || '.' || RPAD(NVL(SEGMENT2, ' '), 4) || '.' || RPAD(NVL(SEGMENT3, ' '), 6) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 6),  
      52341, RPAD(NVL(SEGMENT1, ' '), 3) || '.' || RPAD(NVL(SEGMENT2, ' '), 4) || '.' || RPAD(NVL(SEGMENT3, ' '), 6) || '.' || RPAD(NVL(SEGMENT4, ' '), 3) || '.' || RPAD(NVL(SEGMENT5, ' '), 4),  
      52342, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 4) || '.' || RPAD(NVL(SEGMENT3, ' '), 8) || '.' || RPAD(NVL(SEGMENT4, ' '), 3) || '.' || RPAD(NVL(SEGMENT5, ' '), 4),  
      52362, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 11) || '.' || RPAD(NVL(SEGMENT3, ' '), 11) || '.' || RPAD(NVL(SEGMENT4, ' '), 4),  
      52369, RPAD(NVL(SEGMENT1, ' '), 3) || '.' || RPAD(NVL(SEGMENT2, ' '), 4) || '.' || RPAD(NVL(SEGMENT3, ' '), 3) || '.' || RPAD(NVL(SEGMENT4, ' '), 6) || '.' || RPAD(NVL(SEGMENT5, ' '), 4) || '.' || RPAD(NVL(SEGMENT6, ' '), 3) || '.' || RPAD(NVL(SEGMENT7, ' '), 4) || '.' || RPAD(NVL(SEGMENT8, ' '), 3),  
      52594, RPAD(NVL(SEGMENT1, ' '), 4) || '.' || RPAD(NVL(SEGMENT2, ' '), 15) || '.' || RPAD(NVL(SEGMENT3, ' '), 4) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 6) || '.' || RPAD(NVL(SEGMENT6, ' '), 5) || '.' || RPAD(NVL(SEGMENT7, ' '), 6) || '.' || RPAD(NVL(SEGMENT8, ' '), 4) || '.' || RPAD(NVL(SEGMENT9, ' '), 8) || '.' || RPAD(NVL(SEGMENT10, ' '), 2) || '.' || RPAD(NVL(SEGMENT11, ' '), 2) || '.' || RPAD(NVL(SEGMENT12, ' '), 1),  
      52634, RPAD(NVL(SEGMENT1, ' '), 4) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 6) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 5) || '.' || RPAD(NVL(SEGMENT6, ' '), 5) || '.' || RPAD(NVL(SEGMENT7, ' '), 4),  
      52695, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 4) || '-' || RPAD(NVL(SEGMENT3, ' '), 5) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 5),  
      52902, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 5) || '-' || RPAD(NVL(SEGMENT3, ' '), 7) || '-' || RPAD(NVL(SEGMENT4, ' '), 3),  
      52922, RPAD(NVL(SEGMENT1, ' '), 2) || '-' || RPAD(NVL(SEGMENT2, ' '), 6) || '-' || RPAD(NVL(SEGMENT3, ' '), 4) || '-' || RPAD(NVL(SEGMENT4, ' '), 4) || '-' || RPAD(NVL(SEGMENT5, ' '), 4) || '-' || RPAD(NVL(SEGMENT6, ' '), 4) || '-' || RPAD(NVL(SEGMENT7, ' '), 4) || '-' || RPAD(NVL(SEGMENT8, ' '), 4) || '-' || RPAD(NVL(SEGMENT9, ' '), 4),  
      52962, RPAD(NVL(SEGMENT1, ' '), 4) || '.' || RPAD(NVL(SEGMENT2, ' '), 5) || '.' || RPAD(NVL(SEGMENT3, ' '), 3),  
      53028, RPAD(NVL(SEGMENT1, ' '), 3) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 4) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 4),  
      53108, RPAD(NVL(SEGMENT1, ' '), 4) || '.' || RPAD(NVL(SEGMENT2, ' '), 8) || '.' || RPAD(NVL(SEGMENT3, ' '), 6) || '.' || RPAD(NVL(SEGMENT4, ' '), 6) || '.' || RPAD(NVL(SEGMENT5, ' '), 6) || '.' || RPAD(NVL(SEGMENT6, ' '), 4) || '.' || RPAD(NVL(SEGMENT7, ' '), 6),  
      53173, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 6),  
      53213, RPAD(NVL(SEGMENT1, ' '), 3) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 5) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 3) || '.' || RPAD(NVL(SEGMENT6, ' '), 3) || '.' || RPAD(NVL(SEGMENT7, ' '), 3),  
      53253, RPAD(NVL(SEGMENT1, ' '), 3) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 6) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 3) || '.' || RPAD(NVL(SEGMENT6, ' '), 3) || '.' || RPAD(NVL(SEGMENT7, ' '), 3) || '.' || RPAD(NVL(SEGMENT8, ' '), 3),  
      53254, RPAD(NVL(SEGMENT1, ' '), 3) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 6) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 3) || '.' || RPAD(NVL(SEGMENT6, ' '), 3) || '.' || RPAD(NVL(SEGMENT7, ' '), 3),  
      53255, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 4) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 3),  
      53256, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 4) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 3),  
      53257, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 3) || '.' || RPAD(NVL(SEGMENT3, ' '), 4) || '.' || RPAD(NVL(SEGMENT4, ' '), 4) || '.' || RPAD(NVL(SEGMENT5, ' '), 3),  
      53380, RPAD(NVL(SEGMENT1, ' '), 2) || '.' || RPAD(NVL(SEGMENT2, ' '), 5) || '.' || RPAD(NVL(SEGMENT3, ' '), 3) || '.' || RPAD(NVL(SEGMENT4, ' '), 3), NULL)),  
 ACCOUNT_TYPE, REFERENCE3, JGZZ_RECON_FLAG, DETAIL_BUDGETING_ALLOWED_FLAG, DETAIL_POSTING_ALLOWED_FLAG, TEMPLATE_ID, LEDGER_SEGMENT, ATTRIBUTE1, REVALUATION_ID, SEGMENT_ATTRIBUTE17, SEGMENT_ATTRIBUTE18, SEGMENT_ATTRIBUTE19, SEGMENT_ATTRIBUTE20, SEGMENT_ATTRIBUTE21, SEGMENT_ATTRIBUTE22, SEGMENT_ATTRIBUTE23, SEGMENT_ATTRIBUTE24, SEGMENT_ATTRIBUTE25, SEGMENT_ATTRIBUTE26, SEGMENT_ATTRIBUTE27, SEGMENT_ATTRIBUTE28, SEGMENT_ATTRIBUTE29, SEGMENT_ATTRIBUTE30, SEGMENT_ATTRIBUTE31, SEGMENT_ATTRIBUTE32, SEGMENT_ATTRIBUTE33, SEGMENT_ATTRIBUTE34, SEGMENT_ATTRIBUTE35, SEGMENT_ATTRIBUTE36, SEGMENT_ATTRIBUTE37, SEGMENT_ATTRIBUTE38, SEGMENT_ATTRIBUTE39, SEGMENT_ATTRIBUTE40, SEGMENT_ATTRIBUTE41, SEGMENT_ATTRIBUTE42, JGZZ_RECON_CONTEXT, REFERENCE1, REFERENCE2, REFERENCE4, REFERENCE5, PRESERVE_FLAG, REFRESH_FLAG, IGI_BALANCED_BUDGET_FLAG, COMPANY_COST_CENTER_ORG_ID, ALTERNATE_CODE_COMBINATION_ID, LAST_UPDATE_DATE, LAST_UPDATED_BY, ENABLED_FLAG, SUMMARY_FLAG, SEGMENT1, SEGMENT2, SEGMENT3, SEGMENT4, SEGMENT5, SEGMENT6, SEGMENT7, SEGMENT8, SEGMENT9, SEGMENT10, SEGMENT11, SEGMENT12, SEGMENT13, SEGMENT14, SEGMENT15, SEGMENT16, SEGMENT17, SEGMENT18, SEGMENT19, SEGMENT20, SEGMENT21, SEGMENT22, SEGMENT23, SEGMENT24, SEGMENT25, SEGMENT26, SEGMENT27, SEGMENT28, SEGMENT29, SEGMENT30, DESCRIPTION, ALLOCATION_CREATE_FLAG, START_DATE_ACTIVE, END_DATE_ACTIVE, ATTRIBUTE2, ATTRIBUTE3, ATTRIBUTE4, ATTRIBUTE5, ATTRIBUTE6, ATTRIBUTE7, ATTRIBUTE8, ATTRIBUTE9, ATTRIBUTE10, CONTEXT, SEGMENT_ATTRIBUTE1, SEGMENT_ATTRIBUTE2, SEGMENT_ATTRIBUTE3, SEGMENT_ATTRIBUTE4, SEGMENT_ATTRIBUTE5, SEGMENT_ATTRIBUTE6, SEGMENT_ATTRIBUTE7, SEGMENT_ATTRIBUTE8, SEGMENT_ATTRIBUTE9, SEGMENT_ATTRIBUTE10, SEGMENT_ATTRIBUTE11, SEGMENT_ATTRIBUTE12, SEGMENT_ATTRIBUTE13, SEGMENT_ATTRIBUTE14, SEGMENT_ATTRIBUTE15, SEGMENT_ATTRIBUTE16 
 FROM GL_CODE_COMBINATIONS
 