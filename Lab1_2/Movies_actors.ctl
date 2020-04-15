--This is control file for table Movies_actors
LOAD DATA
INFILE 'G:\Documents\6 semester\Oracle\Lab1-2\Movies_actors.csv'
BADFILE 'C:\Oracle18cXE\oradata\XE\Movies_actors.bad'
DISCARDFILE 'C:\Oracle18cXE\oradata\XE\Movies_actors.dsc'
INTO TABLE Movies_actors
APPEND
FIELDS TERMINATED BY ',' 
TRAILING NULLCOLS
   (	Movie_id,
	Actor_id,
    )