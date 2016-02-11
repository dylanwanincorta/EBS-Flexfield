desc RA_BATCHES_ALL_DFV

  select * FRom all_views where owner='APPS' and view_name='RA_BATCH_SOURCES_ALL1_DFV';

desc RA_BATCH_SOURCES_ALL1_DFV
/*
desc RA_BATCH_SOURCES_ALL1_DFV
Name                           Null Type           
------------------------------ ---- -------------- 
ROW_ID                              ROWID()        
CONTEXT_VALUE                       VARCHAR2(30)   
REFERENCE_TRANSACTION_SOURCE        VARCHAR2(150)  
INVOICE_WORD                        VARCHAR2(150)  
INITIAL_TRANSACTION_NUMBER          VARCHAR2(150)  
FINAL_TRANSACTION_NUMBER            VARCHAR2(150)  
LAST_ISSUED_DATE                    DATE           
ADVANCE_DAYS                        NUMBER         
IMPORTED_SOURCE                     VARCHAR2(150)  
FOUR_DIGIT_CODE                     VARCHAR2(150)  
DOCUMENT_LETTER                     VARCHAR2(150)  
LAST_TRANSACTION_DATE               DATE           
FISCAL_PRINTER                      VARCHAR2(150)  
CAI_NUMBER                          NUMBER         
CAI_DUE_DATE                        DATE           
ASSOCIATED_IMPORT_BATCH_SOURCE      VARCHAR2(150)  
COMPANY_NAME                        VARCHAR2(150)  
INVOICE_SERIES                      VARCHAR2(150)  
INVOICE_SUB_SERIES                  VARCHAR2(150)  
ELECTRONIC_INV_ISSUING_SOURCE       VARCHAR2(150)  
FISCAL_DOCUMENT_CODE                VARCHAR2(150)  
PRINTING_ORIENTATION                VARCHAR2(150)  
CONCATENATED_SEGMENTS               VARCHAR2(1238) 
*/

SELECT ROWID
, GLOBAL_ATTRIBUTE_CATEGORY
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JA.TW.RAXSUMSC.BATCH_SOURCES', GLOBAL_ATTRIBUTE1, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JA.TW.RAXSUMSC.BATCH_SOURCES', GLOBAL_ATTRIBUTE3, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JA.TW.RAXSUMSC.BATCH_SOURCES', GLOBAL_ATTRIBUTE2, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JA.TW.RAXSUMSC.BATCH_SOURCES', GLOBAL_ATTRIBUTE4, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JA.TW.RAXSUMSC.BATCH_SOURCES', TO_DATE(GLOBAL_ATTRIBUTE5, 'YYYY/MM/DD HH24:MI:SS'), NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.AR.RAXSUMSC.BATCH_SOURCES', FND_NUMBER.CANONICAL_TO_NUMBER(GLOBAL_ATTRIBUTE5), 'JA.TW.RAXSUMSC.BATCH_SOURCES', FND_NUMBER.CANONICAL_TO_NUMBER(GLOBAL_ATTRIBUTE6), NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.AR.RAXSUMSC.BATCH_SOURCES', GLOBAL_ATTRIBUTE1, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.AR.RAXSUMSC.BATCH_SOURCES', GLOBAL_ATTRIBUTE2, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.AR.RAXSUMSC.BATCH_SOURCES', GLOBAL_ATTRIBUTE3, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.AR.RAXSUMSC.BATCH_SOURCES', TO_DATE(GLOBAL_ATTRIBUTE4, 'YYYY/MM/DD HH24:MI:SS'), NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.AR.RAXSUMSC.BATCH_SOURCES', GLOBAL_ATTRIBUTE7, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.AR.RAXSUMSC.BATCH_SOURCES', FND_NUMBER.CANONICAL_TO_NUMBER(GLOBAL_ATTRIBUTE8), NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.AR.RAXSUMSC.BATCH_SOURCES', TO_DATE(GLOBAL_ATTRIBUTE9, 'YYYY/MM/DD HH24:MI:SS'), NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.BR.RAXSUMSC.Additional', GLOBAL_ATTRIBUTE1, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.BR.RAXSUMSC.Additional', GLOBAL_ATTRIBUTE2, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.BR.RAXSUMSC.Additional', GLOBAL_ATTRIBUTE3, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.BR.RAXSUMSC.Additional', GLOBAL_ATTRIBUTE4, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.BR.RAXSUMSC.Additional', GLOBAL_ATTRIBUTE5, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.BR.RAXSUMSC.Additional', GLOBAL_ATTRIBUTE6, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY, 'JL.BR.RAXSUMSC.Additional', GLOBAL_ATTRIBUTE7, NULL))
, (DECODE (GLOBAL_ATTRIBUTE_CATEGORY,  
      'JA.TW.RAXSUMSC.BATCH_SOURCES'
      , GLOBAL_ATTRIBUTE_CATEGORY || '.' || GLOBAL_ATTRIBUTE1 || '.' || GLOBAL_ATTRIBUTE3 || '.' || GLOBAL_ATTRIBUTE2 || '.' || GLOBAL_ATTRIBUTE4 || '.' || GLOBAL_ATTRIBUTE5 || '.' || GLOBAL_ATTRIBUTE6,  
      'JL.AR.RAXSUMSC.BATCH_SOURCES', GLOBAL_ATTRIBUTE_CATEGORY || '.' || GLOBAL_ATTRIBUTE1 || '.' || GLOBAL_ATTRIBUTE2 || '.' || GLOBAL_ATTRIBUTE3 || '.' || GLOBAL_ATTRIBUTE4 || '.' || GLOBAL_ATTRIBUTE5 || '.' || GLOBAL_ATTRIBUTE7 || '.' || GLOBAL_ATTRIBUTE8 || '.' || GLOBAL_ATTRIBUTE9,  
      'JL.BR.RAXSUMSC.Additional', GLOBAL_ATTRIBUTE_CATEGORY || '.' || GLOBAL_ATTRIBUTE1 || '.' || GLOBAL_ATTRIBUTE2 || '.' || GLOBAL_ATTRIBUTE3 || '.' || GLOBAL_ATTRIBUTE4 || '.' || GLOBAL_ATTRIBUTE5 || '.' || GLOBAL_ATTRIBUTE6 || '.' || GLOBAL_ATTRIBUTE7, NULL)) 
 FROM RA_BATCH_SOURCES_ALL
 /