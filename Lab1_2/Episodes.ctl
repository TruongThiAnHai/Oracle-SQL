--This is control file for table Episodes
LOAD DATA
INFILE 'G:\Documents\6 semester\Oracle\Lab1-2\Episodes.csv'
BADFILE 'C:\Oracle18cXE\oradata\XE\Episodes.bad'
DISCARDFILE 'C:\Oracle18cXE\oradata\XE\Episodes.dsc'
INTO TABLE Episodes
APPEND
FIELDS TERMINATED BY ',' 
TRAILING NULLCOLS
   (	Episode_id,
	Movie_id,
	Episode_name,
    )