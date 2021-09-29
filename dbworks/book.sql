SELECT*FROM book

CREATE TABLE book(
	book_no INTEGER PRIMARY KEY AUTOINCREMENT,
	title	TEXT NOT NULL,
	publisher	TEXT NOT NULL,
	page	INTEGER
);

INSERT INTO book(title, publisher, page) VALUES('웹 표준의 정석', '고경희', 600);

