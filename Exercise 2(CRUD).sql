--Create Table for couses
Create Table courses (
course_id SERIAL Primary KEY,
course_name  VARCHAR(50),
course_author VARCHAR(25),
course_status VARCHAR(15),
course_published_dt DATE
)
---Inserting value for courses
Insert INTO courses (course_name,course_author,course_status,Course_published_dt)
Values
('Programming using Python','Bob Dillon','published','2020-09-30'),
('Data Engineering using Python','Bob Dillon','published','2020-07-15'),
('Data Engineering using Scala','Elvis Presley','draft',NULL),
('Programming using Scala','Elvis Presley','published','2020-05-12'),
('Programming using Java','Mike Jack','inactive','2020-08-10'),
('Web Applications - Python Flask','Bob Dillon','inactive','2020-07-20'),
('Web Applications - Java Spring','Mike Jack','draft',NULL),
('Pipeline Orchestration - Python','Bob Dillon','draft',NULL),
('Streaming Pipelines - Python','Bob Dillon','published','2020-10-05'),
('Web Applications - Scala Play','Elvis Presley','inactive','2020-09-30'),
('Web Applications - Python Django','Bob Dillon','published','2020-06-23'),
('Server Automation - Ansible','Uncle Sam','published','2020-07-05');
SELECT *FROM courses
--Update the status of all the draft courses related to Python and Scala to published along with the course_published_dt using system date.
Update courses
SET course_status= 'published',course_published_dt= Current_Date
Where course_status='draft';
-----Delete all the courses which are neither in draft mode nor published.
DELETE FROM courses
Where course_status='inactive'
--Validation - Get count of all published courses by author and make sure output is sorted in descending order by count.
SELECT course_author, count(1) AS course_count
FROM courses
WHERE course_status= 'published'
Group By course_author;