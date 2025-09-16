ALTER TABLE review MODIFY booking_id BIGINT NULL;

UPDATE review r
JOIN booking b ON b.review_id = r.id
SET r.booking_id = b.id;

ALTER TABLE review MODIFY booking_id BIGINT NOT NULL;

ALTER TABLE review
    ADD CONSTRAINT FK_BOOKING_REVIEW_ON_BOOKING
    FOREIGN KEY (booking_id) REFERENCES booking (id);


ALTER TABLE booking DROP COLUMN review_id;
