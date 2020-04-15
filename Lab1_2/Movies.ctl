--This is control file for table Movies
LOAD DATA
INFILE 'G:\Documents\6 semester\Oracle\Lab1-2\Movies.csv'
BADFILE 'C:\Oracle18cXE\oradata\XE\Movies.bad'
DISCARDFILE 'C:\Oracle18cXE\oradata\XE\Movies.dsc'
INTO TABLE Movies
APPEND
FIELDS TERMINATED BY ',' 
TRAILING NULLCOLS
   (	Movie_id,
	Movie_name,
	Movie_year,
	Movie_premise
    )