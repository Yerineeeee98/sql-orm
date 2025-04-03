-- 라이트 버전의 DDL
-- uee database -> run Query
CREATE TABLE test(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER 
);

ALTER TABLE test RENAME TO user;

ALTER TABLE user ADD COLUMN email TEXT;

ALTER TABLE user RENAME COLUMN name TO username;