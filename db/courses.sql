--*********************Drop all tables*********************--
DROP TABLE courses;


--*********************Create tables*********************--
CREATE TABLE courses
( id                        SERIAL        NOT NULL UNIQUE PRIMARY KEY
, grade      VARCHAR(2)  NOT NULL
, course     VARCHAR(100)  NOT NULL
, courseCode VARCHAR(10) NOT NULL
);


--*********************Insert characters and attributes to tables*********************--
-- Character 1 --
INSERT INTO courses   ( courseCode
                        , course
                        , grade)
                 VALUES ('CS124'
                        , 'Intro to Software Engineering'
                        , 'A');
INSERT INTO courses   ( courseCode
                        , course
                        , grade)
                 VALUES ('CS165'
                        , 'Object Oriented Programming'
                        , 'A');
INSERT INTO courses   ( courseCode
                        , course
                        , grade)
                 VALUES ('CS235'
                        , 'Data Structures'
                        , 'A');


\echo --*********************List all from character*********************--
SELECT courseCode AS "Course Code"
    , course AS "Course Description"
    , grade AS "Grade"
    FROM courses;