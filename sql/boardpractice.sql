CREATE DATABASE board_practice;
USE board_practice;
/*
[1] Board Table
게시물번호(id), 제목(title), 작성자(writer), 작성일(inserted), 조회수(views), 좋아요(likes)
*/
CREATE TABLE board
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    title    VARCHAR(50)    NOT NULL,
    content  VARCHAR(10000) NOT NULL,
    writer   VARCHAR(10)    NOT NULL,
    inserted DATETIME       NOT NULL DEFAULT NOW(),
    modified DATETIME       NOT NULL DEFAULT NOW(),
    views    INT            NOT NULL DEFAULT 0,
    likes    INT            NOT NULL DEFAULT 0
);


ALTER TABLE board
    MODIFY COLUMN writer VARCHAR(100) NOT NULL;

INSERT INTO board
    (title, content, writer, inserted, views, likes)
VALUES
    ('test_title1', 'test_content1', 'test_writer1', now(), 0, 0),
    ('test_title2', 'test_content2', 'test_writer2', now(), 0, 0),
    ('test_title3', 'test_content3', 'test_writer3', now(), 0, 0),
    ('test_title4', 'test_content4', 'test_writer4', now(), 0, 0),
    ('test_title5', 'test_content5', 'test_writer5', now(), 0, 0);

DESC board;
SELECT * FROM board;
