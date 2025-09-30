-- ================================
-- Create table: car
-- ================================
CREATE TABLE car (
    id BIGINT NOT NULL AUTO_INCREMENT,
    created_at DATETIME(6) NOT NULL,
    updated_at DATETIME(6) NOT NULL,
    plate_number VARCHAR(15) NOT NULL UNIQUE,
    color ENUM('WHITE', 'BLACK', 'SILVER', 'BLUE', 'RED', 'GREEN', 'YELLOW', 'GREY', 'BROWN', 'OTHER') NOT NULL,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_type ENUM('SEDAN', 'SUV', 'MINI', 'LUXURY', 'AUTO', 'BIKE', 'OUTSTATION','RENTAL') NOT NULL,
    capacity INT,
    active BOOLEAN NOT NULL DEFAULT TRUE,
    fuel_type ENUM('PETROL', 'DIESEL', 'ELECTRIC', 'CNG', 'HYBRID'),
    driver_id BIGINT UNIQUE,
    CONSTRAINT pk_car PRIMARY KEY (id),
    CONSTRAINT fk_car_driver FOREIGN KEY (driver_id) REFERENCES driver(id)
);


-- ================================
-- Alter table: driver
-- Add new columns & relationships
-- ================================

ALTER TABLE driver
    ADD COLUMN last_known_location_id BIGINT,
    ADD COLUMN home_id BIGINT,
    ADD COLUMN active_city VARCHAR(255),
    ADD COLUMN rating DOUBLE,
    ADD COLUMN is_available BOOLEAN;

ALTER TABLE driver
    ADD CONSTRAINT fk_driver_last_known_location FOREIGN KEY (last_known_location_id) REFERENCES exact_location(id);

ALTER TABLE driver
    ADD CONSTRAINT fk_driver_home FOREIGN KEY (home_id) REFERENCES exact_location(id);
