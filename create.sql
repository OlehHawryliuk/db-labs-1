CREATE TABLE Course(
    id number not null ,
    name varchar2(100) ,
    url varchar2(100) ,
    price float
);

CREATE TABLE Info(
    id number not null ,
    lectures_num number ,
    level_name varchar2(100) ,
    duration number
);

CREATE TABLE Subject(
    subject varchar2(100) not null
);

CREATE TABLE Udemy(
    id number not null,
    course_id number not null,
    info_id number not null,
    subject varchar2(100) not null
);


ALTER TABLE Course ADD CONSTRAINT course_pk PRIMARY KEY(id);
ALTER TABLE Info ADD CONSTRAINT info_pk PRIMARY KEY(id);
ALTER TABLE Subject ADD CONSTRAINT subject_pk PRIMARY KEY(subject);
ALTER TABLE Udemy ADD CONSTRAINT udemy_pk PRIMARY KEY(id);

ALTER TABLE Udemy ADD CONSTRAINT fk_course foreign key (course_id) references Course(id);
ALTER TABLE Udemy ADD CONSTRAINT fk_info foreign key (info_id) references Info(id);

ALTER TABLE Udemy ADD CONSTRAINT fk_subject foreign key (subject) references Subject(Subject);


--drop table:

--drop table udemy;
--drop table course;
--drop table subject;
--drop table info;