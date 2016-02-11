-- finding a flexfield that has at least 1 column that use independent value set
select f.descriptive_flexfield_name
,  f.application_table_name
,  f.APPLICATION_ID
, f.CONCATENATED_SEGS_VIEW_NAME
from fnd_descriptive_flexs_vl f
where exists (
  Select 1 
  from  fnd_descr_flex_col_usage_vl fu
  where f.descriptive_flexfield_name = fu.descriptive_flexfield_name
  and exists(
    select 1 
    From fnd_flex_value_sets s
    where s.validation_type in ('I', 'X')
    and exists (
       select 1 
       from fnd_flex_values v 
       where s.flex_value_Set_id = v.flex_value_Set_id
       )
    and fu.FLEX_VALUE_SET_ID = s.FLEX_VALUE_SET_ID
    )
  )
and  f.APPLICATION_TABLE_NAME <> 'FND_SRS_MASTER'
order by 3, 2,1;
--> We will use FA_ADDITIONS_B table

select fu.DESCRIPTIVE_FLEX_CONTEXT_CODE, fu.APPLICATION_COLUMN_NAME, fu.END_USER_COLUMN_NAME, fu.FLEX_VALUE_SET_ID
from  fnd_descr_flex_col_usage_vl fu
where 1=1 
and descriptive_flexfield_name like 'FA_ADDITION%'--'JG_RA_BATCH_SOURCES%'
and flex_value_Set_id is not null 
and exists(
    select 1 
    From fnd_flex_value_sets s
    where s.validation_type in ('I', 'X')
    and exists (
       select 1 
       from fnd_flex_values v 
       where s.flex_value_Set_id = v.flex_value_Set_id
       )
    and fu.FLEX_VALUE_SET_ID = s.FLEX_VALUE_SET_ID
    )
/

desc FA_ADDITIONS_B_DFV
/*
desc FA_ADDITIONS_B_DFV
Name                   Null Type           
---------------------- ---- -------------- 
ROW_ID                      ROWID()        
CONTEXT_VALUE               VARCHAR2(210)  
INSURANCE_COMPANY           VARCHAR2(150)  
INSURANCE_RENEWAL_DATE      DATE           
BUILDING_SIZE               NUMBER         
AREA                        NUMBER         
LICENSE_PLATE               VARCHAR2(150)  
LICENSE_RENEWAL_DATE        DATE           
NUMBER_OF_AXLES             VARCHAR2(150)  
CARGO_SIZE                  NUMBER         
CONCATENATED_SEGMENTS       VARCHAR2(1116) 
*/

select * From all_views where view_name like 'FA_ADDITIONS_B_DFV';

SELECT ROWID
, CONTEXT
, (DECODE (CONTEXT, 'VEHICLE-OWNED STANDARD', ATTRIBUTE3, 'VEHICLE-OWNED LUXURY', ATTRIBUTE3, 'VEHICLE-OWNED HEAVY', ATTRIBUTE3, 'VEHICLE-LEASED STANDARD', ATTRIBUTE3, 'BUILDING-OFFICE', ATTRIBUTE1, 'BUILDING-MANUFACTURING', ATTRIBUTE1, NULL))
, (DECODE (CONTEXT, 'VEHICLE-OWNED STANDARD', TO_DATE(ATTRIBUTE4, 'YYYY/MM/DD HH24:MI:SS'), 'VEHICLE-OWNED LUXURY', TO_DATE(ATTRIBUTE4, 'YYYY/MM/DD HH24:MI:SS'), 'VEHICLE-OWNED HEAVY', TO_DATE(ATTRIBUTE4, 'YYYY/MM/DD HH24:MI:SS'), 'VEHICLE-LEASED STANDARD', TO_DATE(ATTRIBUTE4, 'YYYY/MM/DD HH24:MI:SS'), 'BUILDING-OFFICE', TO_DATE(ATTRIBUTE2, 'YYYY/MM/DD HH24:MI:SS'), 'BUILDING-MANUFACTURING', TO_DATE(ATTRIBUTE2, 'YYYY/MM/DD HH24:MI:SS'), NULL))
, (DECODE (CONTEXT, 'BUILDING-OFFICE', FND_NUMBER.CANONICAL_TO_NUMBER(ATTRIBUTE3), 'BUILDING-MANUFACTURING', FND_NUMBER.CANONICAL_TO_NUMBER(ATTRIBUTE3), NULL))
, (DECODE (CONTEXT, 'LAND-OCCUPIED', FND_NUMBER.CANONICAL_TO_NUMBER(ATTRIBUTE1), NULL))
, (DECODE (CONTEXT, 'VEHICLE-OWNED STANDARD', ATTRIBUTE1, 'VEHICLE-OWNED LUXURY', ATTRIBUTE1, 'VEHICLE-OWNED HEAVY', ATTRIBUTE1, 'VEHICLE-LEASED STANDARD', ATTRIBUTE1, NULL))
, (DECODE (CONTEXT, 'VEHICLE-OWNED STANDARD', TO_DATE(ATTRIBUTE2, 'YYYY/MM/DD HH24:MI:SS'), 'VEHICLE-OWNED LUXURY', TO_DATE(ATTRIBUTE2, 'YYYY/MM/DD HH24:MI:SS'), 'VEHICLE-OWNED HEAVY', TO_DATE(ATTRIBUTE2, 'YYYY/MM/DD HH24:MI:SS'), 'VEHICLE-LEASED STANDARD', TO_DATE(ATTRIBUTE2, 'YYYY/MM/DD HH24:MI:SS'), NULL))
, ATTRIBUTE5
, (DECODE (CONTEXT, 'VEHICLE-OWNED HEAVY', FND_NUMBER.CANONICAL_TO_NUMBER(ATTRIBUTE6), NULL))
, (DECODE (CONTEXT,  
      'BUILDING-MANUFACTURING', CONTEXT || '-' || ATTRIBUTE1 || '-' || ATTRIBUTE2 || '-' || ATTRIBUTE3,  
      'BUILDING-OFFICE', CONTEXT || '-' || ATTRIBUTE1 || '-' || ATTRIBUTE2 || '-' || ATTRIBUTE3,  
      'LAND-OCCUPIED', CONTEXT || '-' || ATTRIBUTE1,  
      'VEHICLE-LEASED STANDARD', CONTEXT || '-' || ATTRIBUTE1 || '-' || ATTRIBUTE2 || '-' || ATTRIBUTE3 || '-' || ATTRIBUTE4,  
      'VEHICLE-OWNED HEAVY', CONTEXT || '-' || ATTRIBUTE1 || '-' || ATTRIBUTE2 || '-' || ATTRIBUTE3 || '-' || ATTRIBUTE4 || '-' || ATTRIBUTE5 || '-' || ATTRIBUTE6,  
      'VEHICLE-OWNED LUXURY', CONTEXT || '-' || ATTRIBUTE1 || '-' || ATTRIBUTE2 || '-' || ATTRIBUTE3 || '-' || ATTRIBUTE4,  
      'VEHICLE-OWNED STANDARD', CONTEXT || '-' || ATTRIBUTE1 || '-' || ATTRIBUTE2 || '-' || ATTRIBUTE3 || '-' || ATTRIBUTE4, NULL)) 
 FROM FA_ADDITIONS_B
/



select * From fnd_flex_values where FLEX_VALUE_SET_ID = 1002501;



select t.*, v.* From fnd_flex_values_TL t
inner join fnd_flex_values v
on v.flex_value_id = t.flex_value_id
where rownum <10 and v.FLEX_VALUE_SET_ID = 1002501
;




-- Other useful queries

desc HZ_CUST_PROFILE_CLASSES1_DFV
desc AR_CUSTOMER_PROFILE_CLASS1_DFV
desc HZ_CUST_PROFILE_CLASSES2_DFV <-- correct one


select * from HZ_CUST_PROFILE_CLASSES2_DFV  where profile_class_name like 'Average';


select * From fnd_flex_values where FLEX_VALUE_SET_ID = 1002501;



select * from FND_FLEX_VALUE_SETS where 1=1 and flex_value_Set_name like '%DE_HR_R11i_PS_ KOMPETENZARTEN%';
--> VALIDATION_TYPE = 'I' -- independent
-->  X --> independent translated

select * from fnd_flex_values where flex_value_set_id = 1009706;


select * From fnd_flex_value_Sets 
where flex_value_Set_id in (
select flex_value_Set_id from  fnd_descr_flex_col_usage_vl 
where 1=1 
and descriptive_flexfield_name like 'JG_RA_BATCH_SOURCES%'
and flex_value_Set_id is not null
);