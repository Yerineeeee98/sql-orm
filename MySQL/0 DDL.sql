-- Schema 선택 명령어 (내가 저장하고싶은 파일을 선택)
USE mydb;
-- table 생성 명령어 
CREATE TABLE test (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name TEXT,
    age INTEGER
);

-- table 이름 변경
ALTER TABLE test RENAME TO user;

-- 컬럼 추가
ALTER TABLE user ADD COLUMN email TEXT;

-- 컬럼 이름 수정
ALTER TABLE user CHANGE name username TEXT;