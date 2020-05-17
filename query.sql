--1)Вивести сумарні ціни по предметам
SELECT
    sum(course.price) AS "summary price",
    subject.subject
FROM
    udemy
    INNER JOIN subject ON udemy.subject = subject.subject
    INNER JOIN course ON course.id = udemy.course_id group by subject.subject;

--2)Вивести процентне співвідношеня курсів за рівнем

SELECT
    COUNT(udemy.id) AS "count courses",
    info.level_name
FROM
    udemy
    INNER JOIN info ON info.course_id = udemy.course_id
GROUP BY
    info.level_name;

--3)Вивести дінаміку цін курсів за кількістю лекцій у курсів зв'язаних з бізнесом

SELECT
DISTINCT info.lectures_num,
    course.price
FROM
    udemy
    INNER JOIN course ON course.id = udemy.course_id 
    INNER JOIN info ON info.course_id = course.id
    INNER JOIN subject ON udemy.subject = subject.subject
   where subject.subject = 'busines';
    

    
