create table user_tbl(
	userid varchar2(50),
	userpw varchar2(100),
	age number(3),
	phone varchar2(50),
	addr varchar2(100),
	gender varchar2(10),
	primary key (userid)
);

create table admin_tbl(
	adminid varchar2(50),
	adminpw varchar2(100),
	primary key (adminid)
);

create table actor_tbl(
	actid varchar2(50),
	actbirth varchar2(20),
	actdebut varchar2(50),
	dateactivities varchar2(20),
	activities varchar2(200),
	primary key (actid)
);

create table musician_tbl(
	musicianid varchar2(50),
	musicianname varchar2(50),
	memberid varchar2(50),
	msdactivities varchar2(20),
	msactivities varchar2(200),
	discography varchar2(100) unique,
	primary key (musicianid),
	foreign key (memberid) references member_tbl(memberid),
	foreign key (discography) references album_tbl(discography)
);

drop table musician_tbl;

create table member_tbl(
	memberid varchar2(50),
	membername varchar2(50),
	memberbirth varchar2(50),
	memberbut varchar2(50),
	mbdactivities varchar2(200),
	mbactivities varchar2(100),
	discography varchar2(100) unique,
	primary key (memberid),
	foreign key (discography) references album_tbl(discography)
);

drop table member_tbl;

create table album_tbl(
	albumid varchar2(50),
	discography varchar2(100) unique,
	albumtype varchar2(50),
	albumgenre varchar2(100),
	albumlabel varchar2(50),
	albumpublishing varchar2(100),
	albumreleasedate varchar2(50),
	albumnotes varchar2(2000),
	primary key (albumid)
);

drop table ALBUM_TBL;