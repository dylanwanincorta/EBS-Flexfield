-- Key Flexfield related tables
select table_name From all_tables where owner = 'APPLSYS' and table_name like 'FND_ID_FLEX%';

/*
FND_ID_FLEX_STRUCTURES_TL      
FND_ID_FLEX_STRUCTURES         
FND_ID_FLEX_SEGMENTS_TL        
FND_ID_FLEX_SEGMENTS           
FND_ID_FLEXS      
*/
desc FND_ID_FLEXS  
desc FND_ID_FLEX_STRUCTURES
desc FND_ID_FLEX_SEGMENTS 

desc GL_CODE_COMBINATIONS_KFV

select  * from fnd_id_flexs ;

select table_name From all_tables where table_name like 'FND%DESCR%FLEX%';
/*
TABLE_NAME                   
------------------------------
FND_COMPILED_DESCRIPTIVE_FLEXS 
FND_DESCRIPTIVE_FLEXS          
FND_DESCRIPTIVE_FLEXS_TL       
FND_DESCR_FLEX_COLUMN_USAGES   
FND_DESCR_FLEX_COL_USAGE_TL    
FND_DESCR_FLEX_CONTEXTS        
FND_DESCR_FLEX_CONTEXTS_TL  
*/

desc FND_DESCR_FLEX_COL_USAGE_TL  
desc FND_DESCR_FLEX_COLUMN_USAGES 

select * From all_tables where table_name like 'FND%V%';



