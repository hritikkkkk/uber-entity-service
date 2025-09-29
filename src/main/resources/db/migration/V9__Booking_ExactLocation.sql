ALTER TABLE booking ADD COLUMN start_location_id BIGINT;

ALTER TABLE booking ADD COLUMN end_location_id BIGINT;

ALTER TABLE booking
ADD CONSTRAINT fk_booking_start_location
    FOREIGN KEY (start_location_id)
    REFERENCES exact_location(id);

ALTER TABLE booking
ADD CONSTRAINT fk_booking_end_location
    FOREIGN KEY (end_location_id)
    REFERENCES exact_location(id);
