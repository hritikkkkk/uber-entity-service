CREATE TABLE email_verification_tokens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    token VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL,
    expires_at DATETIME NOT NULL,
    verified_at DATETIME,
    passenger_id BIGINT NOT NULL,
    FOREIGN KEY (passenger_id) REFERENCES passenger(id)
);

-- Also need to add columns to passengers table
ALTER TABLE passenger ADD COLUMN email_verified BOOLEAN DEFAULT FALSE;
ALTER TABLE passenger ADD COLUMN enabled BOOLEAN DEFAULT FALSE;