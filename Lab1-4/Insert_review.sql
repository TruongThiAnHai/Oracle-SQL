CREATE OR REPLACE TRIGGER insert_review
INSTEAD OF INSERT ON reviews_film
REFERENCING NEW AS n                 
FOR EACH ROW
DECLARE
   rowcnt number;
BEGIN
   SELECT COUNT(*) INTO rowcnt FROM Movies WHERE movie_id = :n.movie_id;
   IF rowcnt = 0  THEN
       INSERT INTO Movies (movie_id,movie_name) VALUES (:n.movie_id, :n.movie_name);
       DBMS_OUTPUT.put_line('Added new film to Movies!');
   END IF;
   INSERT INTO reviews(review_id,movie_id,review) VALUES (:n.review_id,:n.movie_id,:n.review);
   DBMS_OUTPUT.put_line('Added new review to Reviews!');
END;
/
