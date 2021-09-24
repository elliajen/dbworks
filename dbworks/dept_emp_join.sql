
--부서 삭제--
--DELETE FROM department WHERE deptid = 10;  emp가 참조하고 있으므로 삭제 불가--

--사원 추가--
--INSERT INTO employee VALUES (103, '유경보',33, 30); 부서코드가 없으므로 외래키 제약 조건 위배--
INSERT INTO employee VALUES (103, '유경보',33, 10);
INSERT INTO employee VALUES (101, '이강민',21, 10);
INSERT INTO employee VALUES (102, '이은수',28, 20);

--부서 추가--
INSERT INTO department VALUES (10, '관리팀', '서울');
INSERT INTO department VALUES (20, '전산팀', '인천');

--부서 검색--
SELECT * FROM department;

--사원 검색--
SELECT * FROM employee;

--부서테이블--
CREATE TABLE department(
	deptid	INTEGER,
	deptname TEXT NOT NULL,
	location TEXT NOT NULL,
	PRIMARY KEY (deptid)
);

--사원 테이블--
CREATE TABLE employee(
	empid	INTEGER,
	name	TEXT NOT NULL,
	age		INTEGER,
	deptid	INTEGER,
	PRIMARY KEY(empid),
	FOREIGN KEY(deptid) REFERENCES department(deptid)
	
);

COMMIT;