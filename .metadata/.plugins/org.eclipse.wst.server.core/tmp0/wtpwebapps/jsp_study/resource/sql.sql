--2023년 11월 23일--

CREATE TABLE `board` (
  `bno` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `writer` varchar(100) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `moddate` datetime DEFAULT CURRENT_TIMESTAMP,
  `readcount` int DEFAULT '0',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci



--2023년 11월 27일--
create table member(
id varchar(100),
pwd varchar(200) not null,
email varchar(200) not null,
age int default 0,
regdate datetime default now(),
lastlogin datetime default now(),
primary key(id));


--2023년 12월 4일--
create table comment(
cno int auto_increment,
bno int not null,
writer varchar(100) default "unknown",
content varchar(1000) not null,
regdate datetime default now(),
primary key(cno));

--2023년 12월 7일--
alter table board add imageFile varchar(100);