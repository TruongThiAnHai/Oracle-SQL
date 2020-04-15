--This is control file for table Reviews
LOAD DATA
INFILE 'G:\Documents\6 semester\Oracle\Lab1-2\Reviews.csv'
BADFILE 'C:\Oracle18cXE\oradata\XE\Reviews.bad'
DISCARDFILE 'C:\Oracle18cXE\oradata\XE\Reviews.dsc'
INTO TABLE Reviews
APPEND
FIELDS TERMINATED BY ',' 
TRAILING NULLCOLS
   (	
	Review_id,
	Movie_id,
	Episode_id,
	Review
    )