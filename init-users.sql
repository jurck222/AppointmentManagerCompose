CREATE TABLE IF NOT EXISTS _user (
    id INT PRIMARY KEY,
    password VARCHAR(255),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(255),
    role SMALLINT
);

CREATE TABLE IF NOT EXISTS user_services (
    user_id INT,
    services SMALLINT,
    PRIMARY KEY (user_id, services),
    FOREIGN KEY (user_id) REFERENCES _user(id)
);

INSERT INTO _user (id, password, first_name, last_name, email, phone, role) VALUES
(1,'$2a$10$WdX2UxB/q7p1/Hh6kawhRuB6MIhNI7LrFc31CrHkASdflcxaXIL3y', 'Lojze', 'Slak', 'lojze@example.com', '555-6789', 1),
(2,'$2a$10$mNJfF7MVrtawxGsYcNu7Ye8KLX/8ZORZWvRavK3g1lvZEI88upbNS', 'Testko', 'Testic', 'testko@example.com', '555-4321', 0),
(3,'$2a$10$WdX2UxB/q7p1/Hh6kawhRuB6MIhNI7LrFc31CrHkASdflcxaXIL3y', 'Janez', 'Kranjski', 'janez@example.com', '555-1237', 1),
(4,'$2a$10$WdX2UxB/q7p1/Hh6kawhRuB6MIhNI7LrFc31CrHkASdflcxaXIL3y', 'Joze', 'Pacient', 'joze@example.com', '555-1234', 1),
(5,'$2a$10$mNJfF7MVrtawxGsYcNu7Ye8KLX/8ZORZWvRavK3g1lvZEI88upbNS', 'Janka', 'Jovakovic', 'janka@example.com', '555-5678', 0),
(6,'$2a$10$mNJfF7MVrtawxGsYcNu7Ye8KLX/8ZORZWvRavK3g1lvZEI88upbNS', 'Zeljko', 'Joksimovic', 'zeljko.jok@example.com', '555-8263', 0),
(7,'$2a$10$WdX2UxB/q7p1/Hh6kawhRuB6MIhNI7LrFc31CrHkASdflcxaXIL3y', 'Corey', 'Taylor', 'corey.tay@example.com', '555-7896', 1);

INSERT INTO user_services (user_id, services) VALUES
(2, 0),
(2, 1),
(2, 2),
(2, 3),
(5, 0),
(5, 1),
(5, 2),
(6, 3),
(6, 1);