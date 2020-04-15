--This is control file for table Actors
LOAD DATA
INFILE 'G:\Documents\6 semester\Oracle\Lab1-2\Actors.csv'
BADFILE 'C:\Oracle18cXE\oradata\XE\Actors.bad'
DISCARDFILE 'C:\Oracle18cXE\oradata\XE\Actors.dsc'
INTO TABLE Actors
APPEND
FIELDS TERMINATED BY ',' 
TRAILING NULLCOLS
   (	Actor_id,
	Actor_name,
	Actor_year,
    )