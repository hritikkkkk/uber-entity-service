CREATE TABLE db_constant (
    id BIGINT NOT NULL AUTO_INCREMENT,
    created_at DATETIME(6) NOT NULL,
    updated_at DATETIME(6) NOT NULL,
    name VARCHAR(255) NOT NULL UNIQUE,
    value VARCHAR(255),
    CONSTRAINT pk_db_constant PRIMARY KEY (id)
);

CREATE TABLE otp (
    id BIGINT NOT NULL AUTO_INCREMENT,
    created_at DATETIME(6) NOT NULL,
    updated_at DATETIME(6) NOT NULL,
    code VARCHAR(10),
    sent_to_number VARCHAR(20),
    CONSTRAINT pk_otp PRIMARY KEY (id)
);
