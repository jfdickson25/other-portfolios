--*********************Drop all tables*********************--
DROP TABLE courses;


--*********************Create tables*********************--
CREATE TABLE courses
( id                        SERIAL        NOT NULL UNIQUE PRIMARY KEY
, grade      VARCHAR(2)  NOT NULL
, course     VARCHAR(100)  NOT NULL
, courseCode  INT NOT NULL
);


--*********************Insert characters and attributes to tables*********************--
-- Character 1 --
INSERT INTO courses   ( courseCode
                        , course
                        , grade)
                 VALUES (124
                        , 'Intro to Software Engineering'
                        , 'A');


\echo --*********************List all from character*********************--
SELECT courseCode AS "Course Code"
    , course AS "Course Description"
    , grade AS "Grade"
    FROM courses;