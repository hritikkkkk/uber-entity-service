ALTER TABLE review
ADD CONSTRAINT uk_review_booking UNIQUE (booking_id);


