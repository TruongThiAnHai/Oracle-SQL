CREATE OR REPLACE TRIGGER delete_review
INSTEAD OF DELETE ON reviews_film                 

BEGIN
   DELETE from REVIEWS
        WHERE review_id = :old.review_id OR movie_id = :old.movie_id;
END;
/