-- 1 .Run every query with expalin query plan
-- from there we have found
-- most used query is both courses("department","title","semester") and enrollment("course_id","student_id") table

-- 2 .optimize courses table using partial indexes
-- semester fall 2023 and Spring 2024
-- by optimizing index on course table with "title","semester" and "department" column , query speed reduced by 30%
-- If we also add department", "number" column the query only optimize additonal 5%
-- so thats why we decied to keep only title ,semester and "department" column in INDEX

CREATE INDEX "course_index" ON "courses"("title","semester","department") WHERE "semester" = 'Fall 2023' OR "semester" = 'Spring 2024';

-- 3.for general query (query 01,query 06) we have most search enrollment table
-- by optimizing it (both "student_id","course_id") the speed has increased by 5%
-- so it don't optimized that well, thats why I decided to avoid adding satisfies table

CREATE INDEX "enrollment_index" ON "enrollments"("student_id","course_id");
