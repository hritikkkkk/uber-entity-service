CREATE TABLE exact_location (
    id BIGINT NOT NULL AUTO_INCREMENT,
    created_at DATETIME(6) NOT NULL,
    updated_at DATETIME(6) NOT NULL,
    latitude DOUBLE NOT NULL,
    longitude DOUBLE NOT NULL,
    CONSTRAINT pk_exact_location PRIMARY KEY (id)
);

CREATE TABLE named_location (
    id BIGINT NOT NULL AUTO_INCREMENT,
    created_at DATETIME(6) NOT NULL,
    updated_at DATETIME(6) NOT NULL,
    exact_location_id BIGINT NULL,
    name VARCHAR(255) NULL,
    zip_code VARCHAR(255) NULL,
    city VARCHAR(255) NULL,
    country VARCHAR(255) NULL,
    state VARCHAR(255) NULL,
    CONSTRAINT pk_named_location PRIMARY KEY (id)
);

ALTER TABLE named_location
    ADD CONSTRAINT FK_named_location_on_exact_location
    FOREIGN KEY (exact_location_id) REFERENCES exact_location (id);
