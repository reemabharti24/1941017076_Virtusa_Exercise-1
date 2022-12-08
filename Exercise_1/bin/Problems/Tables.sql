// create and execute the sql in the tables(mentioned below)

Tables
Subject ( id , rollno, subjectname , marks)
Student (id, rollno, sname, address )

Write a SQL query to find the count of all students studying a paticular subject?

Write a SQL query to find total marks of a particular student for all subjects?

CREATE TABLE Subject(
       id VARCHAR(10) PRIMARY KEY,
	   rollno INT,
	   subname VARCHAR(20),
	   marks INT
);

CREATE TABLE Student(
      id VARCHAR(10),
	  rollno INT,
	  sname VARCHAR(20),
	  address VARCHAR(50),
	  FOREIGN KEY(id) REFERENCES Subject(id)
);

INSERT INTO Subject VALUES('A001', 2863, 'Maths', 80);
INSERT INTO Subject VALUES('A002', 2864, 'Physics', 90);
INSERT INTO Subject VALUES('A003', 2865, 'Chemistry', 50);
INSERT INTO Subject VALUES('A004', 2866, 'Biology', 70);
INSERT INTO Subject VALUES('A005', 2867, 'History', 60);


INSERT INTO Student VALUES('A003', 2865, 'Yash', 'bbsr');
INSERT INTO Student VALUES('A004', 2866, 'Aman', 'jsg');
INSERT INTO Student VALUES('A004', 2866, 'Ayush', 'jsr');
INSERT INTO Student VALUES('A001', 2863, 'Harsh', 'sng');

SELECT subname, COUNT(id) AS 'Total Students' FROM Subject
WHERE subname = 'Biology'
GROUP BY subname;

SELECT SUM(marks) AS TotMarks FROM Subject, Student
WHERE Subject.id = Student.id
AND sname = 'Yash';
product(id, name , price ,location)
manufacturer( id, company_name, product_id, address)

//Write a SQL query to find company_name of a particular product and location given input as product _id?
(Use Join statements)

CREATE TABLE Product(
    id INT PRIMARY KEY,
	name VARCHAR(30),
	price INT,
	location VARCHAR(30)
);

CREATE TABLE manufacturer(
    id INT,
	company_name VARCHAR(30),
	product_id VARCHAR(5),
	address VARCHAR(20),
	FOREIGN KEY(id) REFERENCES Product(id)
);

INSERT INTO Product VALUES(1, 'Yash', 100, 'bbsr');
INSERT INTO Product VALUES(2, 'Aman', 200, 'jsg');
INSERT INTO Product VALUES(3, 'Anurag', 50, 'jsr');
INSERT INTO Product VALUES(4, 'Ayush', 300, 'sng');
INSERT INTO Product VALUES(5, 'Harsh', 70, 'bjr');

INSERT INTO manufacturer VALUES(2, 'Virtusa', 'A01', 'khandagiri');
INSERT INTO manufacturer VALUES(3, 'Microsoft', 'A02', 'Patia');
INSERT INTO manufacturer VALUES(3, 'Hexaware', 'A03', 'Udaygiri');
INSERT INTO manufacturer VALUES(1, 'Informatica', 'A04', 'Jagmohan Nagar');
INSERT INTO manufacturer VALUES(4, 'Meta.net', 'A05', 'Bapujinagar');

SELECT company_name FROM Product, manufacturer
WHERE Product.id = manufacturer.id
AND product_id = 'A02';

