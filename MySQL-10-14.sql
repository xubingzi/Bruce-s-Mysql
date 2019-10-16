CREATE DATABASE gradesystem;

use gradesystem;

CREATE TABLE student
(
    sid INT(10)NOT NULL AUTO_INCREMENT,
    sname CHAR(20) NOT NULL,
    gender Char(20) DEFAULT 'boy',
    PRIMARY KEY(sid)
    
);

CREATE course 
(
    cid INT(10)NOT NULL AUTO_INCREMENT,
    cname CHAR(20),
    PRIMARY KEY(cid)
);

CREATE mark 
(
    mid INT(10)NOT NULL AUTO_INCREMENT,
    sid INT(10),
    cid INT(10),
    score INT(100),
    PRIMARY KEY(mid),
    FOREIGN KEY(sid) REFERENCES student(sid),
    FOREIGN KEY(cid) REFERENCES course(cid)
);

INSERT INTO student VALUES(1,'Jeo','boy'),(2,'LEE','girl'),(3,'wang','boy');
INSERT INTO course VALUES(1,'English'),(2,'math');
INSERT INTO mark VALUES(1,1,1,100),(2,2,1,90),(3,3,1,89),(4,1,2,100),(5,2,2,99),(6,3,2,89);