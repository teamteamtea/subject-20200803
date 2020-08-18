create database subject;
use subject;


create table user(
userID varchar(255) ,
userPW varchar(255),
userName varchar(50),
userEmail varchar(100),
primary key (userID)
);

/*create table user(
userID varchar(255) ,
userPW varchar(255),
userName varchar(50),
userEmail varchar(100),
primary key (userID)
);*/

drop table search;
select*from user;
delete from user where userGender;
insert into user values('ghrn442','wsard8', '박종휘','ghrn442@naver.com');
commit;

DELETE FROM user WHERE userID='ghrn442' AND userPW ='wsard8';

create table board(
nono int auto_increment primary key,
uname varchar(25) ,
utext varchar(300),
board_text  varchar(2000),
bdate  timestamp 
);

create table boardlist(
tno int,
uname varchar(25) not null,
utext varchar(300) not null,
board_text  varchar(2000) not null,
bdate  timestamp ,
primary key (tno)
);


drop table user;


SELECT * FROM board WHERE uname LIKE '%ㅁ%';
SELECT*FROM board ORDER BY nono;
UPDATE board SET uname=qkrwh WHERE nono=1;
select*from board;
select count(*) from user;
select* from user;
 

create table comment(
tno int auto_increment primary key,
uname varchar(30),
ucomment varchar(2000),
cdate timestamp
);

create table reply(
tno int auto_increment primary key,
rname varchar(30),
rcomment varchar(2000),
rdate timestamp
);

alter table comment add column(
tno int auto_increment primary key);

select * from reply;

select*from user;
select*from comment;
UPDATE board SET uname="ㅁㄴㅇ",utext="ㅂ페ㅐㅑㅜ",board_text="ㅔㅔㅔㅐ" WHERE nono=2;
truncate table comment;
SELECT*FROM comment ORDER BY cdate;


delete from board where nono=42;
select*from board; 
select*from reply;
commit;

select*from board where nono=5;

truncate table comment;

DROP TABLE USER;
drop table board;


drop table comment;

/*이때 table2의 id를 table1의 id를 참조하는 외래키로 추가하고 싶다면 아래와 같이 하시면 되요*/
 alter table boardlist add FOREIGN KEY(bdate) REFERENCES board(bdate);


