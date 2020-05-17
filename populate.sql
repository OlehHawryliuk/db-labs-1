--course insert
INSERT INTO Course(id, name, url, price) VALUES(1, '1 course', '1 url', '110');
INSERT INTO Course(id, name, url, price) VALUES(2, '2 course', '2 url', '120');
INSERT INTO Course(id, name, url, price) VALUES(3, '3 course', '3 url', '130');
INSERT INTO Course(id, name, url, price) VALUES(4, '4 course', '4 url', '140');
INSERT INTO Course(id, name, url, price) VALUES(5, '5 course', '5 url', '120');
INSERT INTO Course(id, name, url, price) VALUES(6, '6 course', '6 url', '110');


--info insert
INSERT INTO Info(id, lectures_num, level_name, duration, course_id) VALUES(1, 10, 'begginer', 1.5, 1);
INSERT INTO Info(id, lectures_num, level_name, duration, course_id) VALUES(2, 20, 'begginer', 2.5, 2);
INSERT INTO Info(id, lectures_num, level_name, duration, course_id) VALUES(3, 30, 'expert', 3.5, 3);
INSERT INTO Info(id, lectures_num, level_name, duration, course_id) VALUES(4, 40, 'all levels', 4.5, 4);
INSERT INTO Info(id, lectures_num, level_name, duration, course_id) VALUES(5, 20, 'all levels', 3.5, 5);
INSERT INTO Info(id, lectures_num, level_name, duration, course_id) VALUES(6, 10, 'begginer', 2.5, 6);

--subject insert

insert into subject(subject) values('busines');
insert into subject(subject) values('data science');
insert into subject(subject) values('web development');
insert into subject(subject) values('finances');


--udemy insert

insert into Udemy(id, course_id, subject) values(1,1,'busines');
insert into Udemy(id, course_id, subject) values(2,2,'data science');
insert into Udemy(id, course_id, subject) values(3,3,'busines');
insert into Udemy(id, course_id, subject) values(4,4,'busines');
insert into Udemy(id, course_id, subject) values(5,5,'web development');
insert into Udemy(id, course_id, subject) values(6,6,'finances');



