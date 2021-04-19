CREATE TABLE memberInfo( 
    memberId VARCHAR2(30) PRIMARY KEY, 
    memberPw VARCHAR2(50) NOT NULL, 
    memberName VARCHAR2(30) NOT NULL,
    gender CHAR(1) DEFAULT 'M' NOT NULL, 
    CONSTRAINT memberInfo_gender_CK CHECK(gender IN('M','F')), 
    memberEmail VARCHAR2(100),
    joinDate DATE DEFAULT SYSDATE NOT NULL 
);

commit;

INSERT INTO memberInfo(memberId,memberPw,memberName,gender) VALUES ('ryan','1234','���̾�','M');
INSERT INTO memberInfo(memberId,memberPw,memberName,gender) VALUES ('apeach','1234','����ġ','F');

COMMIT;
delete from memberInfo;
SELECT * FROM memberInfo;

select * from memberInfo order by joindate desc;
COMMIT;
select * from memberInfo where memberid='apeach';