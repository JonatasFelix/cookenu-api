CREATE TABLE cookenu_user (  
    id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    role ENUM("user", "admin") DEFAULT "user",
    password VARCHAR(255) NOT NULL
);

CREATE TABLE cookenu_recipes (
    id VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    preparation_mode TEXT NOT NULL,
    creation_date DATE NOT NULL,
    user_id VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES cookenu_user(id)
);

CREATE TABLE cookenu_follow (
    id VARCHAR(255) PRIMARY KEY,
    follower_id VARCHAR(255) NOT NULL,
    followed_id VARCHAR(255) NOT NULL,
    FOREIGN KEY (follower_id) REFERENCES cookenu_user(id),
    FOREIGN KEY (followed_id) REFERENCES cookenu_user(id)
);