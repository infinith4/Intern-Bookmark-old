CREATE TABLE user (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARBINARY(32) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY (name)
);

CREATE TABLE entry (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    url VARBINARY(512) NOT NULL,
    title VARBINARY(512) NOT NULL,
    created_on DATETIME NOT NULL DEFAULT 0,
    updated_on DATETIME NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    UNIQUE KEY (url)
);

CREATE TABLE bookmark (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id BIGINT UNSIGNED NOT NULL,
    entry_id BIGINT UNSIGNED NOT NULL,
    comment VARBINARY(256),
    created_on DATETIME NOT NULL DEFAULT 0,
    updated_on DATETIME NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    UNIQUE KEY (user_id, entry_id),
    KEY (user_id, created_on)
);
