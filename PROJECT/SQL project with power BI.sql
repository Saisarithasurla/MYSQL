Average daily social media usage by academic level

use socialmedia;
Select Academic_level, avg (Avg_Daily_Usage_Hours) as  Avg_usage
from students_social_media_addiction
group by Academic_level;

 Top 3 most used social media platforms?
 
use socialmedia;
Select most_used_platform, count(*) as usage_count
from students_social_media_addiction
group by most_used_platform
Order by usage_count desc 
limit 3;

 Count of students whose academic performance is affected?
use socialmedia;
Select Affects_ Academic_performance, count(*) as no_of_students_affected
frem students_social_media_addiction
group by affects_academic_performance

students with <5 hrs of sleep and high usage

based on gender who is affecting academic level
use socialmedia;
select gender,
count(case when affects_academic_performance='yes'
from students_social_media_addiction
group by gender;

relationship status and avg addicted score
use socialmedia;
select relationship_status,avg_addicted_score
from students_social_media_addiction
(select relationship_status,avg(addicted_score) as avg_addicted_score
from students_social_media_addiction
group by relationship_status) as relationship_status;


List all students aged below 20 using Facebook the most

use socialmedia;
SELECT Student_ID, Age, Most_Used_Platform
FROM students_social_media_addiction
WHERE Age < 20
  AND Most_Used_Platform = 'Facebook';
  
  Show most common platform used by students 
  
 use socialmedia;
 SELECT Most_Used_Platform, COUNT(*) AS Users
FROM students_social_media_addiction
GROUP BY Most_Used_Platform
ORDER BY Users DESC;

Countries with the most affected academic performance

use socialmedia;
SELECT Country, 
    COUNT(*) AS affected_count
FROM students_social_media_addiction
WHERE Affects_Academic_Performance = 'Yes'
GROUP BY Country
ORDER BY affected_count DESC;

Total students overall (for a KPI card):

use socialmedia;
SELECT COUNT(*) AS total_students
FROM students_social_media_addiction;

Average Daily Usage Hours

use socialmedia;
SELECT ROUND(AVG(Avg_Daily_Usage_Hours),2) AS avg_usage FROM students_social_media_addiction;

Average Mental Health Score

use socialmedia;
SELECT ROUND(AVG(Mental_Health_Score),2) AS avg_mh_score FROM students_social_media_addiction;


total number of males and females by gender in percentage

use socialmedia;
SELECT Gender,ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM students_social_media_addiction), 2) AS Percentage
FROM students_social_media_addiction
GROUP BY Gender;


age distribution

use socialmedia;


SELECT 
  CASE 
    WHEN Age < 18 THEN 'Under 18'
    WHEN Age BETWEEN 18 AND 21 THEN '18-21'
    WHEN Age BETWEEN 22 AND 25 THEN '22-25'
    ELSE 'Above 25'
  END AS Age_Group,
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM students_social_media_addiction), 2) AS Percentage
FROM students_social_media_addiction
GROUP BY Age_Group;

use socialmedia;
select student_id,gender,sleep_hours_per_night,avg_daily_usage_hours
from students_social_media_addiction
where sleep_hours_per_night<5
and avg_daily_usage_hours>8;










