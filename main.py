import cx_Oracle
def print_table(cur, request):
    names = []
    cur.execute(request)
    for name in cur.description:
        names.append(name[0])
    print(" ; ".join(names))
    for row in cur:
        print(row)
    print("\n\n")
username = 'asd'
password = 'asd'
database = 'localhost/xe'

firstQuery = """
SELECT
    sum(course.price) AS "summary price",
    subject.subject
FROM
    udemy
    INNER JOIN subject ON udemy.subject = subject.subject
    INNER JOIN course ON course.id = udemy.course_id group by subject.subject

"""

secondQuery = """
  
SELECT
    COUNT(udemy.id) AS "count courses",
    info.level_name
FROM
    udemy
    INNER JOIN info ON info.course_id = udemy.course_id
GROUP BY
    info.level_name
"""

thirdQuery = """
SELECT
DISTINCT info.lectures_num,
    course.price
FROM
    udemy
    INNER JOIN course ON course.id = udemy.course_id 
    INNER JOIN info ON info.course_id = course.id
    INNER JOIN subject ON udemy.subject = subject.subject
   where subject.subject = 'busines'
"""


conn = cx_Oracle.connect(username, password, database)
cursor = conn.cursor()



if cursor:
    print("---frist query---")
    print_table(cursor, firstQuery)
    print("---second query---")
    print_table(cursor, secondQuery)
    print("---thrid query---")
    print_table(cursor, thirdQuery)

    cursor.close()

else:
    print('error with connection')