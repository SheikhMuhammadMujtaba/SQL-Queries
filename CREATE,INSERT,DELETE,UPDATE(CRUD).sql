CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_first_name VARCHAR(30) NOT NULL,
    user_last_name VARCHAR(30) NOT NULL,
    user_email_id VARCHAR(50) NOT NULL,
    user_email_validated BOOLEAN DEFAULT FALSE,
    user_password VARCHAR(200),
    user_role VARCHAR(1) NOT NULL DEFAULT 'U', --U and A
    is_active BOOLEAN DEFAULT FALSE,
    create_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_updated_ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

INSERT INTO users (user_first_name, user_last_name, user_email_id)
VALUES ('Scott', 'Tiger', 'scott@tiger.com')
INSERT INTO users (user_first_name, user_last_name, user_email_id, user_role, is_active)
VALUES ('Mickey', 'Mouse', 'mickey@mouse.com', 'U', true)
INSERT INTO users (user_first_name, user_last_name, user_email_id)
VALUES ('Donald', 'Duck', 'donald@duck.com')

SELECT user_first_name,user_last_name,user_full_name
From users

SELECT concat(user_first_name,' ',user_last_name)
From users

UPDATE users 
set user_full_name=UPPER(concat(user_first_name,' ',user_last_name))

ALTER TABLE users ADD COLUMN user_full_name VARCHAR(50)




SELECT user_id,user_password
FROM users

DELETE FROM users where user_password IS NULL
