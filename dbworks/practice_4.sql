SELECT*FROM department
SELECT*FROM employee

--추가--
INSERT INTO department VALUES(10, '경리팀', '서울');
INSERT INTO department VALUES(20, '홍보팀', '인천');
INSERT INTO employee VALUES(102, '초호화', '22', 10);
INSERT INTO employee VALUES(103, '오성금', '47', 20);
INSERT INTO employee VALUES(104, '최고영', '35', 10);

--생성--
CREATE TABLE department(
	deptid		INTEGER,
	deptname	TEXT NOT NULL,
	location	TEXT NOT NULL,
	PRIMARY KEY(deptid)
);

--생성--
CREATE TABLE employee(
	empid	INTEGER,
	name	TEXT NOT NULL,
	age		INTEGER,
	deptid INTEGER,
	PRIMARY KEY(empid)
	FOREIGN KEY(deptid) REFERENCES department(deptid)
);

COMMIT;