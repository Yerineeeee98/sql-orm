-- 라이트 버전의 DDL
-- uee database -> run Query
CREATE TABLE test(
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    -- PRIMARY KEY는 테이블에서 각 행을 유일하게 식별하는 열(컬럼)을 의미함.
    -- 여기서 id 컬럼이 PRIMARY KEY이므로, 각 행은 서로 다른 id 값을 가짐.
    -- 자동으로 1부터 증가하는 값이 할당됨.
    name TEXT,
    age INTEGER 
);

ALTER TABLE test RENAME TO user;

ALTER TABLE user ADD COLUMN email TEXT;

ALTER TABLE user RENAME COLUMN name TO username;

DROP TABLE user;