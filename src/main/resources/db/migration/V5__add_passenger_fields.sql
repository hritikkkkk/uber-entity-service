
ALTER TABLE passenger
ADD COLUMN phone_number VARCHAR(20),
ADD COLUMN email VARCHAR(255),
ADD COLUMN password VARCHAR(255);


UPDATE passenger
SET phone_number = CONCAT('0000000000', id),
    email = CONCAT('passenger', id, '@example.com'),
    password = 'defaultPassword';

ALTER TABLE passenger
MODIFY COLUMN phone_number VARCHAR(20) NOT NULL,
MODIFY COLUMN email VARCHAR(255) NOT NULL UNIQUE,
MODIFY COLUMN password VARCHAR(255) NOT NULL;

