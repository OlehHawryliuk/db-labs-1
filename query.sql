--1)Вивести загальну ціну курсів де кількість лекцій в заданому проміжку
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

--2)Вивести процентне співвідношеня курсів за рівнем

SELECT
    COUNT(udemy.id) AS "count courses",
    info.level_name
FROM
    udemy
    INNER JOIN info ON info.course_id = udemy.course_id
GROUP BY
    info.level_name;

--3)Вивести динаміку цін бізнесових курсів

SELECT
    course.price
FROM
    udemy
    INNER JOIN subject ON udemy.subject = subject.subject
    INNER JOIN course ON course.id = udemy.course_id
    where subject.subject = 'busines';
    