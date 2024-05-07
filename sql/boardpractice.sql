CREATE DATABASE board_practice;

/*
게시물번호(id), 제목(title), 작성자(writer), 작성일(inserted), 조회수(views), 좋아요(likes)
*/
CREATE TABLE board
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    title    VARCHAR(50)    NOT NULL,
    content  VARCHAR(10000) NOT NULL,
    writer   VARCHAR(10)    NOT NULL,
    inserted DATETIME       NOT NULL DEFAULT NOW(),
    views    INT            NOT NULL DEFAULT 0,
    likes    INT            NOT NULL DEFAULT 0
);

DESC board;

ALTER TABLE board
MODIFY COLUMN writer VARCHAR(100) NOT NULL ;

INSERT INTO board
    (title, content, writer, inserted, views, likes)
VALUES ('test_title', 'test_content', 'test_writer', now(), 0, 0);

SELECT * FROM board;