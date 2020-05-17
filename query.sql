--1)������� �������� ���� ����� �� ������� ������ � �������� �������
SELECT
    COUNT(udemy.id) AS "summary price",
    course.price
FROM
    udemy
    INNER JOIN info ON info.course_id = udemy.id
    INNER JOIN course ON course.id = udemy.course_id
WHERE
    info.lectures_num < 25
GROUP BY
    course.price;

--2)������� ��������� ����������� ����� �� �����

SELECT
    COUNT(udemy.id) AS "count courses",
    info.level_name
FROM
    udemy
    INNER JOIN info ON info.course_id = udemy.course_id
GROUP BY
    info.level_name;

--3)������� ������� ��� ��������� �����

SELECT
    course.price
FROM
    udemy
    INNER JOIN subject ON udemy.subject = subject.subject
    INNER JOIN course ON course.id = udemy.course_id
    where subject.subject = 'busines';
    