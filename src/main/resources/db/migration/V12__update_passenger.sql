ALTER TABLE passenger
      ADD COLUMN last_known_location_id BIGINT,
      ADD COLUMN active_booking_id BIGINT,
      ADD COLUMN rating DOUBLE,
      ADD COLUMN home_id BIGINT;



ALTER TABLE passenger
    ADD CONSTRAINT FK_PASSENGER_ON_ACTIVE_BOOKING FOREIGN KEY (active_booking_id) REFERENCES booking (id);

ALTER TABLE passenger
    ADD CONSTRAINT FK_PASSENGER_ON_HOME FOREIGN KEY (home_id) REFERENCES exact_location (id);

ALTER TABLE passenger
    ADD CONSTRAINT FK_PASSENGER_ON_LAST_KNOWN_LOCATION FOREIGN KEY (last_known_location_id) REFERENCES exact_location (id);