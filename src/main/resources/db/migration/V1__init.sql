CREATE TABLE booking (
    id BIGINT NOT NULL AUTO_INCREMENT,
    created_at DATETIME(6) NOT NULL,
    updated_at DATETIME(6) NOT NULL,
    driver_id BIGINT,
    passenger_id BIGINT,
    review_id BIGINT,
    start_time DATETIME(6),
    end_time DATETIME(6),
    total_distance BIGINT,
    booking_status ENUM(
        'SCHEDULED',
        'CANCELLED',
        'CAB_ARRIVED',
        'ASSIGNING_DRIVER',
        'IN_RIDE',
        'COMPLETED'
    ) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE driver (
    id BIGINT NOT NULL AUTO_INCREMENT,
    created_at DATETIME(6) NOT NULL,
    updated_at DATETIME(6) NOT NULL,
    license_number VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE passenger (
    id BIGINT NOT NULL AUTO_INCREMENT,
    created_at DATETIME(6) NOT NULL,
    updated_at DATETIME(6) NOT NULL,
    name VARCHAR(255),
    PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE review (
    id BIGINT NOT NULL AUTO_INCREMENT,
    rating FLOAT(53),
    created_at DATETIME(6) NOT NULL,
    updated_at DATETIME(6) NOT NULL,
    content VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE passenger_review (
    id BIGINT NOT NULL,
    passenger_rating VARCHAR(255) NOT NULL,
    passenger_review_content VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB;

-- Unique constraints
ALTER TABLE booking
    ADD CONSTRAINT UK_booking_review_id UNIQUE (review_id);

ALTER TABLE driver
    ADD CONSTRAINT UK_driver_license_number UNIQUE (license_number);

-- Foreign key constraints
ALTER TABLE booking
    ADD CONSTRAINT FK_booking_driver FOREIGN KEY (driver_id) REFERENCES driver (id);

ALTER TABLE booking
    ADD CONSTRAINT FK_booking_passenger FOREIGN KEY (passenger_id) REFERENCES passenger (id);

ALTER TABLE booking
    ADD CONSTRAINT FK_booking_review FOREIGN KEY (review_id) REFERENCES review (id);

ALTER TABLE passenger_review
    ADD CONSTRAINT FK_passenger_review_to_review FOREIGN KEY (id) REFERENCES review (id);
